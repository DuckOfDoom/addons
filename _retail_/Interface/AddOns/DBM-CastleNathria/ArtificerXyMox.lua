local mod	= DBM:NewMod(2418, "DBM-CastleNathria", nil, 1190)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20200916000857")
mod:SetCreatureID(166644)
mod:SetEncounterID(2405)
mod:SetUsedIcons(1, 2)
mod:SetHotfixNoticeRev(20200822000000)--2020, 8, 22
mod:SetMinSyncRevision(20200822000000)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 328437 335013 325399 327887 329770 328789 340758 329834 328880 342310 340788 342854 329107 340807",
	"SPELL_CAST_SUCCESS 325361 326271 325399",
	"SPELL_AURA_APPLIED 328448 328468 325236 327902 327414",
	"SPELL_AURA_REMOVED 328448 328468",
--	"SPELL_PERIODIC_DAMAGE",
--	"SPELL_PERIODIC_MISSED",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"CHAT_MSG_MONSTER_YELL"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--TODO, add https://shadowlands.wowhead.com/spell=340842/soul-singe ?
--[[
(ability.id = 328437 or ability.id = 335013 or ability.id = 325399 or ability.id = 327887 or ability.id = 340758 or ability.id = 329770 or ability.id = 329834 or ability.id = 328880 or ability.id = 328789 or ability.id = 342310 or ability.id = 340807 or ability.id = 340788 or ability.id = 342854) and type = "begincast"
 or (ability.id = 326271 or ability.id = 325361) and type = "cast"
--]]
local warnPhase										= mod:NewPhaseChangeAnnounce(2, nil, nil, nil, nil, nil, 2)
local warnDimensionalTear							= mod:NewTargetNoFilterAnnounce(328437, 3)
local warnHyperlightSpark							= mod:NewCountAnnounce(325399, 2, nil, false, 2)
--Sire Denathrius' Private Collection
local warnSpirits									= mod:NewSpellAnnounce(340758, 3)
local warnFixate									= mod:NewTargetAnnounce(327902, 3)
local warnPossession								= mod:NewTargetNoFilterAnnounce(327414, 4)
local warnSeedsofExtinction							= mod:NewSpellAnnounce(329834, 3, nil, nil, 130924)--Shortname "Root"
local warnUnleashPower								= mod:NewCountAnnounce(342854, 4)

local specWarnDimensionalTear						= mod:NewSpecialWarningYouPos(328437, nil, nil, nil, 1, 2)
local yellDimensionalTear							= mod:NewPosYell(328437)
local yellDimensionalTearFades						= mod:NewIconFadesYell(328437)
local specWarnGlyphofDestruction					= mod:NewSpecialWarningMoveAway(325361, nil, nil, nil, 1, 2)
local yellGlyphofDestruction						= mod:NewYell(325361)
local yellGlyphofDestructionFades					= mod:NewShortFadesYell(325361)
local specWarnGlyphofDestructionTaunt				= mod:NewSpecialWarningTaunt(325361, nil, nil, nil, 1, 2)
local specWarnStasisTrap							= mod:NewSpecialWarningDodge(326271, nil, nil, nil, 2, 2)
local specWarnRiftBlast								= mod:NewSpecialWarningDodge(335013, nil, nil, nil, 2, 2)
--Sire Denathrius' Private Collection
local specWarnFixate								= mod:NewSpecialWarningRun(327902, nil, nil, nil, 4, 2)
local specWarnEdgeofAnnihilation					= mod:NewSpecialWarningRun(328789, nil, 307421, nil, 4, 2)
--local specWarnGTFO								= mod:NewSpecialWarningGTFO(270290, nil, nil, nil, 1, 8)

mod:AddTimerLine(BOSS)
local timerDimensionalTearCD						= mod:NewCDTimer(25, 328437, nil, nil, nil, 3, nil, nil, true)
local timerGlyphofDestructionCD						= mod:NewCDTimer(36.4, 325361, nil, "Tank", nil, 5, nil, DBM_CORE_L.TANK_ICON)--27.9-58.6 for now
local timerStasisTrapCD								= mod:NewCDTimer(30.3, 326271, nil, nil, nil, 3)--30, except when it's reset by phase changes
local timerRiftBlastCD								= mod:NewCDTimer(36, 335013, nil, nil, nil, 3)--36.3 except when it's reset by phase changes
local timerHyperlightSparkCD						= mod:NewCDTimer(15.8, 325399, nil, nil, nil, 2, nil, DBM_CORE_L.HEALER_ICON)--15.8 except when it's heavily spell queued
--Sire Denathrius' Private Collection
mod:AddTimerLine(DBM:EJ_GetSectionInfo(22119))
local timerFleetingSpiritsCD						= mod:NewCDTimer(40.8, 340758, nil, nil, nil, 3)--40.8-46
local timerSeedsofExtinctionCD						= mod:NewCDTimer(43.7, 329770, 130924, nil, nil, 5)--43-49. Shortname "Root"
local timerExtinction								= mod:NewCastTimer(12, 329107, nil, nil, nil, 2, nil, DBM_CORE_L.DEADLY_ICON)
local timerEdgeofAnnihilationCD						= mod:NewCDTimer(44.3, 328789, 307421, nil, nil, 2, nil, DBM_CORE_L.DEADLY_ICON)--Shortname "Annihilation"
local timerUnleashPowerCD							= mod:NewCDCountTimer(40.8, 342854, nil, nil, nil, 5, nil, DBM_CORE_L.MYTHIC_ICON..DBM_CORE_L.DEADLY_ICON)

