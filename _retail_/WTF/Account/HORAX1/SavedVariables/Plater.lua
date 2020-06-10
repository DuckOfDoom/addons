
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1537884697,
					["url"] = "",
					["Icon"] = 135996,
					["Enabled"] = true,
					["Revision"] = 156,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Name"] = "Unit - Important [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1539013601,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 399,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Buff Alert [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1561923707,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 391,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Very Important [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1540663131,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 324,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Explosion Affix M+ [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538429739,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 232,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Debuff Alert [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1561924439,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 574,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Big Alert [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1539201768,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 376,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Small Alert [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1538256464,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Enabled"] = true,
					["Revision"] = 106,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1543253273,
					["url"] = "",
					["Icon"] = 135024,
					["Enabled"] = true,
					["Revision"] = 59,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Name"] = "Color Change [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1547991413,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 157,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
				}, -- [10]
				{
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["url"] = "",
					["Icon"] = 133006,
					["Enabled"] = false,
					["Revision"] = 45,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Border Color [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1539015649,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 131,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Name"] = "UnitPower [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1539201849,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 171,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Frontal Cone [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1539187387,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 190,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Fixate [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
				}, -- [14]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1543250950,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 194,
					["semver"] = "",
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Name"] = "Fixate On You [Plater]",
					["version"] = -1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [15]
			},
			["plate_config"] = {
				["player"] = {
					["percent_text_alpha"] = 0.7963749170303345,
					["castbar_enabled"] = false,
					["power_percent_text_alpha"] = 0.8029260039329529,
					["click_through"] = true,
					["spellpercent_text_enabled"] = false,
					["buff_frame_y_offset"] = -100,
				},
			},
			["use_ui_parent"] = true,
			["npc_cache"] = {
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[161895] = {
					"Потусторонняя тварь", -- [1]
					"Око Бури", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[26125] = {
					"Крысобив", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[153881] = {
					"Conversion Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[103326] = {
					"Esprit de bête", -- [1]
					"Храм Котмогу", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[53006] = {
					"Тотем духовной связи", -- [1]
					"Око Бури", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Храм Котмогу", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[3527] = {
					"Тотем исцеляющего потока", -- [1]
					"Око Бури", -- [2]
				},
				[2630] = {
					"Тотем оков земли", -- [1]
					"Око Бури", -- [2]
				},
				[151945] = {
					"Hyena", -- [1]
					"Храм Котмогу", -- [2]
				},
				[89] = {
					"Инфернал", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[42720] = {
					"Haut-trotteur", -- [1]
					"Храм Котмогу", -- [2]
				},
				[152993] = {
					"Garona Halforcen", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[69792] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[24207] = {
					"Войско мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152184] = {
					"Orgrimmar Grunt", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[59764] = {
					"Тотем целительного прилива", -- [1]
					"Око Бури", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154161] = {
					"Nogg", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[105419] = {
					"Ужасный василиск", -- [1]
					"Око Бури", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
			},
			["aura_width_personal"] = 20.53905487060547,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Color Automation [Plater]",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Time"] = 1547392935,
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Don't Have Aura [Plater]",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 136207,
					["Time"] = 1554138845,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Name"] = "Extra Border [Plater]",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 133689,
					["Time"] = 1547409079,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Hide Neutral Units [Plater]",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1990989,
					["Time"] = 1541606242,
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Stormwall Encounter [Plater]",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Time"] = 1548117267,
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Jaina Encounter [Plater]",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Time"] = 1548612537,
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Name"] = "Execute Range [Plater]",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135358,
					["Time"] = 1547406548,
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Reorder Nameplate [Plater]",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 574574,
					["Time"] = 1548077443,
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Attacking Specific Unit [Plater]",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Time"] = 1547993111,
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "M+ Bwonsamdi Reaping",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 2446016,
					["Time"] = 1549827281,
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Combo Points [Plater]",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135426,
					["Time"] = 1548354524,
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Players Targeting a Target [Plater]",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1966587,
					["Time"] = 1548278227,
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Current Target Color [Plater]",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 878211,
					["Time"] = 1552354619,
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 272,
					["semver"] = "",
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Name"] = "Aura Reorder [Plater]",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["version"] = -1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Time"] = 1553450957,
				}, -- [14]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["resources"] = {
				["scale"] = 0.9994834065437317,
				["alpha"] = 0.7977221012115479,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["first_run3"] = true,
			["transparency_behavior"] = 3,
			["ui_parent_scale_tune"] = 1.538461594891974,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Extra Border"] = 2,
				["Hide Neutral Units"] = 1,
				["Attacking Specific Unit"] = 1,
				["Target Color"] = 3,
				["Aura Reorder"] = 1,
				["Combo Points"] = 3,
			},
			["captured_spells"] = {
				[164815] = {
					["source"] = "Brittinger-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259489] = {
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1543] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гинсама-Гордунни",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Мироготонь-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Хугарден-Подземье",
					["npcID"] = 0,
				},
				[281400] = {
					["source"] = "Магмрм-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97153] = {
					["type"] = "DEBUFF",
					["source"] = "Лучник Золотого Лотоса",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154274,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Морктис-Ревущийфьорд",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Okå-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313643] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281403] = {
					["source"] = "Оличка-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324902] = {
					["source"] = "Сантура-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160724] = {
					["type"] = "BUFF",
					["source"] = "Мухоморочка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Аттерхон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Шипвкд-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Римрок-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285500] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275778] = {
					["source"] = "Эттин-камнемет",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136419,
				},
				[403] = {
					["source"] = "Mercuraucrøm-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Blást-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Экзабайт-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ластвиспер-Дракономор",
					["npcID"] = 0,
				},
				[274245] = {
					["source"] = "Пенящаяся кровь моря",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130116,
				},
				[315697] = {
					["type"] = "BUFF",
					["source"] = "Зара'тик-солдат",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157793,
				},
				[408] = {
					["source"] = "Мироготонь-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299322] = {
					["source"] = "Лисивуля",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6552] = {
					["source"] = "Фемирезка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тренировочный манекен покорителя подземелий",
					["npcID"] = 131992,
				},
				[20243] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аалунд",
					["npcID"] = 0,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Фемирезка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228537] = {
					["source"] = "Асцендер-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301886] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Котлинт-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270670] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262483] = {
					["source"] = "Дозорный из племени Шипошкурых",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130073,
				},
				[108416] = {
					["type"] = "BUFF",
					["source"] = "Дайривард-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Вадимирыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120954] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Паловлад-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[220351] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аоелюбовник-Гордунни",
					["npcID"] = 0,
				},
				[167385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тренировочный манекен покорителя подземелий",
					["npcID"] = 131992,
				},
				[182226] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сивыймерен",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тадорал",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Тэтахилер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Эттин-землекрушитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136421,
				},
				[167898] = {
					["source"] = "Аммонит-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313663] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Острыйвзгляд-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Элльо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Захватчица-рубака",
					["npcID"] = 135860,
				},
				[23922] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303943] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Элерисс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50259] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[228287] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212423] = {
					["source"] = "Восставший тихоступ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[267611] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кинлия-Гордунни",
					["npcID"] = 0,
				},
				[3561] = {
					["source"] = "Альгейм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256434] = {
					["source"] = "Айханта-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Colli-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Отверточка",
					["npcID"] = 0,
				},
				[311112] = {
					["type"] = "BUFF",
					["source"] = "Ха-Ли",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157153,
				},
				[295248] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115072] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45334] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129657] = {
					["type"] = "DEBUFF",
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153208,
				},
				[305996] = {
					["source"] = "Медоносец-роевик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154113,
				},
				[257715] = {
					["source"] = "Килтулис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Арътемида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Сетикрист-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Адарра",
					["npcID"] = 0,
				},
				[301392] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хугарден-Подземье",
					["npcID"] = 0,
				},
				[198097] = {
					["type"] = "DEBUFF",
					["source"] = "Мамкадруга-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306511] = {
					["source"] = "Медодав",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154154,
				},
				[280412] = {
					["source"] = "Рибозза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298836] = {
					["source"] = "Сетикрист-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7384] = {
					["type"] = "BUFF",
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114050] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ракнаж",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Лаэртик-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Цив-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288091] = {
					["source"] = "Фемирезка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307026] = {
					["source"] = "Йоксаррун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фрикаделечка",
					["npcID"] = 0,
				},
				[213708] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298839] = {
					["source"] = "Палибери-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Киннаман",
					["npcID"] = 0,
				},
				[295258] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114051] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Паладыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Экзабайт-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Флешфая",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["source"] = "Эстулан",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Вкусняфка-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Наласнар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305497] = {
					["type"] = "BUFF",
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290145] = {
					["source"] = "Лафия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193753] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[53140] = {
					["source"] = "Врена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265582] = {
					["source"] = "Членистовредитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136183,
				},
				[251837] = {
					["source"] = "Форзимус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Маргомириам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аррантара",
					["npcID"] = 0,
				},
				[279913] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288613] = {
					["source"] = "Llurtzz-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чидзен-Гордунни",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балуня-Голдринн",
					["npcID"] = 0,
				},
				[216528] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "ßlítz-Kael'thas",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Маргомириам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Нерубчик-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Железный боевой гронн",
					["npcID"] = 148666,
				},
				[273264] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Соленоплавниковый пловец",
					["npcID"] = 126682,
				},
				[265077] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274289] = {
					["type"] = "BUFF",
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[150770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Железный боевой гронн",
					["npcID"] = 148666,
				},
				[132603] = {
					["source"] = "Lessien-Madmortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кирюшатворог-Гордунни",
					["npcID"] = 0,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236746] = {
					["type"] = "BUFF",
					["source"] = "Alddaris-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Римрок-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Басеке",
					["npcID"] = 0,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Valkor-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[256451] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анавуайна",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Хуньлун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286581] = {
					["type"] = "DEBUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306028] = {
					["source"] = "Медоносец-опылитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154112,
				},
				[147193] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Лоскутник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172781] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Железный боевой гронн",
					["npcID"] = 148666,
				},
				[527] = {
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255941] = {
					["type"] = "DEBUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102543] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["type"] = "DEBUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Андрофобия-Галакронд",
					["npcID"] = 0,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Hysanka-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Вэлла",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Салатикю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89751] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[273286] = {
					["type"] = "DEBUFF",
					["source"] = "Маурицио-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Жагун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Злаябабуся",
					["npcID"] = 0,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Адарра",
					["npcID"] = 0,
				},
				[289666] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[212704] = {
					["type"] = "BUFF",
					["source"] = "Colli-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Гриет-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Пантерачка-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сивыймерен",
					["npcID"] = 0,
				},
				[261577] = {
					["source"] = "Длерф-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Запиканка",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Феган",
					["npcID"] = 0,
				},
				[91800] = {
					["source"] = "Нервохап",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26125,
				},
				[204262] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272783] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[23126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Васакия-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сплетенный проклятием фамилиар",
					["npcID"] = 137132,
				},
				[273298] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Магмрм-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106898] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23766] = {
					["type"] = "BUFF",
					["source"] = "Воржей",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14822,
				},
				[273301] = {
					["source"] = "Пробужденный страж моря",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138855,
				},
				[14030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[167164] = {
					["source"] = "Беспокойный камень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134966,
				},
				[132621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Родэйн",
					["npcID"] = 0,
				},
				[316801] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278420] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заказподан-Голдринн",
					["npcID"] = 0,
				},
				[274838] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Пчпэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Юлекмотылек-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295310] = {
					["source"] = "Бузотерский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Чебурышка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197871] = {
					["type"] = "BUFF",
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227041] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Аризерия-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269214] = {
					["type"] = "BUFF",
					["source"] = "Alitel-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[272285] = {
					["source"] = "Повелительница лоз Оргстин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132161,
				},
				[287638] = {
					["type"] = "DEBUFF",
					["source"] = "Hebztotem-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311179] = {
					["type"] = "BUFF",
					["source"] = "Сгустившаяся анима",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157183,
				},
				[217832] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268194] = {
					["type"] = "DEBUFF",
					["source"] = "Arkadíos-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрикаделечка",
					["npcID"] = 0,
				},
				[273312] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Штрулф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259285] = {
					["type"] = "BUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259798] = {
					["source"] = "Текущий мед",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131663,
				},
				[190456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[79140] = {
					["type"] = "DEBUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Кенарийка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87840] = {
					["source"] = "Кейсбел-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ланесая",
					["npcID"] = 0,
				},
				[256217] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[271272] = {
					["source"] = "Шериф дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130008,
				},
				[272296] = {
					["type"] = "DEBUFF",
					["source"] = "Nimscha-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212207] = {
					["source"] = "Когтистый гризли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139793,
				},
				[80676] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139570,
				},
				[256218] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[295838] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["source"] = "Мироготонь-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Эстулан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274346] = {
					["source"] = "Дыхаэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147728] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вальминон-Галакронд",
					["npcID"] = 0,
				},
				[273323] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["source"] = "Urimgor-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316823] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[295842] = {
					["source"] = "Rubymercury-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ланесая",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "Hati",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151133,
				},
				[256221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[176644] = {
					["source"] = "Валькасс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316826] = {
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[256222] = {
					["source"] = "Своенравный козел",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139796,
				},
				[281517] = {
					["source"] = "Талисда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302499] = {
					["source"] = "Аббас-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147732] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275378] = {
					["source"] = "Мирбен",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295337] = {
					["source"] = "Асцендер-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310690] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311202] = {
					["source"] = "Горай-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278962] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[295339] = {
					["type"] = "DEBUFF",
					["source"] = "Цецка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Высвобожденная энергия шторма",
					["npcID"] = 141123,
				},
				[139546] = {
					["source"] = "Шивунн-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316835] = {
					["source"] = "Искаженный отросток",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[202748] = {
					["type"] = "BUFF",
					["source"] = "Valuchette-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317859] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Дыхаэль-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Тэррог",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Котлинт-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317861] = {
					["type"] = "BUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256483] = {
					["source"] = "Ледоклык-вожак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136204,
				},
				[256739] = {
					["source"] = "Онидзукка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рободруль",
					["npcID"] = 0,
				},
				[309674] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[3110] = {
					["source"] = "Тартике",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[256228] = {
					["source"] = "Горная коза",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136939,
				},
				[256484] = {
					["source"] = "Ледоклык-вожак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136204,
				},
				[781] = {
					["source"] = "Солджия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бетурион",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Злаябабуся",
					["npcID"] = 0,
				},
				[275903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гирэль-Дракономор",
					["npcID"] = 0,
				},
				[262115] = {
					["type"] = "DEBUFF",
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273345] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138855,
				},
				[256742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[311215] = {
					["source"] = "Йоксаррун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299445] = {
					["source"] = "Айханта-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Инфернал",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[21562] = {
					["source"] = "Лафарон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115098] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хэйси",
					["npcID"] = 0,
				},
				[275909] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[818] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хугарден-Подземье",
					["npcID"] = 0,
				},
				[275398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[275911] = {
					["source"] = "Абисфира-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252396] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кайнен",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Фростпал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228600] = {
					["type"] = "DEBUFF",
					["source"] = "Джориш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["source"] = "Дэлфиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236021] = {
					["type"] = "DEBUFF",
					["source"] = "Горгол-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298431] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Талисда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Экзабайт-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джаинис",
					["npcID"] = 0,
				},
				[197385] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джалуна",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Лафия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ятоками-Гордунни",
					["npcID"] = 0,
				},
				[297412] = {
					["source"] = "Николяшечка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295367] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["type"] = "BUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298950] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хэвипал",
					["npcID"] = 0,
				},
				[303556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[51490] = {
					["source"] = "Sondoc-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298440] = {
					["source"] = "Имрель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Церий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54049] = {
					["source"] = "Джуруну",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Захилька",
					["npcID"] = 0,
				},
				[264667] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 21102,
				},
				[314307] = {
					["source"] = "Великая императрица Шек'зара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154638,
				},
				[224001] = {
					["source"] = "Иридана",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["source"] = "Экзабайт-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Джориш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198670] = {
					["source"] = "Талисда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[65116] = {
					["type"] = "BUFF",
					["source"] = "Grössebaf-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278999] = {
					["source"] = "Вадимирыч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нимана",
					["npcID"] = 0,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Танкиванки",
					["npcID"] = 0,
				},
				[274395] = {
					["type"] = "BUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119582] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Хуньлун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270302] = {
					["source"] = "Свиновод из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129870,
				},
				[295378] = {
					["source"] = "Хьельсунн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Räsheed-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кирюшатворог-Гордунни",
					["npcID"] = 0,
				},
				[208652] = {
					["source"] = "Onebigpanda-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Флешфая",
					["npcID"] = 0,
				},
				[121118] = {
					["source"] = "Colli-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274399] = {
					["type"] = "BUFF",
					["source"] = "Lôuve-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314316] = {
					["source"] = "Зара'тик - страж роя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161370,
				},
				[280541] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297941] = {
					["source"] = "Бэдкарма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280542] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Огнеплюйка",
					["npcID"] = 0,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261620] = {
					["source"] = "Джиндао-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фростгрим",
					["npcID"] = 0,
				},
				[280543] = {
					["source"] = "Эстулан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196884] = {
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280544] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["source"] = "Оррох-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Сетикрист-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314321] = {
					["source"] = "Зара'тик - янтарный кузнец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161371,
				},
				[203538] = {
					["source"] = "Салатикю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Джориш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122783] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227847] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Салатикю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202004] = {
					["type"] = "BUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280549] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рендми-Борейскаятундра",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34477] = {
					["type"] = "BUFF",
					["source"] = "Colli-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Donata-Arathor",
					["npcID"] = 0,
				},
				[290786] = {
					["type"] = "BUFF",
					["source"] = "Nâyuo-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["type"] = "BUFF",
					["source"] = "Tartarøs-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["type"] = "BUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Магага",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308188] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304606] = {
					["source"] = "Хкайфатх",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Сэммунидза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196122] = {
					["source"] = "Оска Окровавленная",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141239,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Volares-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278508] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140925,
				},
				[980] = {
					["source"] = "Мирбен",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Хуньлун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[146739] = {
					["source"] = "Мирбен",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290792] = {
					["type"] = "DEBUFF",
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290793] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Еврилика",
					["npcID"] = 0,
				},
				[79927] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134775,
				},
				[304612] = {
					["source"] = "Хкайфатх",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["source"] = "Софи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 72805,
				},
				[275443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[255744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роландайк-Дракономор",
					["npcID"] = 0,
				},
				[115750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ликопоня-Гордунни",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Вадимирыч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Пристэлуны-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Ратиар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186403] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Urimgor-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Дэлфиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279541] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207386] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Еврилика",
					["npcID"] = 0,
				},
				[1022] = {
					["type"] = "BUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Трипитака",
					["npcID"] = 0,
				},
				[8212] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288756] = {
					["type"] = "DEBUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129697] = {
					["type"] = "BUFF",
					["source"] = "Чут Шри Ну",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65927,
				},
				[49576] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Шивунн-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270335] = {
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257284] = {
					["source"] = "Талисда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Дыхаэль-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317420] = {
					["source"] = "Паллушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199203] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258822] = {
					["source"] = "Пляжная чайка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141877,
				},
				[43308] = {
					["source"] = "Катиф-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262154] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Метательница топоров из Орды",
					["npcID"] = 136584,
				},
				[289277] = {
					["source"] = "Острыйвзгляд-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кирюшатворог-Гордунни",
					["npcID"] = 0,
				},
				[203554] = {
					["type"] = "BUFF",
					["source"] = "Pohjolanmìes-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266249] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279555] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1122] = {
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184364] = {
					["type"] = "BUFF",
					["source"] = "Tarasboolba-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэммикс-Гордунни",
					["npcID"] = 0,
				},
				[294909] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287234] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заказподан-Голдринн",
					["npcID"] = 0,
				},
				[93622] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фортея-Борейскаятундра",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Превент",
					["npcID"] = 0,
				},
				[294912] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[53480] = {
					["type"] = "BUFF",
					["source"] = "Грогс-Термоштепсель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274443] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289284] = {
					["source"] = "Онидзукка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291843] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Фемирезка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271374] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203814] = {
					["type"] = "BUFF",
					["source"] = "Темпос-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233496] = {
					["source"] = "Мирбен",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["type"] = "DEBUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292359] = {
					["type"] = "BUFF",
					["source"] = "Тажалла-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[297989] = {
					["source"] = "Имрель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Искратьмы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хиирсин",
					["npcID"] = 0,
				},
				[303621] = {
					["type"] = "BUFF",
					["source"] = "Yùkie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элаирина-Гордунни",
					["npcID"] = 0,
				},
				[267799] = {
					["type"] = "DEBUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107570] = {
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[47788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лирелла-Гордунни",
					["npcID"] = 0,
				},
				[292364] = {
					["type"] = "BUFF",
					["source"] = "Lauraqa-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[33907] = {
					["type"] = "BUFF",
					["source"] = "Бролл Медвежья Шкура",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142294,
				},
				[119085] = {
					["source"] = "Миглена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Прихром-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160832] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Барикс",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294926] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мивариель",
					["npcID"] = 0,
				},
				[246807] = {
					["type"] = "DEBUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Йоргенсон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12323] = {
					["source"] = "Гактунгр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рейзорформен",
					["npcID"] = 0,
				},
				[33076] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[208683] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285719] = {
					["source"] = "Kîmî-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["source"] = "Llurtzz-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Lessien-Madmortem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208684] = {
					["type"] = "DEBUFF",
					["source"] = "Onebigpanda-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254486] = {
					["type"] = "BUFF",
					["source"] = "Грозах-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Лафия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204079] = {
					["type"] = "DEBUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Фемирезка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Мироготонь-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аодис-Дракономор",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Пробуждённый-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Элементаль воды",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[126892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ольюнс-Дракономор",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Асцендер-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["source"] = "Сапфирита-ПиратскаяБухта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80451] = {
					["source"] = "Килтулис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283167] = {
					["type"] = "BUFF",
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[298009] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сендерхэд",
					["npcID"] = 0,
				},
				[290333] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элсис",
					["npcID"] = 0,
				},
				[30108] = {
					["source"] = "Мирбен",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203059] = {
					["type"] = "BUFF",
					["source"] = "Горгол-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Велдан",
					["npcID"] = 0,
				},
				[263725] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сольвенн",
					["npcID"] = 0,
				},
				[132951] = {
					["type"] = "DEBUFF",
					["source"] = "Пустой голем",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156088,
				},
				[2823] = {
					["source"] = "Йоргенсон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289315] = {
					["type"] = "BUFF",
					["source"] = "Олия-Термоштепсель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Барбарысь-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Сынподруги-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Галлардо",
					["npcID"] = 0,
				},
				[49966] = {
					["source"] = "Золотгривка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 91308,
				},
				[165961] = {
					["source"] = "Альбукерко-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260635] = {
					["source"] = "Гневножал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140275,
				},
				[197690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Селамерекс",
					["npcID"] = 0,
				},
				[36213] = {
					["source"] = "Большой элементаль земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95072,
				},
				[204343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Отрекшийся-убийца",
					["npcID"] = 136439,
				},
				[316985] = {
					["source"] = "Дьм-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[226175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фиаса",
					["npcID"] = 0,
				},
				[67826] = {
					["source"] = "Атакабобров-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299296] = {
					["source"] = "Татунапопке-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Злаябабуся",
					["npcID"] = 0,
				},
				[267288] = {
					["source"] = "Шаман Служителей Земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135671,
				},
				[314631] = {
					["source"] = "Дредлокинс-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210391] = {
					["type"] = "BUFF",
					["source"] = "Аоенемка-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290468] = {
					["type"] = "BUFF",
					["source"] = "Акемиро-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271412] = {
					["source"] = "Сестра Абсинтия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141143,
				},
				[90361] = {
					["source"] = "Локе'нахак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[222256] = {
					["source"] = "Киллерку-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Иджарест-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["type"] = "BUFF",
					["source"] = "Saltzpyre-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Паакко",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тупотелыч",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аалунд",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Мурлиаве",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7328] = {
					["source"] = "Malahel-Krasus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201787] = {
					["type"] = "DEBUFF",
					["source"] = "Twistmmaniaa-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Злаябабуся",
					["npcID"] = 0,
				},
				[305395] = {
					["type"] = "BUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["type"] = "BUFF",
					["source"] = "Blackheart-Sinstralis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208679] = {
					["type"] = "BUFF",
					["source"] = "Ястреб",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105374,
				},
				[287280] = {
					["source"] = "Эстулан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элсис",
					["npcID"] = 0,
				},
				[115356] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Огнеплюйка",
					["npcID"] = 0,
				},
				[314315] = {
					["source"] = "Зара'тик - страж роя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161370,
				},
				[295186] = {
					["source"] = "Inshamop-Ravenholdt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44530] = {
					["source"] = "Голодный корчеватель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129869,
				},
				[115767] = {
					["source"] = "Вадимирыч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260384] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[77130] = {
					["source"] = "Yeepee-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273977] = {
					["type"] = "DEBUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130736] = {
					["type"] = "DEBUFF",
					["source"] = "Пегасо-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Sharckviani-DefiasBrotherhood",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176458] = {
					["source"] = "Соратник-кузнец - Альянс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88403,
				},
				[267326] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276026] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шанделар-ЧерныйШрам",
					["npcID"] = 0,
				},
				[268350] = {
					["source"] = "Порабощенная волна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134340,
				},
				[267171] = {
					["type"] = "BUFF",
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Brittinger-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[89157] = {
					["source"] = "Сипа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22570] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268520] = {
					["type"] = "BUFF",
					["source"] = "Сапфирита-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276743] = {
					["type"] = "BUFF",
					["source"] = "Sparkkur-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кукурру",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["type"] = "DEBUFF",
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280635] = {
					["source"] = "Сэрвор-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Маргомириам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293142] = {
					["type"] = "BUFF",
					["source"] = "Цив-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Inshamop-Ravenholdt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[99] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Humaerh-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294966] = {
					["source"] = "Палшок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287802] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Humaerh-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158806] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140938,
				},
				[264774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дайрстрэйтс",
					["npcID"] = 0,
				},
				[34861] = {
					["source"] = "Сапфирита-ПиратскаяБухта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Длерф-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Детеныш камнекуса",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141716,
				},
				[124503] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Еврилика",
					["npcID"] = 0,
				},
				[210824] = {
					["type"] = "DEBUFF",
					["source"] = "Sparkkur-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297126] = {
					["type"] = "BUFF",
					["source"] = "Cloodstrif-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Unclesnoop-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271194] = {
					["type"] = "BUFF",
					["source"] = "Sharckviani-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264265] = {
					["source"] = "Локе'нахак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[264777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Colli-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269651] = {
					["type"] = "BUFF",
					["source"] = "Цив-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301531] = {
					["type"] = "BUFF",
					["source"] = "Inshamop-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[314332] = {
					["type"] = "DEBUFF",
					["source"] = "Великая императрица Шек'зара",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154638,
				},
				[225080] = {
					["type"] = "DEBUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312467] = {
					["source"] = "Зара'тик-солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157793,
				},
				[194879] = {
					["source"] = "Скирс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["type"] = "BUFF",
					["source"] = "Фримэн-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288988] = {
					["type"] = "BUFF",
					["source"] = "Midrogue-Aszune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Midrogue-Aszune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Midrogue-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Маргомириам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32612] = {
					["type"] = "BUFF",
					["source"] = "Каличевски-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273481] = {
					["source"] = "Аризерия-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308874] = {
					["type"] = "BUFF",
					["source"] = "Хэйси Повелитель Камня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157171,
				},
				[66] = {
					["type"] = "BUFF",
					["source"] = "Каличевски-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Тристам-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265187] = {
					["source"] = "Джиперскрипс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Шериф дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130008,
				},
				[313310] = {
					["type"] = "BUFF",
					["source"] = "Джиперскрипс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268877] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Цецка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205636] = {
					["source"] = "Mikkelwow-Bronzebeard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Mercuraucrøm-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233582] = {
					["type"] = "DEBUFF",
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271437] = {
					["source"] = "Саперный заряд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103512,
				},
				[290372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элсис",
					["npcID"] = 0,
				},
				[208963] = {
					["type"] = "BUFF",
					["source"] = "Тотем небесной ярости",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[289349] = {
					["type"] = "BUFF",
					["source"] = "Fanell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Зловещий охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[116705] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313931] = {
					["type"] = "DEBUFF",
					["source"] = "Сгустившаяся анима",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157183,
				},
				[266779] = {
					["type"] = "BUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270343] = {
					["type"] = "DEBUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270339] = {
					["type"] = "DEBUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1715] = {
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[244787] = {
					["source"] = "Членистовредитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136183,
				},
				[270332] = {
					["type"] = "DEBUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изимонк-Гордунни",
					["npcID"] = 0,
				},
				[270323] = {
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259387] = {
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17253] = {
					["source"] = "Shanume",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 23501,
				},
				[259277] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 4689,
				},
				[203848] = {
					["source"] = "Тату-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Tartarøs-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233397] = {
					["type"] = "DEBUFF",
					["source"] = "Hellforces-Templenoir",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262232] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Экзабайт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["source"] = "Дух волка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29264,
				},
				[193358] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Gadzul-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Очбко-Азурегос",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Волорион",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275540] = {
					["source"] = "Ратиар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Вовачкина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115203] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207203] = {
					["source"] = "Скирс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Sharckviani-DefiasBrotherhood",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Николяшечка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Volares-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68054] = {
					["type"] = "BUFF",
					["source"] = "Дживс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[124506] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212295] = {
					["type"] = "BUFF",
					["source"] = "Démoday-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тренировочная репа",
					["npcID"] = 65310,
				},
				[280149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрикаделечка",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Тэкилко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263853] = {
					["source"] = "Hyena",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124287,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бойсбойсбойс",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Алафисс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149644,
				},
				[209967] = {
					["type"] = "DEBUFF",
					["source"] = "Ужасный василиск",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[205691] = {
					["source"] = "Onebigpanda-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Годан",
					["npcID"] = 0,
				},
				[20484] = {
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Миглена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205644] = {
					["type"] = "DEBUFF",
					["source"] = "Древень",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103822,
				},
				[297040] = {
					["source"] = "Дэартаньян-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303520] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[125883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хъёрнли",
					["npcID"] = 0,
				},
				[188501] = {
					["type"] = "BUFF",
					["source"] = "Elanthriel-Antonidas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225603] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290819] = {
					["type"] = "BUFF",
					["source"] = "Onebigpanda-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309666] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[1822] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[73685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "ßlítz-Kael'thas",
					["npcID"] = 0,
				},
				[309669] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[225604] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267362] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135985,
				},
				[234084] = {
					["type"] = "BUFF",
					["source"] = "Whomen-Sinstralis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126580] = {
					["type"] = "DEBUFF",
					["source"] = "Воин Золотого Лотоса",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156129,
				},
				[268898] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44535] = {
					["source"] = "Скалас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264057] = {
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[309675] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[1850] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Масянима-Гордунни",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айраш",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Скирс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299905] = {
					["type"] = "DEBUFF",
					["source"] = "Gadzul-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Yùkie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300893] = {
					["type"] = "BUFF",
					["source"] = "Hebztotem-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205648] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313424] = {
					["source"] = "Инкубиус-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Экзабайт-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Эстулан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8042] = {
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Patisson-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105421] = {
					["type"] = "DEBUFF",
					["source"] = "Nâyuo-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119415] = {
					["source"] = "Маргомириам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314961] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хугарден-Подземье",
					["npcID"] = 0,
				},
				[118337] = {
					["type"] = "BUFF",
					["source"] = "Изначальный элементаль земли",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61056,
				},
				[268904] = {
					["source"] = "Бузотерский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Atomiseur-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33917] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61391] = {
					["type"] = "DEBUFF",
					["source"] = "Pørzival-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Флешфая",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рободруль",
					["npcID"] = 0,
				},
				[20572] = {
					["type"] = "BUFF",
					["source"] = "Cloodstrif-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276111] = {
					["type"] = "BUFF",
					["source"] = "Atomiseur-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аррантара",
					["npcID"] = 0,
				},
				[206930] = {
					["type"] = "DEBUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268907] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сендерхэд",
					["npcID"] = 0,
				},
				[260643] = {
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272685] = {
					["type"] = "DEBUFF",
					["source"] = "Fanell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Сетикрист-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283237] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гартхауртхот",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Fanell-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20549] = {
					["type"] = "DEBUFF",
					["source"] = "Nâyuo-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223819] = {
					["type"] = "BUFF",
					["source"] = "Elegon-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118297] = {
					["source"] = "Изначальный элементаль огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[11366] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198067] = {
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["source"] = "Heíkí-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213241] = {
					["source"] = "Arendali-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[273006] = {
					["type"] = "DEBUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278124] = {
					["source"] = "Оррох-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302775] = {
					["type"] = "DEBUFF",
					["source"] = "Shêenette-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275863] = {
					["type"] = "BUFF",
					["source"] = "Høden-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118699] = {
					["type"] = "DEBUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["type"] = "BUFF",
					["source"] = "Elanthriel-Antonidas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Женних-ЧерныйШрам",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Elanthriel-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Щоош-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287338] = {
					["type"] = "BUFF",
					["source"] = "Kheliell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197211] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["source"] = "Лукинфор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[312415] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157792,
				},
				[49143] = {
					["source"] = "Дедмент-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299869] = {
					["type"] = "BUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281711] = {
					["type"] = "DEBUFF",
					["source"] = "Нордикблоу-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205385] = {
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айманка-Гордунни",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197051] = {
					["type"] = "DEBUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Нерфирэль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Аризерия-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17735] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[275572] = {
					["source"] = "Подчинительница Са'тресс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134341,
				},
				[198222] = {
					["type"] = "DEBUFF",
					["source"] = "Volares-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272502] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196277] = {
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311132] = {
					["source"] = "Ха-Ли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157153,
				},
				[311109] = {
					["source"] = "Ха-Ли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157153,
				},
				[288343] = {
					["type"] = "BUFF",
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["type"] = "BUFF",
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275574] = {
					["source"] = "Подчинительница Са'тресс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134341,
				},
				[210324] = {
					["type"] = "BUFF",
					["source"] = "Whynsko-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307303] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[132169] = {
					["type"] = "DEBUFF",
					["source"] = "Nabeaux-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["type"] = "BUFF",
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Пробуждённый-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[348] = {
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299788] = {
					["type"] = "BUFF",
					["source"] = "Valkor-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248646] = {
					["type"] = "BUFF",
					["source"] = "Мэйкуун-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303211] = {
					["source"] = "Форзимус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272723] = {
					["type"] = "BUFF",
					["source"] = "Valkor-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126786] = {
					["type"] = "DEBUFF",
					["source"] = "Воин Золотого Лотоса",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156129,
				},
				[79833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кенарийская смотрительница",
					["npcID"] = 114297,
				},
				[270481] = {
					["source"] = "Демонический тиран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306795] = {
					["source"] = "Медодав",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[191587] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рободруль",
					["npcID"] = 0,
				},
				[279673] = {
					["type"] = "BUFF",
					["source"] = "Blackheart-Sinstralis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115656] = {
					["source"] = "Сланцевый ползун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135745,
				},
				[115181] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Аусдаэр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["source"] = "Паруминут-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Паакко",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265273] = {
					["type"] = "BUFF",
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Nanøthiel-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300145] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299789] = {
					["type"] = "BUFF",
					["source"] = "Arendali-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2120] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Цив-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[47568] = {
					["type"] = "BUFF",
					["source"] = "Nanøthiel-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Хуньлун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Радослав",
					["npcID"] = 0,
				},
				[205523] = {
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Neelthun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[221527] = {
					["type"] = "DEBUFF",
					["source"] = "Mewtøw-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Neelthun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[114250] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["type"] = "BUFF",
					["source"] = "Onebigpanda-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Kernonza-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дадилка",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211805] = {
					["type"] = "BUFF",
					["source"] = "Kheliell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244813] = {
					["type"] = "DEBUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кирюшатворог-Гордунни",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[42650] = {
					["type"] = "BUFF",
					["source"] = "Pêdro-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135299] = {
					["source"] = "Rudebwoyraw-Sanguino",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Pêdro-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232893] = {
					["source"] = "Arendali-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213243] = {
					["source"] = "Arendali-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118345] = {
					["type"] = "DEBUFF",
					["source"] = "Изначальный элементаль земли",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61056,
				},
				[8936] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Травуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298618] = {
					["source"] = "Нерфирэль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260167] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318065] = {
					["type"] = "BUFF",
					["source"] = "Горгол-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Démoday-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273714] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Калиаста-Гордунни",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279526] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Солкон",
					["npcID"] = 0,
				},
				[34433] = {
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Sacavinght-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Экстен-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267798] = {
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268429] = {
					["type"] = "DEBUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 110340,
				},
				[217694] = {
					["type"] = "DEBUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Анавуайна",
					["npcID"] = 0,
				},
				[221885] = {
					["type"] = "BUFF",
					["source"] = "Nâyuo-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роландайк-Дракономор",
					["npcID"] = 0,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мирадзель",
					["npcID"] = 0,
				},
				[286342] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280713] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пухо-СвежевательДуш",
					["npcID"] = 0,
				},
				[196608] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288675] = {
					["type"] = "BUFF",
					["source"] = "Mercuraucrøm-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285720] = {
					["type"] = "BUFF",
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247121] = {
					["type"] = "DEBUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309061] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[6789] = {
					["source"] = "Blackheart-Sinstralis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307326] = {
					["type"] = "BUFF",
					["source"] = "Уничтожитель из клана Докани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157287,
				},
				[256314] = {
					["source"] = "Миролюбивый дикобраз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156759,
				},
				[213602] = {
					["type"] = "BUFF",
					["source"] = "Сапфирита-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213858] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307327] = {
					["type"] = "BUFF",
					["source"] = "Уничтожитель из клана Докани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157287,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256337] = {
					["source"] = "Миролюбивый дикобраз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156759,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тадорал",
					["npcID"] = 0,
				},
				[280583] = {
					["type"] = "DEBUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293511] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларэль",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Jojolapampa-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Джориш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Артхаус-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272721] = {
					["type"] = "BUFF",
					["source"] = "Kheliell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Великий потусторонний червь",
					["npcID"] = 152550,
				},
				[182387] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зипштэйн-Галакронд",
					["npcID"] = 0,
				},
				[43198] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Соситемуху",
					["npcID"] = 0,
				},
				[211846] = {
					["source"] = "Длинноклык",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139385,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298823] = {
					["type"] = "BUFF",
					["source"] = "Статикс-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308355] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[202602] = {
					["source"] = "Хардтаймзик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Valyyria-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288371] = {
					["type"] = "DEBUFF",
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280210] = {
					["type"] = "BUFF",
					["source"] = "Magrug-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114255] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202347] = {
					["type"] = "DEBUFF",
					["source"] = "Elúrin-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108238] = {
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309063] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[268954] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126188] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163386,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Fiveprocent-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309062] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[299661] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309673] = {
					["type"] = "BUFF",
					["source"] = "Alddaris-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279490] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305249] = {
					["type"] = "DEBUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Volares-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300174] = {
					["source"] = "Иля-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Манабулкин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Дирапт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102547] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113900] = {
					["source"] = "Демонические врата",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[35395] = {
					["source"] = "Fiveprocent-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299664] = {
					["source"] = "Эттром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113899] = {
					["source"] = "Демонические врата",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[115313] = {
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257620] = {
					["source"] = "Юлекмотылек-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317065] = {
					["source"] = "Паладыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Whynsko-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116849] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Эстулан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Эридри-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5302] = {
					["source"] = "Оррох-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300691] = {
					["source"] = "Ширелль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["type"] = "DEBUFF",
					["source"] = "Цецка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["source"] = "Диж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Манабулкин",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279204] = {
					["type"] = "BUFF",
					["source"] = "Whynsko-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273570] = {
					["source"] = "Пеплохвостый бандинот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142454,
				},
				[300693] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309905] = {
					["source"] = "Мастер шпионажа Хул'ах",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157291,
				},
				[116706] = {
					["type"] = "DEBUFF",
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Эстулан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198813] = {
					["type"] = "DEBUFF",
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["source"] = "Исчадие Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 67235,
				},
				[257879] = {
					["source"] = "Усиленный штормом кузнечный голем",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139571,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8122] = {
					["source"] = "Lessien-Madmortem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55173] = {
					["type"] = "BUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69791,
				},
				[8921] = {
					["source"] = "Brittinger-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мейоран",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Каличевски-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Тристам-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Щоош-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137619] = {
					["type"] = "DEBUFF",
					["source"] = "Кашисх-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106839] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199260] = {
					["type"] = "BUFF",
					["source"] = "Lessien-Madmortem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Lessien-Madmortem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17767] = {
					["type"] = "BUFF",
					["source"] = "Korrotrax",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58960,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Васакия-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271105] = {
					["type"] = "BUFF",
					["source"] = "Gadzul-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["type"] = "BUFF",
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[86659] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойлис",
					["npcID"] = 0,
				},
				[89798] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Лорд Виктор Нефарий",
					["npcID"] = 49799,
				},
				[104281] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дидикарка",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[22568] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274420] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Врена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Mercuraucrøm-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271439] = {
					["source"] = "Дирижабль-бомбардировщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129867,
				},
				[84963] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105689] = {
					["source"] = "Мессиядру-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203123] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263858] = {
					["source"] = "Bzz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162150,
				},
				[247675] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Poonnÿ-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Rudebwoyraw-Sanguino",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250208] = {
					["source"] = "Солекаменная черепаха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130160,
				},
				[280404] = {
					["type"] = "DEBUFF",
					["source"] = "Нордикблоу-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стэф-Гордунни",
					["npcID"] = 0,
				},
				[30283] = {
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305252] = {
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206966] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256350] = {
					["source"] = "Детеныш камнекуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141716,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206803] = {
					["type"] = "BUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278703] = {
					["source"] = "Квакух",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140938,
				},
				[55164] = {
					["type"] = "BUFF",
					["source"] = "Тристам-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["source"] = "Талисда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3409] = {
					["type"] = "DEBUFF",
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Айманка-Гордунни",
					["npcID"] = 0,
				},
				[313763] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[263840] = {
					["type"] = "DEBUFF",
					["source"] = "löolöo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 95305,
				},
				[278705] = {
					["source"] = "Квакух",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140938,
				},
				[57723] = {
					["source"] = "Форзимус",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200587] = {
					["type"] = "DEBUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миатали",
					["npcID"] = 0,
				},
				[303438] = {
					["type"] = "DEBUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257104] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Огнеплюйка",
					["npcID"] = 0,
				},
				[281178] = {
					["source"] = "Аризерия-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309055] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[199804] = {
					["type"] = "DEBUFF",
					["source"] = "Okå-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271543] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286031] = {
					["source"] = "Гьятсо-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271544] = {
					["type"] = "DEBUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрикаделечка",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Shnuffle-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285362] = {
					["source"] = "Юфитян-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ферриэль",
					["npcID"] = 0,
				},
				[309801] = {
					["source"] = "Оживший страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153096,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Калиаста-Гордунни",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209785] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309708] = {
					["type"] = "DEBUFF",
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155957,
				},
				[264353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дайрстрэйтс",
					["npcID"] = 0,
				},
				[198069] = {
					["type"] = "BUFF",
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154113] = {
					["source"] = "Голем анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155948,
				},
				[256099] = {
					["source"] = "Северус Изгой",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140997,
				},
				[256355] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Завролиск-камнекус",
					["npcID"] = 141641,
				},
				[308352] = {
					["source"] = "Голем анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155948,
				},
				[276154] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232559] = {
					["type"] = "DEBUFF",
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лазурита",
					["npcID"] = 0,
				},
				[280400] = {
					["type"] = "BUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53822] = {
					["source"] = "Фростпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Хуньлун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271550] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["type"] = "BUFF",
					["source"] = "Ithilwen-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257716] = {
					["source"] = "Саскачебар-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154110] = {
					["source"] = "Голем анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155948,
				},
				[188838] = {
					["source"] = "Mercuraucrøm-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188089] = {
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273465] = {
					["type"] = "BUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196881] = {
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287063] = {
					["type"] = "BUFF",
					["source"] = "Twistmmaniaa-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199042] = {
					["type"] = "DEBUFF",
					["source"] = "Neyssoclap-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287825] = {
					["source"] = "Хьельсунн-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207230] = {
					["source"] = "Дедмент-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Neyssoclap-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129250] = {
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292463] = {
					["type"] = "BUFF",
					["source"] = "Twistmmaniaa-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290512] = {
					["type"] = "DEBUFF",
					["source"] = "Twistmmaniaa-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Римрок-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Alddaris-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["type"] = "BUFF",
					["source"] = "Alddaris-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289467] = {
					["type"] = "BUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Aenøs-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208772] = {
					["type"] = "DEBUFF",
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259491] = {
					["type"] = "DEBUFF",
					["source"] = "Маурицио-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271045] = {
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214621] = {
					["type"] = "DEBUFF",
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204213] = {
					["type"] = "DEBUFF",
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Сетикрист-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Артхаус-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195901] = {
					["type"] = "DEBUFF",
					["source"] = "Пропихун-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеккис-Галакронд",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245102] = {
					["type"] = "DEBUFF",
					["source"] = "Девлинн Стикс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[271559] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306870] = {
					["source"] = "Налетчик из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153094,
				},
				[196742] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaldrik-BurningLegion",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Артхаус-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271049] = {
					["type"] = "DEBUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205369] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196941] = {
					["type"] = "DEBUFF",
					["source"] = "Аразаил-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Фемирезка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Термитошка-Разувий",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315573] = {
					["type"] = "BUFF",
					["source"] = "Grössebaf-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308354] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[313015] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Труботер-Гордунни",
					["npcID"] = 0,
				},
				[114780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аррантара",
					["npcID"] = 0,
				},
				[200166] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Злаябабуся",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Миглена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314689] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тадорал",
					["npcID"] = 0,
				},
				[277706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[186254] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27576] = {
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[309776] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[309768] = {
					["type"] = "DEBUFF",
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153106,
				},
				[85739] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212610] = {
					["type"] = "DEBUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288455] = {
					["source"] = "Ратиар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Йоргенсон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264314] = {
					["type"] = "BUFF",
					["source"] = "Nimscha-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["type"] = "BUFF",
					["source"] = "Nakobéthayo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307311] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[118000] = {
					["source"] = "Нордикблоу-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Артигр-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Nawãk-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валиирка-Азурегос",
					["npcID"] = 0,
				},
				[81262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Период цветения",
					["npcID"] = 47649,
				},
				[258925] = {
					["type"] = "BUFF",
					["source"] = "Zerøtalent-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ланесая",
					["npcID"] = 0,
				},
				[184092] = {
					["source"] = "Вкусняфка-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214975] = {
					["type"] = "DEBUFF",
					["source"] = "Вестиан-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буллик",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Йоксаррун",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эверона",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211845] = {
					["source"] = "Длинноклык",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139385,
				},
				[257135] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Огнеплюйка",
					["npcID"] = 0,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Зейя-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["type"] = "BUFF",
					["source"] = "Релокума-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263897] = {
					["source"] = "Зубастый бобр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116858] = {
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296138] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рободруль",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Бэдкарма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297162] = {
					["source"] = "Волорион",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30151] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[226943] = {
					["type"] = "DEBUFF",
					["source"] = "Patmosis-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278931] = {
					["type"] = "BUFF",
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306873] = {
					["type"] = "DEBUFF",
					["source"] = "Налетчик из клана Цзань-Тень",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153094,
				},
				[309571] = {
					["source"] = "Медодав",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[80240] = {
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Щоош-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Васакия-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Бузотерский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Щоош-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Грохотбу",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Васакия-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24394] = {
					["source"] = "Hati",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151133,
				},
				[275672] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рободруль",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Inshamop-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49028] = {
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Tenezia-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Труботер-Гордунни",
					["npcID"] = 0,
				},
				[264415] = {
					["type"] = "BUFF",
					["source"] = "Elëctrön-Elune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[304370] = {
					["type"] = "BUFF",
					["source"] = "Шадраен-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Нифалин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288075] = {
					["type"] = "BUFF",
					["source"] = "Алантриэль",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262652] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Лисюля-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Несмертельно",
					["npcID"] = 0,
				},
				[57984] = {
					["source"] = "Изначальный элементаль огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[5215] = {
					["source"] = "Барбарысь-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Сэрвор-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187464] = {
					["source"] = "Кельмант-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271071] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[186263] = {
					["source"] = "Кельмант-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300761] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[124219] = {
					["type"] = "BUFF",
					["source"] = "Хэрд-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196099] = {
					["type"] = "BUFF",
					["source"] = "Морфел-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Барбарысь-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271138] = {
					["source"] = "Дирижабль-бомбардировщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136958,
				},
				[270562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кроненбур-Гордунни",
					["npcID"] = 0,
				},
				[256374] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298197] = {
					["source"] = "Вадимирыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280286] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дадилка",
					["npcID"] = 0,
				},
				[295137] = {
					["source"] = "Эстулан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281215] = {
					["type"] = "BUFF",
					["source"] = "Бандосик-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ферниа",
					["npcID"] = 0,
				},
				[134522] = {
					["type"] = "BUFF",
					["source"] = "Бандосик-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112867] = {
					["source"] = "Блэквизард-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213644] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[177054] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джев",
					["npcID"] = 0,
				},
				[268518] = {
					["source"] = "Аризерия-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275702] = {
					["source"] = "Подчинительница Са'тресс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134341,
				},
				[257410] = {
					["source"] = "Фракира-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["source"] = "Эридри-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[172193] = {
					["source"] = "Зара'тик-солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157793,
				},
				[156073] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воланддемор",
					["npcID"] = 0,
				},
				[5211] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295368] = {
					["source"] = "Экзабайт-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69369] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273391] = {
					["source"] = "Взрывоопасная крыса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137126,
				},
				[278244] = {
					["source"] = "Микофеня-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93985] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207289] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287471] = {
					["source"] = "Оррох-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300762] = {
					["type"] = "BUFF",
					["source"] = "Erhymak-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1066] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Друже-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287712] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Сетикрист-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Дэлфиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308189] = {
					["source"] = "Бэдкарма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Tïline-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Валиирка-Азурегос",
					["npcID"] = 0,
				},
				[210065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Клюва-Ясеневыйлес",
					["npcID"] = 0,
				},
				[271083] = {
					["source"] = "Лоялист дома Штормсонгов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130006,
				},
				[275689] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Солджия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["source"] = "Асцендер-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304611] = {
					["source"] = "Хкайфатх",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Сильдеон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253309] = {
					["source"] = "Талисда",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[135700] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Fanell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314585] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["source"] = "Санн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зарничка-Дракономор",
					["npcID"] = 0,
				},
				[315176] = {
					["source"] = "Rudebwoyraw-Sanguino",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110744] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[53390] = {
					["source"] = "Kernonza-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Исудзу",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273415] = {
					["source"] = "Аббатыч-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147833] = {
					["source"] = "Вадимирыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Кельмант-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дадилка",
					["npcID"] = 0,
				},
				[556] = {
					["source"] = "Журавинка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304056] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302307] = {
					["source"] = "Søram-Naxxramas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274426] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315613] = {
					["source"] = "Имрель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[166302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-7000\"",
					["npcID"] = 153897,
				},
				[188499] = {
					["source"] = "Дыхаэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210837] = {
					["source"] = "Килтулис-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279302] = {
					["source"] = "Дедмент-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ластвиспер-Дракономор",
					["npcID"] = 0,
				},
				[279303] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["source"] = "Fiveprocent-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188321] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кайнен",
					["npcID"] = 0,
				},
				[257297] = {
					["source"] = "Пробудительница лоз из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132226,
				},
				[305902] = {
					["source"] = "Оса-медожор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155047,
				},
				[197277] = {
					["source"] = "Fiveprocent-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192081] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Купрумпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кирюшатворог-Гордунни",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Протега-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дайрстрэйтс",
					["npcID"] = 0,
				},
				[313571] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Бладантроп-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Кельмант-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Ксюнякусь-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267545] = {
					["source"] = "Страж улья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131377,
				},
				[262398] = {
					["source"] = "Битва-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Барбарысь-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Дэйдример-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260242] = {
					["source"] = "Талисда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305898] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155047,
				},
				[297993] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Барттлэя",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Мурлиаве",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51271] = {
					["type"] = "BUFF",
					["source"] = "Kheliell-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Редстрайп-Гордунни",
					["npcID"] = 0,
				},
				[298343] = {
					["source"] = "Маргомириам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181346] = {
					["source"] = "Когтистый гризли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139793,
				},
				[262401] = {
					["source"] = "Битва-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ундетрас",
					["npcID"] = 0,
				},
				[163505] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119910] = {
					["source"] = "Blackheart-Sinstralis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Меум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Артхаус-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Бэдкарма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Бузотерский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188070] = {
					["source"] = "Flumper-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102383] = {
					["source"] = "Boommyee-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196770] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрикаделечка",
					["npcID"] = 0,
				},
				[233490] = {
					["source"] = "Мирбен",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207400] = {
					["source"] = "Kernonza-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303345] = {
					["source"] = "Fiveprocent-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хальвард-Разувий",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318187] = {
					["source"] = "Паруминут-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Блаби",
					["npcID"] = 0,
				},
				[213915] = {
					["type"] = "BUFF",
					["source"] = "Gadzul-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Пристэлуны-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278559] = {
					["source"] = "Ияашиа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120679] = {
					["source"] = "Лафия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Hayudo-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Светабука-Азурегос",
					["npcID"] = 0,
				},
				[304372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фиаса",
					["npcID"] = 0,
				},
				[313088] = {
					["source"] = "Сынподруги-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268550] = {
					["type"] = "BUFF",
					["source"] = "Sacripouille-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Твэл-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Ориорна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Магмрм-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213405] = {
					["type"] = "DEBUFF",
					["source"] = "Elanthriel-Antonidas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Врена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Друденс-СвежевательДуш",
					["npcID"] = 0,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Джориш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252071] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265954] = {
					["source"] = "Токаша-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ханталтая-Голдринн",
					["npcID"] = 0,
				},
				[56641] = {
					["source"] = "Талисда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Твэл-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216251] = {
					["source"] = "Kernonza-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["source"] = "Бладантроп-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318216] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Асцендер-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302842] = {
					["source"] = "Саскачебар-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Fiveprocent-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бротион",
					["npcID"] = 0,
				},
				[17364] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Дэлфиния",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286979] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Свиннибасс",
					["npcID"] = 0,
				},
				[123904] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59052] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196834] = {
					["source"] = "Ниисиро-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1159] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136517,
				},
				[51714] = {
					["source"] = "Дедмент-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Саттива-Гордунни",
					["npcID"] = 0,
				},
				[268558] = {
					["source"] = "Талисда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Discjeh-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исдегард",
					["npcID"] = 0,
				},
				[49738] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Светабука-Азурегос",
					["npcID"] = 0,
				},
				[313113] = {
					["source"] = "Дыхаэль-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пушистаяовца",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Мироготонь-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262419] = {
					["source"] = "Битва-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Ульяш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300801] = {
					["source"] = "Гактунгр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147650] = {
					["source"] = "Шаловливый хорек",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143361,
				},
				[6807] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[168835] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Светабука-Азурегос",
					["npcID"] = 0,
				},
				[300802] = {
					["type"] = "BUFF",
					["source"] = "Whynsko-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Викентус-Подземье",
					["npcID"] = 0,
				},
				[229206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Поиксу-ЧерныйШрам",
					["npcID"] = 0,
				},
				[306539] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Дэлфиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Токаша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[688] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[68996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хиирсин",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46924] = {
					["source"] = "Фемирезка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Катиф-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2782] = {
					["source"] = "Арнбьёрн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Urimgor-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281413] = {
					["source"] = "Нардимай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Римрок-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Наласнар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Brittinger-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255858] = {
					["source"] = "Дикий когтерез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136416,
				},
				[49020] = {
					["source"] = "Скирс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315179] = {
					["source"] = "Имрель",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Rudebwoyraw-Sanguino",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Церий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Злаябабуся",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194223] = {
					["source"] = "Арнбьёрн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300809] = {
					["source"] = "Ширелль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["type"] = "BUFF",
					["source"] = "Twistmmaniaa-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80256] = {
					["source"] = "Айханта-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193456] = {
					["source"] = "Хьельсунн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["source"] = "Талисда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Скирс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Лелиенталь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["source"] = "Кейлери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114282] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аниллат",
					["npcID"] = 0,
				},
				[318211] = {
					["type"] = "BUFF",
					["source"] = "Wïlo-KhazModan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279810] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6795] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дримстер",
					["npcID"] = 0,
				},
				[26573] = {
					["source"] = "Эстулан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[39207] = {
					["source"] = "Слуга Нептулона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134343,
				},
				[2565] = {
					["source"] = "Neyssoclap-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299790] = {
					["source"] = "Артенида-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152262] = {
					["type"] = "BUFF",
					["source"] = "Illitchmélie-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Дыхаэль-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22703] = {
					["type"] = "DEBUFF",
					["source"] = "Soraïe-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3716] = {
					["source"] = "Джар'наке",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[280413] = {
					["source"] = "Рибозза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Алэкс-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Мироготонь-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Палибери-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Форзимус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Сынподруги-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ланесая",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Магнетохимия-Гордунни",
					["npcID"] = 0,
				},
				[296211] = {
					["source"] = "Пристэлуны-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255040] = {
					["source"] = "Имрель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34189] = {
					["source"] = "Шаловливый хорек",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143361,
				},
				[162243] = {
					["source"] = "Паакко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Йептель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Лоскутник-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 91308,
				},
				[231895] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["source"] = "Степплер-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120360] = {
					["source"] = "Талисда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Битва-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318219] = {
					["source"] = "Иджарест-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["source"] = "Горай-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Инксс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Айманка-Гордунни",
					["npcID"] = 0,
				},
				[132563] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жорж",
					["npcID"] = 0,
				},
				[302933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Очбко-Азурегос",
					["npcID"] = 0,
				},
				[316744] = {
					["source"] = "Сытыйенот",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Римрок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Имрель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Midrogue-Aszune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Хель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88708,
				},
				[132564] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Адскаяя",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Нерфирэль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32011] = {
					["source"] = "Слуга Нептулона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134343,
				},
				[194582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[51460] = {
					["source"] = "Бладантроп-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Меум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[255852] = {
					["source"] = "Дикий когтерез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136416,
				},
				[285472] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Мурлиаве",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77472] = {
					["source"] = "Kernonza-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[210294] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валрамир-Голдринн",
					["npcID"] = 0,
				},
				[198304] = {
					["source"] = "Вадимирыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[182930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гартхауртхот",
					["npcID"] = 0,
				},
				[281724] = {
					["source"] = "Арътемида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ммайдаен-Голдринн",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Фростпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286835] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Артхаус-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318227] = {
					["source"] = "Llurtzz-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11196] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136517,
				},
				[288546] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[126935] = {
					["source"] = "Килтулис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293664] = {
					["source"] = "Онидзукка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Иреалия",
					["npcID"] = 0,
				},
				[257946] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260249] = {
					["type"] = "BUFF",
					["source"] = "Echeløn-Ysondre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["source"] = "Юлекмотылек-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306459] = {
					["source"] = "Йораг Любитель Молочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155059,
				},
				[288548] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[51533] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187837] = {
					["source"] = "Ниисиро-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Светабука-Азурегос",
					["npcID"] = 0,
				},
				[157644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гейшаопаопа",
					["npcID"] = 0,
				},
				[303390] = {
					["type"] = "BUFF",
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326419] = {
					["source"] = "Гэзил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[197561] = {
					["source"] = "Экзабайт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Бладантроп-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16953] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255096] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фриш",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Паакко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16979] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274837] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Диж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[21169] = {
					["source"] = "Pachiru-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202168] = {
					["source"] = "Фемирезка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шанделар-ЧерныйШрам",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Магага",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299300] = {
					["source"] = "Лисивуля",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293671] = {
					["source"] = "Элерисс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124273] = {
					["type"] = "DEBUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Экзабайт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пружиновкрут",
					["npcID"] = 0,
				},
				[16591] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайенблу",
					["npcID"] = 0,
				},
				[202425] = {
					["type"] = "BUFF",
					["source"] = "Рэдиска-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[63560] = {
					["source"] = "Джулим-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Асцендер-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147362] = {
					["source"] = "Лафия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бразери",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Шивунн-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256223] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[316703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Клёпи",
					["npcID"] = 0,
				},
				[302932] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["source"] = "Артхаус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эверона",
					["npcID"] = 0,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Сильдеон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Каразгарак",
					["npcID"] = 0,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Оррох-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Yuyaa-Shen'dralar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Rudebwoyraw-Sanguino",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285489] = {
					["source"] = "Ратиар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Блаби",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ополоски",
					["npcID"] = 0,
				},
				[309927] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рогадачерри-Гордунни",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Флешфая",
					["npcID"] = 0,
				},
				[281036] = {
					["source"] = "Лафия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Хуньлун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["source"] = "Kernonza-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267492] = {
					["source"] = "Пузырящийся мед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133429,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Lexichi-MarécagedeZangar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
			},
			["non_targeted_alpha_enabled"] = true,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "1",
				["nameplateShowSelf"] = "1",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "0",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "0.74498599767685",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 61,
			["aura_show_aura_by_the_player"] = false,
			["patch_version"] = 9,
			["number_region_first_run"] = true,
			["health_statusbar_texture"] = "Minimalist",
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["indicator_enemyclass"] = true,
		},
	},
}