--local berserkTimer								= mod:NewBerserkTimer(600)

--mod:AddRangeFrameOption(10, 310277)
--mod:AddInfoFrameOption(308377, true)
mod:AddSetIconOption("SetIconOnTear", 328437, true, false, {1, 2})

mod.vb.phase = 0
mod.vb.spartCount = 0
mod.vb.annihilationCount = 0
mod.vb.lastRotation = 0--0 tear, 1 ghosts, 2 roots, 3 annihilate, 4 Second tear, 5 Empty
mod.vb.unleashCount = 0
mod.vb.p3FirstCast = 0--1- Tear, 2 - Annihilate
mod.vb.hyperInProgress = false

function mod:OnCombatStart(delay)
	self.vb.phase = 0
	self.vb.spartCount = 0
	self.vb.annihilationCount = 0
	self.vb.lastRotation = 1--Technically Tear is first in any phase, followed by activator, but neither are part of Spell Rotation script, so variable is set accordingly for that
	self.vb.unleashCount = 0
	self.vb.p3FirstCast = 0--1- Tear, 2 - Annihilate
	self.vb.hyperInProgress = false
	timerHyperlightSparkCD:Start(5.7-delay)
	if self:IsHard() then
		timerStasisTrapCD:Start(10.5-delay)
	end
	timerDimensionalTearCD:Start(14)
	timerRiftBlastCD:Start(20.3-delay)
	timerFleetingSpiritsCD:Start(25)
	timerGlyphofDestructionCD:Start(31.6-delay)--SUCCESS
--	if self.Options.RangeFrame then
--		DBM.RangeCheck:Show(4)
--	end
--	berserkTimer:Start(-delay)
end

--function mod:OnCombatEnd(wipe, secondRun)
--	if self.Options.InfoFrame then
--		DBM.InfoFrame:Hide()
--	end
--	if self.Options.RangeFrame then
--		DBM.RangeCheck:Hide()
--	end
--end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 328437 or spellId == 342310 then
		if spellId == 328437 then--One scripted to rotator
			--Attempts to correct situation where either annihilation OR tear can come after annihilation relic activation
			if self.vb.p3FirstCast == 0 then
				self.vb.p3FirstCast = 2
				self.vb.lastRotation = 0
			end
			if self.vb.phase == 1 then
				self.vb.lastRotation = 0
				timerFleetingSpiritsCD:Start(20.2)
			elseif self.vb.phase == 2 then
				self.vb.lastRotation = 0
				timerSeedsofExtinctionCD:Start(self:IsMythic() and 25 or 20.2)
			else--Phase 3
				if self:IsMythic() then
					timerUnleashPowerCD:Start(35, self.vb.unleashCount+1)
				else
					--Unique 20sec Spell Rotation in this phase (Annihilate, Tear, Empty, Tear, repeat)
					if self.vb.lastRotation == 3 then--Last cast Annihilate
						self.vb.lastRotation = 0--Which means this cast is Tear 1
						timerDimensionalTearCD:Start(40.4)--Which means next cast is tear 2
					else--Last cast was Tear 1
						self.vb.lastRotation = 4--This cast is Tear 2
						timerEdgeofAnnihilationCD:Start(20.2)--Which means next cast begins cycle again at Annihilate
					end
				end
			end
		else--If boss is casting 342310 he's transitioning into a new phase and spawning initial rifts for that phase
			--Stop timers if they weren't stopped by earlier yell triggers
			timerDimensionalTearCD:Stop()--stop rift timer from Spell Rotator if it wasn't stopped by earlier phase change scripts
			timerFleetingSpiritsCD:Stop()
			timerSeedsofExtinctionCD:Stop()
		end
	elseif spellId == 335013 then
		specWarnRiftBlast:Show()
		specWarnRiftBlast:Play("farfromline")
		timerRiftBlastCD:Start()
	elseif spellId == 325399 then
		self.vb.spartCount = self.vb.spartCount + 1
		warnHyperlightSpark:Show(self.vb.spartCount)
		timerHyperlightSparkCD:Start()
		self.vb.hyperInProgress = true
	elseif spellId == 327887 then--First Spirits cast (Crystal of Phantasms)
		warnSpirits:Show()
		timerDimensionalTearCD:Start(self:IsMythic() and 33.6)--Timer for first tear after activation. Activations don't fire spell rotator
	elseif spellId == 340758 then--Fleeting Spirits 2nd+ cast (but only in phase 1, phase 2 and 3 mythic don't fire this event)
		self.vb.lastRotation = 1--0 rift, 1 ghosts, 2 roots, 3 annihilate
		timerDimensionalTearCD:Start(20.2)
	elseif spellId == 329770 then--Root of Extinction first cast
		warnSeedsofExtinction:Show()
		if self.vb.phase < 2 then--In case user playing in language with unlocalized phase 2 yell
			self.vb.phase = 2
			self.vb.lastRotation = 2
			timerDimensionalTearCD:Stop()
			timerFleetingSpiritsCD:Stop()
		end
		timerDimensionalTearCD:Start(34)--Timer for first tear after activation. Activations don't fire spell rotator
	elseif spellId == 340788 then--Roots of Extinction casts 2+
		self.vb.lastRotation = 2--0 rift, 1 ghosts, 2 roots, 3 annihilate
		timerDimensionalTearCD:Start(self:IsMythic() and 25 or 20.2)
	elseif spellId == 329834 then--Roots cast itself, for warning
		warnSeedsofExtinction:Show()
	elseif spellId == 329107 and self:AntiSpam(3, 1) then--Seeds Extinction Cast
		timerExtinction:Start()
	elseif spellId == 328880 then--Phase Change 3 (Edge of Annihilation)
		if self.vb.phase < 3 then--In case boss doesn't cast 342310, which happens in rare cases
			self.vb.phase = 3
			self.vb.lastRotation = 3
			self.vb.p3FirstCast = 0--1- Tear, 2 - Annihilate
			timerDimensionalTearCD:Stop()
			timerSeedsofExtinctionCD:Stop()
		end
		--TODO, monitor for blizzard having fixed this issue https://us.forums.blizzard.com/en/wow/t/feedback-mythic-artificer-xymox/617893/5
		--Normal is always annihilation first, but mythic can be either Unleash OR tear first. if it's actually annihilation next it's a wipe
		if self:IsMythic() then
			timerUnleashPowerCD:Start(30, 2)
			timerDimensionalTearCD:Start(30)
		else
			timerEdgeofAnnihilationCD:Start(30)
			timerDimensionalTearCD:Start(30)--Timer for first tear after activation. Activations don't fire spell rotator
		end
		if self:IsMythic() then
			self.vb.unleashCount = 1
			warnUnleashPower:Show(1)
			timerEdgeofAnnihilationCD:Start(7.7)
			timerSeedsofExtinctionCD:Start(11.4)
			timerFleetingSpiritsCD:Start(13.6)
		end
	elseif spellId == 340807 then--Annihilate 2+ cast by boss, for timer handling
		if self.vb.p3FirstCast == 0 then
			self.vb.p3FirstCast = 2
		end
		self.vb.lastRotation = 3--0 rift, 1 ghosts, 2 roots, 3 annihilate
		timerDimensionalTearCD:Start(20.2)
	elseif spellId == 328789 then--Script for the actual annihilate, where warning handling is done
		self.vb.annihilationCount = self.vb.annihilationCount + 1
		specWarnEdgeofAnnihilation:Show(self.vb.annihilationCount)
		specWarnEdgeofAnnihilation:Play("justrun")
		specWarnEdgeofAnnihilation:ScheduleVoice(2, "keepmove")
	elseif spellId == 342854 then--Unleash Power, cast in mythic phase 3 to activate all relics at once (replaces 340807 which is not cast on mythic)
		if self.vb.p3FirstCast == 0 then
			self.vb.p3FirstCast = 2
		end
		self.vb.unleashCount = self.vb.unleashCount + 1
		warnUnleashPower:Show(self.vb.unleashCount)
		--Unleash Power 1: Spirits, delay, Seeds+Annihilation
		timerDimensionalTearCD:Start(35)
		--Starts at 2 because first tri is actually activated on Annihilationn relic activation
		if self.vb.unleashCount == 2 then
			timerFleetingSpiritsCD:Start(3)
			timerSeedsofExtinctionCD:Start(11)
			timerEdgeofAnnihilationCD:Start(11)
		--Unleash Power 2: Annihilate, Spirits, seeds
		elseif self.vb.unleashCount == 3 then
			timerEdgeofAnnihilationCD:Start(3)
			timerFleetingSpiritsCD:Start(6)
			timerSeedsofExtinctionCD:Start(13)
		--Unleash Power 3: Unknown
		elseif self.vb.unleashCount == 4 then
		--	timerSeedsofExtinctionCD:Start(3)
		--	timerEdgeofAnnihilationCD:Start(3)
		--	timerFleetingSpiritsCD:Start(13)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 325361 then
		timerGlyphofDestructionCD:Start()
	elseif spellId == 326271 and self:IsHard() then
		--Even fires in all difficulties even though it doesn't do anything on normal/LFR
		specWarnStasisTrap:Show()
		specWarnStasisTrap:Play("watchstep")
		timerStasisTrapCD:Start()
	elseif spellId == 325399 then
		self.vb.hyperInProgress = false
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 328448 or spellId == 328468 then
		warnDimensionalTear:CombinedShow(1, args.destName)
		local icon = 328448 and 1 or 2--This is better way to do it, but needs confirmation of combat log using both events first
		if args:IsPlayer() then
			specWarnDimensionalTear:Show(self:IconNumToTexture(icon))
			specWarnDimensionalTear:Play("mm"..icon)
			yellDimensionalTear:Yell(icon, icon, icon)
			yellDimensionalTearFades:Countdown(spellId, nil, icon)
		end
		if self.Options.SetIconOnTear then
			self:SetIcon(args.destName, icon)
		end
	elseif spellId == 325236 then
		if args:IsPlayer() then
			specWarnGlyphofDestruction:Show()
			specWarnGlyphofDestruction:Play("runout")
			yellGlyphofDestruction:Yell()
			yellGlyphofDestructionFades:Countdown(spellId)
		else
			specWarnGlyphofDestructionTaunt:Show(args.destName)
			specWarnGlyphofDestructionTaunt:Play("tauntboss")
		end
	elseif spellId == 327902 then
		warnFixate:CombinedShow(0.5, args.destName)
		if args:IsPlayer() then
			specWarnFixate:Show()
			specWarnFixate:Play("justrun")
		end
	elseif spellId == 327414 then
		warnPossession:CombinedShow(1, args.destName)
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 328448 or spellId == 328468 then
		if args:IsPlayer() then
			yellDimensionalTearFades:Cancel()
		end
		if self.Options.SetIconOnTear then
			self:SetIcon(args.destName, 0)
		end
	end
end

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 270290 and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
--]]

--Only activation that lacks a CLEU event for the actual activations. Stage 1 has a boss cast, but on mythic that doesn't exist in stage 2 or 3, this does
function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg:find("spell:327887") then
		warnSpirits:Show()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Phase2 or msg:find(L.Phase2) or msg == L.Phase2Demonic or msg:find(L.Phase2Demonic) then
		self:SendSync("Phase2")
	elseif msg == L.Phase3 or msg:find(L.Phase3) or msg == L.Phase3Demonic or msg:find(L.Phase3Demonic) then
		self:SendSync("Phase3")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "Phase2" then
		self.vb.phase = 2
		self.vb.lastRotation = 2--Technically Tear is first in any phase, followed by activator, but neither are part of Spell Rotation script, so variable is set accordingly for that
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(2))
		warnPhase:Play("ptwo")
		timerStasisTrapCD:Stop()
		timerRiftBlastCD:Stop()
		timerHyperlightSparkCD:Stop()
		timerGlyphofDestructionCD:Stop()--Glyph is auto cast on transition yells, in addition starts a custom non 36 timer for first one in each phase
		timerFleetingSpiritsCD:Stop()
		timerDimensionalTearCD:Stop()
		--If hyper is in progress, boss actually finishes it and the phase change CD isn't triggered
		if not self.vb.hyperInProgress then
			timerHyperlightSparkCD:Start(5.5)
		else--When this happens, it doesn't get recast for a full minute
			timerHyperlightSparkCD:Start(60)
		end
		timerStasisTrapCD:Start(10.7)
		timerDimensionalTearCD:Start(14)
		timerSeedsofExtinctionCD:Start(20)--Timer for actual seeds cast, not relic activation. Minus 14 when using CLEU to verify on WCL
		timerRiftBlastCD:Start(20)
		timerGlyphofDestructionCD:Start(27.8)--SUCCESS
	elseif msg == "Phase3" then
		self.vb.phase = 3
		self.vb.lastRotation = 3--Technically Tear is first in any phase, followed by activator, but neither are part of Spell Rotation script, so variable is set accordingly for that
		self.vb.p3FirstCast = 0--1- Tear, 2 - Annihilate
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(3))
		warnPhase:Play("pthree")
		timerStasisTrapCD:Stop()
		timerRiftBlastCD:Stop()
		timerHyperlightSparkCD:Stop()
		timerGlyphofDestructionCD:Stop()--Glyph is auto cast on transition yells, in addition starts a custom non 36 timer for first one in each phase
		timerSeedsofExtinctionCD:Stop()
		timerDimensionalTearCD:Stop()
		--If hyper is in progress, boss actually finishes it and the phase change CD isn't triggered
		if not self.vb.hyperInProgress then
			timerHyperlightSparkCD:Start(5.5)--5.5-7
		else--When this happens, it doesn't get recast for a full minute
			timerHyperlightSparkCD:Start(60)
		end
		timerStasisTrapCD:Start(10.7)
		timerDimensionalTearCD:Start(14.4)
		timerRiftBlastCD:Start(45.9)
		timerGlyphofDestructionCD:Start(55)--SUCCESS
		if self:IsMythic() then
			timerUnleashPowerCD:Start(20, 1)--Tecnically time til Edge of Annihilation, but it activates all 3 like Unleash Power does
		else
			timerEdgeofAnnihilationCD:Start(27)--Time until actual annihilation cast, not edge of annihilation
		end
	end
end

--Use if combat log methods fail or get removed from visiblity
--This is a bit more convoluted but should be functional, esspecially if blizzard fixes order bug on phase 3 mythic
--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 342297 then--Broker Curator Phase 1 Spell Rotator
		if self.vb.lastRotation == 0 then--Last cast was tear
			self.vb.lastRotation = 1--Which means this cast is Spirits
			timerDimensionalTearCD:Start(20.2)--Which means next cast is tear
		else--Last cast was spirits
			self.vb.lastRotation = 0--Which means this cast is tear
			timerFleetingSpiritsCD:Start(20.2)--Which means next cast is spirits
		end
	elseif spellId == 342379 then--Broker Curator Phase 2 Spell Rotator
		if self:IsMythic() then
			if self.vb.lastRotation == 0 then--Last cast as tear
				self.vb.lastRotation = 2--Which means this cast is seeds
				timerDimensionalTearCD:Start(25)--Which means next cast is tear
			else--Last cast was seeds
				self.vb.lastRotation = 0--Which means this cast is tear
				timerSeedsofExtinctionCD:Start(25)--Which means next cast is seeds
			end
		else
			if self.vb.lastRotation == 0 then--Last cast as tear
				self.vb.lastRotation = 2--Which means this cast is seeds
				timerDimensionalTearCD:Start(20.2)--Which means next cast is tear
			else--Last cast was seeds
				self.vb.lastRotation = 0--Which means this cast is tear
				timerSeedsofExtinctionCD:Start(20.2)--Which means next cast is seeds
			end
		end
	elseif spellId == 342380 then--Broker Curator Phase 3 Spell Rotator
		if self:IsMythic() then
			if self.vb.lastRotation == 0 then--Last cast as tear
				self.vb.lastRotation = 3--Which means this cast is Unleashed Power
				timerDimensionalTearCD:Start(35.3)--Which means next cast is tear
			else--Last cast was seeds
				self.vb.lastRotation = 0--Which means this cast is tear
				timerUnleashPowerCD:Start(35.3, self.vb.unleashCount+2)--Which means next cast is all 3
			end
		else
			--Unique Rotation in this phase on non mythic: Annihilate, Tear, Empty, Tear, repeat
			if self.vb.lastRotation == 3 then--Last cast Annihilate
				self.vb.lastRotation = 0--Which means this cast is Tear 1
				timerDimensionalTearCD:Start(40.4)--Which means next real cast is tear 2
			elseif self.vb.lastRotation == 0 then--Last cast was Tear 1
				self.vb.lastRotation = 5--This cast is empty
				--Start no timer
			elseif self.vb.lastRotation == 5 then--Last cast was Empty
				self.vb.lastRotation = 4--This cast is Tear 2
				timerEdgeofAnnihilationCD:Start(20.2)--Which means next cast begins cycle again at Annihilate
			elseif self.vb.lastRotation == 4 then--Last cast was Tear 2
				self.vb.lastRotation = 3--Which means this cast is Annihilate
				timerDimensionalTearCD:Start(20.4)--Which means next cast is tear 1
			end
		end
	end
end
--]]
