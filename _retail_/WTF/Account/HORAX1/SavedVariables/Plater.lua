
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
		["Thalassa - Lightning's Blade"] = "Default",
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
			["buffs_on_aura2"] = true,
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
			["aura_width_personal"] = 20.53905487060547,
			["npc_cache"] = {
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[42720] = {
					"Haut-trotteur", -- [1]
					"Храм Котмогу", -- [2]
				},
				[150253] = {
					"Вооруженный робопаук", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[145185] = {
					"\"Гномогедд-0Н\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[150190] = {
					"Воздушный подавитель ОУ-8", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150222] = {
					"Токсикоид", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150254] = {
					"Утильхаунд", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151657] = {
					"Бомботанк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150159] = {
					"Король Гоббамак", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[151945] = {
					"Hyena", -- [1]
					"Храм Котмогу", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[151659] = {
					"Ракетный танк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144296] = {
					"Танк-паук", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[144298] = {
					"\"Оборонобот II\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150547] = {
					"Ворчун из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[161895] = {
					"Потусторонняя тварь", -- [1]
					"Око Бури", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144301] = {
					"Живые отходы", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[103326] = {
					"Esprit de bête", -- [1]
					"Храм Котмогу", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[153196] = {
					"Ворчун из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150169] = {
					"Токсичный скрытень", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151476] = {
					"\"Взрывотрон Х-80\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150297] = {
					"Мехагонский нормализатор", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[150712] = {
					"Трикси Искрожгучка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[2630] = {
					"Тотем оков земли", -- [1]
					"Око Бури", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[3527] = {
					"Тотем исцеляющего потока", -- [1]
					"Око Бури", -- [2]
				},
				[24207] = {
					"Войско мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[144244] = {
					"\"Платиновый лупцеватор\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[130582] = {
					"Отчаявшийся негодяй", -- [1]
					"Тол Дагор", -- [2]
				},
				[150142] = {
					"Хламометатель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[150397] = {
					"Король Мехагон", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144246] = {
					"КУ-ДЖ0", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150143] = {
					"Перемалыватель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[150396] = {
					"Воздушное судно R-21/X", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144299] = {
					"Защитник мастерской", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[152184] = {
					"Orgrimmar Grunt", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[144300] = {
					"Жительница Мехагона", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[151579] = {
					"Генератор защитного поля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[154161] = {
					"Nogg", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144248] = {
					"Главный машинист Искроточец", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[153377] = {
					"Жижа", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151325] = {
					"Тревогобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[144249] = {
					"\"Омега-крушитель\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150146] = {
					"Шаман из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[127381] = {
					"Ильный краб", -- [1]
					"Тол Дагор", -- [2]
				},
				[150295] = {
					"\"Танкоборец-1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[154758] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150165] = {
					"Жижементаль", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[150160] = {
					"Бугай из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[144303] = {
					"СТРАЖ", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150276] = {
					"Тяжелый хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150292] = {
					"Мехагонский кавалерист", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[155090] = {
					"Анодированный разрядниконосец", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151649] = {
					"\"Оборонобот I\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[53006] = {
					"Тотем духовной связи", -- [1]
					"Око Бури", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153881] = {
					"Conversion Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[89] = {
					"Инфернал", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[59764] = {
					"Тотем целительного прилива", -- [1]
					"Око Бури", -- [2]
				},
				[26125] = {
					"Крысобив", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[163746] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[153755] = {
					"Нано Мегабум", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155094] = {
					"Мехагонский солдат", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[69792] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[150154] = {
					"Завролиск-костеглод", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[136735] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[151812] = {
					"Детектобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Храм Котмогу", -- [2]
				},
				[127497] = {
					"Стражник корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[105419] = {
					"Ужасный василиск", -- [1]
					"Око Бури", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[151658] = {
					"Танк-долгоног", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[152993] = {
					"Garona Halforcen", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127486] = {
					"Офицер корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[130655] = {
					"Бобби Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[144293] = {
					"Переработчик отходов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[127488] = {
					"Маг огня корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1547392935,
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
					["Name"] = "Color Automation [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
					},
					["PlaterCore"] = 1,
					["Time"] = 1554138845,
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
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["version"] = -1,
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1547409079,
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
					["Name"] = "Extra Border [Plater]",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
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
					["Time"] = 1541606242,
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
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1548117267,
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
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
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
					["Time"] = 1548612537,
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
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["version"] = -1,
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1547406548,
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
					["Name"] = "Execute Range [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1548077443,
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
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1547993111,
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
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1549827281,
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
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
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
					["Time"] = 1548354524,
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
					["Name"] = "Combo Points [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
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
					["Time"] = 1548278227,
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
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1552354619,
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
					["Name"] = "Current Target Color [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 272,
					["semver"] = "",
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["version"] = -1,
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1553450957,
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
					["Name"] = "Aura Reorder [Plater]",
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
			["aura_show_crowdcontrol"] = true,
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
				[204262] = {
					["source"] = "Грейгуся-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[300968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Татараман-Гордунни",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287660] = {
					["source"] = "Jeffisko-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[126462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мистермэки-Дракономор",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sipyx-LaCroisadeécarlate",
					["npcID"] = 0,
				},
				[275378] = {
					["type"] = "BUFF",
					["source"] = "Джинблох",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Хардбри-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297901] = {
					["encounterID"] = 2292,
					["source"] = "Струебот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154759,
				},
				[295855] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264119] = {
					["source"] = "Artalla",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318378] = {
					["source"] = "Chaeron-Darksorrow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274357] = {
					["type"] = "BUFF",
					["source"] = "Баамбаам-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295856] = {
					["npcID"] = 152396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Азерот",
					["encounterID"] = 2101,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[298928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anaeru-Khadgar",
					["npcID"] = 0,
				},
				[271287] = {
					["source"] = "Высвобожденная энергия шторма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141123,
				},
				[311214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Форкленд",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Астрация-Ревущийфьорд",
					["npcID"] = 0,
				},
				[247777] = {
					["source"] = "Ozric",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311216] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Слепенькая-Дракономор",
					["npcID"] = 0,
				},
				[51723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[213995] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252386] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[267201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrdryn-Khadgar",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8680] = {
					["type"] = "DEBUFF",
					["source"] = "Тинсмэйден-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274369] = {
					["type"] = "BUFF",
					["source"] = "Пробуждённый-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298940] = {
					["encounterID"] = 2312,
					["source"] = "Нано Мегабум",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153755,
				},
				[252389] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262115] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279490] = {
					["source"] = "Rasierklaue-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300989] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Татараман-Гордунни",
					["npcID"] = 0,
				},
				[278467] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["npcID"] = 133219,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[274373] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[304063] = {
					["source"] = "Шоковый бот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155909,
				},
				[589] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187895] = {
					["source"] = "Часовой дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137985,
				},
				[2379] = {
					["type"] = "BUFF",
					["source"] = "Icenova-Drak'thul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317373] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293827] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[311231] = {
					["source"] = "Кулеп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164862] = {
					["type"] = "BUFF",
					["source"] = "Друидх-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[300996] = {
					["type"] = "BUFF",
					["source"] = "Анодированный каратель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151324,
				},
				[281545] = {
					["type"] = "BUFF",
					["source"] = "Рэгнейра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298950] = {
					["type"] = "BUFF",
					["source"] = "Дётти-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2539] = {
					["source"] = "Virdant-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265168] = {
					["npcID"] = 133219,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
				},
				[5221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[257514] = {
					["source"] = "Пробудившийся мертвец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136490,
				},
				[274383] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vermin Trapper",
					["npcID"] = 130404,
				},
				[2643] = {
					["source"] = "Kärroch-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279503] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[673] = {
					["source"] = "Fluídzz-Bronzebeard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291789] = {
					["source"] = "Кокоджамбец-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197626] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[315336] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161974,
				},
				[256492] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Никарио-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294863] = {
					["type"] = "BUFF",
					["source"] = "Непримечательное растение",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152033,
				},
				[703] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[274389] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Магнитики",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272342] = {
					["source"] = "Bubbling Azerite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145356,
				},
				[272343] = {
					["source"] = "Azerite Stonemelder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145358,
				},
				[202748] = {
					["type"] = "BUFF",
					["source"] = "Мантрат-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морпех корпорации Эшвейнов",
					["npcID"] = 130027,
				},
				[311249] = {
					["source"] = "Mcburf-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[297941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Carrots",
					["npcID"] = 0,
				},
				[79892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96957,
				},
				[258544] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[195072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saltzey-Bloodhoof",
					["npcID"] = 0,
				},
				[261616] = {
					["type"] = "BUFF",
					["source"] = "Кэти Штемпельпупс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132969,
				},
				[196608] = {
					["source"] = "Лжегригорий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[256498] = {
					["source"] = "Cursed Gyrfalcon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133988,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Talorin-Silvermoon",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Noalie-Silvermoon",
					["npcID"] = 0,
				},
				[280542] = {
					["source"] = "Кастеллано",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274400] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дуэлянтка из братства Волнорезов",
					["npcID"] = 129559,
				},
				[280543] = {
					["source"] = "Leprusz-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[293854] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[287712] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280546] = {
					["source"] = "Файт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132627] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Готен",
					["npcID"] = 0,
				},
				[308188] = {
					["source"] = "Сельда-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280547] = {
					["type"] = "BUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Многобров",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308189] = {
					["source"] = "Симан-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3355] = {
					["type"] = "DEBUFF",
					["source"] = "Баамбаам-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315356] = {
					["type"] = "BUFF",
					["source"] = "Вульперский рюкзак",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162001,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Эйкичи",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6789] = {
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279526] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[853] = {
					["source"] = "Шарайна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126476] = {
					["source"] = "Arnoobb-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294884] = {
					["source"] = "Неисправный хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152009,
				},
				[293861] = {
					["source"] = "Противопехотная белка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151613,
				},
				[190984] = {
					["source"] = "Blaez-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264173] = {
					["type"] = "BUFF",
					["source"] = "Пет-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48018] = {
					["type"] = "BUFF",
					["source"] = "Нэйромант-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Chaeron-Darksorrow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272364] = {
					["source"] = "Нефтяная масса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150698,
				},
				[315362] = {
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16591] = {
					["type"] = "BUFF",
					["source"] = "Аурентия-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263153] = {
					["source"] = "Palladia-BurningBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124430] = {
					["source"] = "Yimiko-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178702] = {
					["source"] = "Горьководный солехвост",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131674,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[178703] = {
					["type"] = "BUFF",
					["source"] = "Горьководный иглохват",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131673,
				},
				[273395] = {
					["source"] = "Sister Martha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138863,
				},
				[185358] = {
					["source"] = "Рэгнейра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274420] = {
					["type"] = "BUFF",
					["source"] = "Суперба-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[279541] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eilreven",
					["npcID"] = 0,
				},
				[297969] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сентхеленс-Дракономор",
					["npcID"] = 0,
				},
				[33943] = {
					["type"] = "BUFF",
					["source"] = "Бёрли",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288756] = {
					["source"] = "Дингоо-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[297971] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оцетон",
					["npcID"] = 0,
				},
				[270330] = {
					["source"] = "Azerite Chunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138296,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[274426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[283640] = {
					["type"] = "DEBUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[297974] = {
					["source"] = "Пенни Поппинстук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153373,
				},
				[102167] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мистермэки-Дракономор",
					["npcID"] = 0,
				},
				[262145] = {
					["type"] = "DEBUFF",
					["source"] = "Громила",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150436,
				},
				[1066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Biohaze",
					["npcID"] = 0,
				},
				[270339] = {
					["type"] = "DEBUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257028] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[1122] = {
					["source"] = "Кале-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293887] = {
					["source"] = "Кеаран-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Zimbawie-Bladefist",
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
				[257541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[45334] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273415] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290819] = {
					["source"] = "Kroak-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291843] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295939] = {
					["encounterID"] = 2291,
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[315391] = {
					["type"] = "DEBUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["type"] = "BUFF",
					["source"] = "Трилиион-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315392] = {
					["type"] = "DEBUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Skadej-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274443] = {
					["source"] = "Akia-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Каррас-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[262161] = {
					["source"] = "Kuròg-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297993] = {
					["source"] = "Pickpocket-Khadgar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ильный краб",
					["npcID"] = 127381,
				},
				[5302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[1330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[291853] = {
					["source"] = "Утилька",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150497,
				},
				[272402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cutwater Knife Juggler",
					["npcID"] = 129599,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[291854] = {
					["source"] = "Энтериэл-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87840] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233490] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["source"] = "moky",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103326,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tokol-Mazrigos",
					["npcID"] = 0,
				},
				[291856] = {
					["encounterID"] = 2260,
					["source"] = "Плазменная сфера",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150485,
				},
				[277524] = {
					["source"] = "SI:7 Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146946,
				},
				[311308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Файтсонг-Азурегос",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Arnoobb-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["type"] = "BUFF",
					["source"] = "Мантрат-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294929] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[267288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шаманка Служителей Земли",
					["npcID"] = 135671,
				},
				[311310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мумурлок",
					["npcID"] = 0,
				},
				[5782] = {
					["source"] = "Суперба-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аксон-Дракономор",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Melüzine-KhazModan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302098] = {
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[275481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[285719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fizzandra-Magtheridon",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Диорчик",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тяжелое орудие",
					["npcID"] = 133972,
				},
				[257040] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285720] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эдкрайс-СтражСмерти",
					["npcID"] = 0,
				},
				[12042] = {
					["source"] = "Blodyymarry-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["source"] = "Krobie-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vesena",
					["npcID"] = 0,
				},
				[287769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93985] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291865] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[287771] = {
					["source"] = "Hoenfeng-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298009] = {
					["source"] = "Ханнка-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233496] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Кале-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6358] = {
					["source"] = "Эк-бааре",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58963,
				},
				[298011] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233497] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Аполанария",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280608] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бранталар",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Ugadabunga-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["source"] = "Чавес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233498] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[199203] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233499] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[189990] = {
					["source"] = "7th Legion Despoiler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148541,
				},
				[291874] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225822] = {
					["type"] = "BUFF",
					["source"] = "Alesta-Stormrage",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гвиндолус",
					["npcID"] = 0,
				},
				[54680] = {
					["source"] = "Left",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[236060] = {
					["source"] = "Торбс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280615] = {
					["type"] = "BUFF",
					["source"] = "Chopad-KirinTor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 91472,
				},
				[106785] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[189992] = {
					["source"] = "7th Legion Despoiler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148541,
				},
				[291878] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[184362] = {
					["source"] = "Венран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[10059] = {
					["source"] = "Исшана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Шаманочкаа",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273455] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278574] = {
					["type"] = "DEBUFF",
					["source"] = "Неранол",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16979] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Венран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317478] = {
					["source"] = "Ramkahen Citizen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158835,
				},
				[293932] = {
					["type"] = "DEBUFF",
					["source"] = "Кремес-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жалящий паразит",
					["npcID"] = 127480,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elunalora",
					["npcID"] = 0,
				},
				[207400] = {
					["type"] = "BUFF",
					["source"] = "Chopad-KirinTor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261148] = {
					["source"] = "Грабительница из банды Сталеруких",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150997,
				},
				[212520] = {
					["source"] = "Radapt-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Венран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83242] = {
					["source"] = "Igorek-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7814] = {
					["source"] = "Эк-бааре",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58963,
				},
				[279606] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[132157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gekko-Khadgar",
					["npcID"] = 0,
				},
				[195630] = {
					["source"] = "Aderty-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258079] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сточный злобнокус",
					["npcID"] = 127482,
				},
				[272442] = {
					["source"] = "Alexdra-Terokkar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83243] = {
					["source"] = "Marrokina-Tirion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Piersworgen",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185394] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эскизулька",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[267326] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280635] = {
					["type"] = "BUFF",
					["source"] = "Эйкичи",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300087] = {
					["source"] = "Механик из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150251,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кхотэтцу-Дракономор",
					["npcID"] = 0,
				},
				[83244] = {
					["source"] = "Oropher-Khadgar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204335] = {
					["type"] = "BUFF",
					["source"] = "Бениволум",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148541] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209967] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[260643] = {
					["source"] = "Sleib-Zenedar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272452] = {
					["source"] = "Warlord Zothix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134638,
				},
				[57755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[256038] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[287811] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[272455] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[256039] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[256551] = {
					["npcID"] = 129359,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sawtooth Shark",
					["encounterID"] = 2095,
				},
				[273481] = {
					["source"] = "Шарайна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222256] = {
					["source"] = "Скорпос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Alyak-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256552] = {
					["npcID"] = 129359,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sawtooth Shark",
					["encounterID"] = 2095,
				},
				[2484] = {
					["source"] = "Dworig-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274507] = {
					["npcID"] = 129526,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bilge Rat Swabby",
					["encounterID"] = 2094,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[300102] = {
					["source"] = "Неисправный хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152009,
				},
				[5143] = {
					["source"] = "Sheyma-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[291914] = {
					["encounterID"] = 2260,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Carrots",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Дезнахус-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kerós-Silvermoon",
					["npcID"] = 0,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Авгурей-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59548] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[197690] = {
					["source"] = "Healyourself-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256044] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[271443] = {
					["type"] = "DEBUFF",
					["source"] = "Оказавшийся в ловушке агент",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142072,
				},
				[297037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naoril-Silvermoon",
					["npcID"] = 0,
				},
				[205369] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274516] = {
					["type"] = "DEBUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[275540] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elon-Khadgar",
					["npcID"] = 0,
				},
				[262232] = {
					["source"] = "Healyourself-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodillu-Khadgar",
					["npcID"] = 0,
				},
				[291922] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[228405] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287828] = {
					["type"] = "BUFF",
					["source"] = "Суперба-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2908] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[313424] = {
					["type"] = "BUFF",
					["source"] = "Блибо-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298068] = {
					["source"] = "Макубай-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[56222] = {
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291928] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[302166] = {
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[155722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Uhd-Nordrassil",
					["npcID"] = 0,
				},
				[296024] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291930] = {
					["encounterID"] = 2258,
					["source"] = "Куб металлолома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150520,
				},
				[228409] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287836] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[314455] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161472,
				},
				[160331] = {
					["type"] = "BUFF",
					["source"] = "Этерейя",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314458] = {
					["source"] = "Magnetic Field",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161472,
				},
				[291937] = {
					["encounterID"] = 2258,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[293986] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[200772] = {
					["source"] = "Explorer's League Researcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161938,
				},
				[6807] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312415] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160465,
				},
				[305249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[246330] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314464] = {
					["source"] = "Spirit Drinker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163308,
				},
				[182346] = {
					["type"] = "BUFF",
					["source"] = "Исмори",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305252] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[314466] = {
					["source"] = "Spirit Drinker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163308,
				},
				[267374] = {
					["source"] = "Morwin Gladeheart",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135976,
				},
				[107570] = {
					["source"] = "Dumas-ShatteredHand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291946] = {
					["type"] = "BUFF",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144246,
				},
				[54049] = {
					["source"] = "Шадомо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[255035] = {
					["source"] = "Реймахт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199753] = {
					["source"] = "Вориерка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281711] = {
					["source"] = "Венран",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3716] = {
					["source"] = "Мактаке",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Caered-Khadgar",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205385] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[212552] = {
					["source"] = "Sharkfrown-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264314] = {
					["type"] = "BUFF",
					["source"] = "Aym-Sargeras",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298098] = {
					["source"] = "Похищенный хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153479,
				},
				[198222] = {
					["type"] = "DEBUFF",
					["source"] = "Фатаэль-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279673] = {
					["type"] = "BUFF",
					["source"] = "Бесик-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257088] = {
					["source"] = "Наездник на радикулиске",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148292,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Sengirú-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274555] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soggy Shiprat",
					["npcID"] = 130024,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Doctrinality-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192081] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["source"] = "Doctrinality-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281724] = {
					["type"] = "BUFF",
					["source"] = "Ликвойда-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blikbier-BurningLegion",
					["npcID"] = 0,
				},
				[256578] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Demonwraith",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["source"] = "Taîren-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301177] = {
					["encounterID"] = 2291,
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[296059] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236616] = {
					["source"] = "Black Empire Thaumaturge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157087,
				},
				[17] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[295037] = {
					["type"] = "BUFF",
					["source"] = "Volg-CultedelaRivenoire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257092] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Королева песков",
					["encounterID"] = 2101,
				},
				[188501] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Велрик",
					["npcID"] = 0,
				},
				[294015] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[300159] = {
					["source"] = "Тяжелый хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150276,
				},
				[318587] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[206930] = {
					["source"] = "Hilataa-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291972] = {
					["type"] = "DEBUFF",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144246,
				},
				[280711] = {
					["source"] = "Исмаил-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291973] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[115767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[291974] = {
					["encounterID"] = 2260,
					["source"] = "Король Мехагон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150397,
				},
				[280713] = {
					["type"] = "BUFF",
					["source"] = "Сагадор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257608] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[268429] = {
					["type"] = "DEBUFF",
					["source"] = "Грозныйтуч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295047] = {
					["source"] = "Gorron-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[231504] = {
					["source"] = "Монкдтктив-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[244813] = {
					["source"] = "Nanì-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258634] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг огня корпорации Эшвейнов",
					["npcID"] = 127488,
				},
				[294027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[300171] = {
					["source"] = "Тяжелый хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150276,
				},
				[281744] = {
					["source"] = "Таланатэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257100] = {
					["source"] = "Наездник на радикулиске",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148292,
				},
				[197211] = {
					["type"] = "BUFF",
					["source"] = "Грозныйтуч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[300174] = {
					["source"] = "Илендираен-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296080] = {
					["type"] = "BUFF",
					["source"] = "Воздушный подавитель ОУ-8",
					["encounterID"] = 2291,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150190,
				},
				[272534] = {
					["npcID"] = 136539,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Booty Fanatic",
					["encounterID"] = 2095,
				},
				[199260] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crackshot",
					["npcID"] = 126918,
				},
				[300177] = {
					["source"] = "Тяжелый хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150276,
				},
				[257103] = {
					["source"] = "Тинфиззл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Ибилех-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Hilataa-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206940] = {
					["source"] = "Bloodripper-Haomarush",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261711] = {
					["source"] = "Faithless Sentry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129007,
				},
				[258128] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громила из братства Стальных Волн",
					["npcID"] = 130025,
				},
				[44457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[257617] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Королева песков",
					["encounterID"] = 2101,
				},
				[264352] = {
					["source"] = "Еаши-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Haastia-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[256083] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[6360] = {
					["type"] = "DEBUFF",
					["source"] = "Эк-бааре",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58963,
				},
				[191587] = {
					["source"] = "Happyseal-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297116] = {
					["source"] = "Pago",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298140] = {
					["source"] = "Сангнар-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299164] = {
					["type"] = "BUFF",
					["source"] = "Механоцикл",
					["encounterID"] = 2312,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153756,
				},
				[300188] = {
					["source"] = "Вооруженный робопаук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150253,
				},
				[297117] = {
					["source"] = "Милаяевочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257620] = {
					["source"] = "Райсгул-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[217694] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[293024] = {
					["source"] = "Исшана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мародер из братства Трюмных Крыс",
					["npcID"] = 127485,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pulrina-Khadgar",
					["npcID"] = 0,
				},
				[257622] = {
					["type"] = "BUFF",
					["source"] = "Райсгул-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298146] = {
					["type"] = "BUFF",
					["source"] = "Gynækologen-Outland",
					["encounterID"] = 2096,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89157] = {
					["source"] = "Danela",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34477] = {
					["type"] = "BUFF",
					["source"] = "Лортирон-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213602] = {
					["type"] = "BUFF",
					["source"] = "Пробуждённый-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272554] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2095,
				},
				[14030] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[289959] = {
					["type"] = "DEBUFF",
					["source"] = "Питониво-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201318] = {
					["type"] = "BUFF",
					["source"] = "Ahu-Frostwolf",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[213092] = {
					["source"] = "K'thir Thoughtstealer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156576,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acervulinid-Silvermoon",
					["npcID"] = 0,
				},
				[297128] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[194153] = {
					["source"] = "Blaez-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263345] = {
					["npcID"] = 134025,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тяжелое орудие",
					["encounterID"] = 2104,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[263346] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270513] = {
					["source"] = "Enraged Azerite Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146917,
				},
				[7384] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[294061] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[297133] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[282801] = {
					["source"] = "\"Платиновый лупцеватор\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144244,
				},
				[294064] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[300207] = {
					["source"] = "Вооруженный робопаук",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150253,
				},
				[255070] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278710] = {
					["type"] = "BUFF",
					["source"] = "Зинэур-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234084] = {
					["source"] = "Iliada-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Bloodripper-Haomarush",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257119] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Инфернал",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[255072] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ифюсэйсоу",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жареный-Галакронд",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[289976] = {
					["source"] = "Honorbound Berserker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149133,
				},
				[270526] = {
					["source"] = "Ричард Торнсейл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136474,
				},
				[271550] = {
					["type"] = "BUFF",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[86603] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149007,
				},
				[294073] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Druidyguy-Mazrigos",
					["npcID"] = 0,
				},
				[315573] = {
					["type"] = "BUFF",
					["source"] = "Крот-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121411] = {
					["source"] = "Ninehundred-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Кале-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215661] = {
					["source"] = "Eastcomer-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281791] = {
					["type"] = "BUFF",
					["source"] = "Фераласс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107079] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275651] = {
					["source"] = "Обезумевший трогг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149847,
				},
				[281794] = {
					["type"] = "BUFF",
					["source"] = "Фераласс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256101] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[260708] = {
					["source"] = "Sleib-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135299] = {
					["type"] = "DEBUFF",
					["source"] = "Баамбаам-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Funnypoop-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271559] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Трис-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302272] = {
					["encounterID"] = 2291,
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[258150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морской колдун из братства Трюмных Крыс",
					["npcID"] = 130026,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[277703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[302274] = {
					["encounterID"] = 2291,
					["source"] = "\"Танкоборец-1\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150295,
				},
				[86606] = {
					["source"] = "Saltspine Krolusk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136553,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Хиина-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["type"] = "BUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[255593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бухтовый крепкозуб",
					["npcID"] = 123226,
				},
				[256105] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[2565] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["encounterID"] = 2093,
				},
				[20572] = {
					["type"] = "BUFF",
					["source"] = "Мяснойкисель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["type"] = "BUFF",
					["source"] = "Аздауд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302279] = {
					["encounterID"] = 2291,
					["source"] = "\"Танкоборец-1\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150295,
				},
				[256106] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[49966] = {
					["source"] = "Чешуешкурые",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123095,
				},
				[296138] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beldur",
					["npcID"] = 0,
				},
				[297162] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[255595] = {
					["source"] = "Saltspine Krolusk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136553,
				},
				[59052] = {
					["source"] = "Remiry-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258155] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ancient Protector",
					["npcID"] = 128285,
				},
				[78674] = {
					["source"] = "Blaez-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185470] = {
					["type"] = "BUFF",
					["source"] = "Жагернаут-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Поющая сирена",
					["npcID"] = 126440,
				},
				[312523] = {
					["source"] = "Burbling Fleshbeast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156566,
				},
				[280787] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[78675] = {
					["type"] = "DEBUFF",
					["source"] = "Беспорядок-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256622] = {
					["source"] = "Фириндрелла",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Jaerae-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312526] = {
					["source"] = "Black Empire Summoner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161141,
				},
				[109132] = {
					["source"] = "Августиния",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279767] = {
					["source"] = "Tala Rockwind",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140782,
				},
				[288981] = {
					["type"] = "BUFF",
					["source"] = "Ёррш-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55342] = {
					["type"] = "BUFF",
					["source"] = "Pmargar-Minahonda",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[64044] = {
					["source"] = "Исмаил-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298197] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[258672] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crackshot",
					["npcID"] = 126918,
				},
				[294103] = {
					["source"] = "Ракетный танк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151659,
				},
				[264415] = {
					["type"] = "BUFF",
					["source"] = "Hawkimus-Eonar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277724] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[24732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хардоникс-Гордунни",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Jeffisko-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saranus-Ragnaros",
					["npcID"] = 0,
				},
				[295130] = {
					["source"] = "Детектобот",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151812,
				},
				[288988] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294107] = {
					["source"] = "Утильхаунд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150254,
				},
				[264420] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[95826] = {
					["source"] = "Страж дома Уэйкрестов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137573,
				},
				[259188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 127497,
				},
				[277731] = {
					["source"] = "Thymian-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185479] = {
					["type"] = "BUFF",
					["source"] = "Синдраб",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acervulinid-Silvermoon",
					["npcID"] = 0,
				},
				[105809] = {
					["source"] = "Drobbas-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элементаль воды",
					["npcID"] = 78116,
				},
				[131222] = {
					["source"] = "Starack-Khadgar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275689] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Kahuna-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302307] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[123981] = {
					["type"] = "DEBUFF",
					["source"] = "Еретикхорус-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Fastboye-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Боец из братства Волнорезов",
					["npcID"] = 131112,
				},
				[313571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Совинская-Гордунни",
					["npcID"] = 0,
				},
				[33206] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Шарайна",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[157331] = {
					["source"] = "Primal Storm Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 77942,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Шпронька",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257659] = {
					["source"] = "Каменный голем",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137708,
				},
				[300267] = {
					["source"] = "Нитродин-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278769] = {
					["type"] = "BUFF",
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30108] = {
					["source"] = "Офник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104276] = {
					["type"] = "BUFF",
					["source"] = "Лакта-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96954,
				},
				[44212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Methanas-Silvermoon",
					["npcID"] = 0,
				},
				[305388] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bopmejonas",
					["npcID"] = 0,
				},
				[300270] = {
					["source"] = "Беспорядок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268534] = {
					["source"] = "Valkren-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Shatari",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176785] = {
					["type"] = "BUFF",
					["source"] = "Кугарэ-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281844] = {
					["type"] = "BUFF",
					["source"] = "Sengirú-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[303344] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[303345] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Скайскрим-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305393] = {
					["type"] = "DEBUFF",
					["source"] = "\"Платиновый лупцеватор\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144244,
				},
				[301299] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294133] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Делягин-Азурегос",
					["npcID"] = 0,
				},
				[305395] = {
					["type"] = "BUFF",
					["source"] = "Периплатипус",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269564] = {
					["source"] = "Purplecherry-Bronzebeard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Biohaze",
					["npcID"] = 0,
				},
				[314611] = {
					["source"] = "Машинист-мятежник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159758,
				},
				[291065] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151709,
				},
				[213644] = {
					["source"] = "Рид-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203407] = {
					["type"] = "BUFF",
					["source"] = "Naktoicx-Frostwolf",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торбс",
					["npcID"] = 0,
				},
				[172183] = {
					["source"] = "Верховный маг Накада",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82564,
				},
				[280830] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2101,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[172184] = {
					["source"] = "Верховный маг Накада",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82564,
				},
				[106839] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268547] = {
					["source"] = "Valkren-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Беовульфан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Hantrax-Kael'thas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306427] = {
					["source"] = "Gunthord-AeriePeak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48181] = {
					["source"] = "Infectée-Elune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279810] = {
					["source"] = "Kärroch-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268550] = {
					["type"] = "BUFF",
					["source"] = "Ачивкодав",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295168] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[210065] = {
					["source"] = "Иггдрас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295169] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[306431] = {
					["source"] = "Gng-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291075] = {
					["source"] = "Заряженный вредобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151665,
				},
				[54452] = {
					["type"] = "BUFF",
					["source"] = "Рийнери",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276743] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["source"] = "Thran-Saurfang",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300291] = {
					["source"] = "Темперенс-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255112] = {
					["source"] = "Ярдли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Иманиша-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324862] = {
					["source"] = "Санринда-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310530] = {
					["source"] = "Huuhailija-Bladefist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nandrei",
					["npcID"] = 0,
				},
				[48438] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[255625] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128474,
				},
				[245388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[213652] = {
					["source"] = "Толери-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300296] = {
					["source"] = "Перемалыватель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150143,
				},
				[261769] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267537] = {
					["source"] = "Ugadabunga-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157348] = {
					["source"] = "Primal Storm Elemental",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77942,
				},
				[124503] = {
					["source"] = "Иманиша-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302348] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295182] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[279827] = {
					["type"] = "BUFF",
					["source"] = "Отец Тимоти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143581,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[279828] = {
					["type"] = "BUFF",
					["source"] = "Жрица Лиллиана",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143582,
				},
				[280852] = {
					["source"] = "Thymian-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[295186] = {
					["source"] = "Ататита-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[290068] = {
					["type"] = "DEBUFF",
					["source"] = "Hammer Shark",
					["npcID"] = 129448,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2095,
				},
				[1459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[296211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298259] = {
					["type"] = "DEBUFF",
					["source"] = "Ядовитая лужа",
					["encounterID"] = 2292,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153386,
				},
				[293142] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Kelami-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[288024] = {
					["type"] = "BUFF",
					["source"] = "Толери-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280858] = {
					["type"] = "BUFF",
					["source"] = "Авендил",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Lukasplay-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114780] = {
					["source"] = "Rikiray-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1543] = {
					["source"] = "Зсмвтрапе-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312597] = {
					["source"] = "Voidwarped Neferset",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156185,
				},
				[280861] = {
					["type"] = "BUFF",
					["source"] = "Taîren-Aegwynn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Волшебная-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280862] = {
					["type"] = "BUFF",
					["source"] = "Taîren-Aegwynn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[99] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198817] = {
					["source"] = "Sleib-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Turenbo-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Kuròg-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Filipas-Doomhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198819] = {
					["source"] = "Sleib-Zenedar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Банчорай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244888] = {
					["source"] = "Обезумевший трогг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149847,
				},
				[188070] = {
					["source"] = "Ибилех-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[272678] = {
					["source"] = "Вэримар-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324890] = {
					["source"] = "Илидзан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[299297] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кориуз-Азурегос",
					["npcID"] = 0,
				},
				[324891] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Риат",
					["npcID"] = 0,
				},
				[280870] = {
					["type"] = "BUFF",
					["source"] = "Чэф",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299298] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tequilabrown-Silvermoon",
					["npcID"] = 0,
				},
				[199845] = {
					["type"] = "DEBUFF",
					["source"] = "Ментальный демон",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 101398,
				},
				[294180] = {
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151773,
				},
				[258199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crusher",
					["npcID"] = 130400,
				},
				[316703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Teddyrukspin-Khadgar",
					["npcID"] = 0,
				},
				[315681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Вспоменика",
					["npcID"] = 0,
				},
				[297254] = {
					["encounterID"] = 2290,
					["source"] = "Король Гоббамак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150159,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272685] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297256] = {
					["encounterID"] = 2290,
					["source"] = "Король Гоббамак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150159,
				},
				[281900] = {
					["source"] = "Щелкозуб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150785,
				},
				[299304] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blikbier-BurningLegion",
					["npcID"] = 0,
				},
				[297257] = {
					["encounterID"] = 2290,
					["source"] = "Король Гоббамак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150159,
				},
				[253595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рандомчорт",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[255131] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298282] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оллайя-Дракономор",
					["npcID"] = 0,
				},
				[309544] = {
					["source"] = "Black Empire Summoner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156565,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[43196] = {
					["type"] = "BUFF",
					["source"] = "Акесо-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[324902] = {
					["source"] = "Liloxyvert-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297261] = {
					["encounterID"] = 2290,
					["source"] = "Король Гоббамак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150159,
				},
				[114018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[313643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[298287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ласселант",
					["npcID"] = 0,
				},
				[294193] = {
					["source"] = "Дреаниса-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[162997] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbilo-Silvermoon",
					["npcID"] = 0,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[324907] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вестница-Азурегос",
					["npcID"] = 0,
				},
				[255647] = {
					["encounterID"] = 2290,
					["source"] = "Шарайна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299314] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лихорадит",
					["npcID"] = 0,
				},
				[314671] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мумурлок",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Happyseal-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Бенисонкрик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299316] = {
					["source"] = "Этопанда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199854] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294198] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["encounterID"] = 2094,
				},
				[32736] = {
					["source"] = "7th Legion Swordsman",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149370,
				},
				[8212] = {
					["source"] = "Knytt-Azuremyst",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Drobbas-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53563] = {
					["type"] = "BUFF",
					["source"] = "Всехилящий-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gissy-Bloodhoof",
					["npcID"] = 0,
				},
				[2094] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["encounterID"] = 2095,
				},
				[314678] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мумурлок",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Kroak-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282943] = {
					["type"] = "DEBUFF",
					["source"] = "Таранный поршень",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153203,
				},
				[234153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дидилия-Гром",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зелисвет-Азурегос",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[81262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Период цветения",
					["npcID"] = 47649,
				},
				[281923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252071] = {
					["type"] = "BUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Силанэль-Дракономор",
					["npcID"] = 0,
				},
				[2374] = {
					["source"] = "Shortshammy-Azuremyst",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157375] = {
					["source"] = "Primal Storm Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 77942,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[313663] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296260] = {
					["encounterID"] = 2291,
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119910] = {
					["source"] = "Infectée-Elune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Harzerkäse",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80240] = {
					["type"] = "DEBUFF",
					["source"] = "Бесик-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61243] = {
					["source"] = "Торбс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluffymuffin-Khadgar",
					["npcID"] = 0,
				},
				[270670] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288074] = {
					["source"] = "Скорпос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5211] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120679] = {
					["source"] = "Миридана-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[17253] = {
					["source"] = "Left",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[167105] = {
					["source"] = "Sleib-Zenedar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Simius",
					["npcID"] = 0,
				},
				[291150] = {
					["source"] = "Шейнпуно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wildish-Bloodhoof",
					["npcID"] = 0,
				},
				[272723] = {
					["source"] = "Remiry-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Boulder Caster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137078,
				},
				[116841] = {
					["source"] = "Cuddlemonk-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[80498] = {
					["source"] = "Oleria-AeriePeak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2782] = {
					["source"] = "Religiousbob-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[53822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Столярный-Гордунни",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Pleasehelpme-Vol'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213691] = {
					["type"] = "DEBUFF",
					["source"] = "Райсгул-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223929] = {
					["source"] = "Donpedroser-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272733] = {
					["type"] = "BUFF",
					["source"] = "Райсгул-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хардоникс-Гордунни",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Rulpad",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[288091] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285020] = {
					["encounterID"] = 2257,
					["source"] = "\"Платиновый лупцеватор\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144244,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[116844] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pulrina-Khadgar",
					["npcID"] = 0,
				},
				[271713] = {
					["source"] = "Enraged Azerite Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146917,
				},
				[278880] = {
					["source"] = "Терминатори-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80246] = {
					["source"] = "Oleria-AeriePeak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[253110] = {
					["source"] = "Gorron-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фионе-Азурегос",
					["npcID"] = 0,
				},
				[115310] = {
					["encounterID"] = 2290,
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273767] = {
					["source"] = "7th Legion Infantryman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144959,
				},
				[6795] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221887] = {
					["type"] = "BUFF",
					["source"] = "Шарайна",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276840] = {
					["source"] = "Ashleigh-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[279913] = {
					["source"] = "Кале-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Малука-ЧерныйШрам",
					["npcID"] = 0,
				},
				[297318] = {
					["type"] = "BUFF",
					["source"] = "Украденный хламобот",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153172,
				},
				[298343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312677] = {
					["source"] = "Black Empire Conjurer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160463,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Charlesgibbs",
					["npcID"] = 0,
				},
				[312679] = {
					["source"] = "K'thir Doomsayer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156572,
				},
				[301418] = {
					["source"] = "Механизированный паук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154448,
				},
				[263540] = {
					["type"] = "BUFF",
					["source"] = "Аватара Золотала",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129343,
				},
				[115313] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270707] = {
					["source"] = "Soul Goliath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137665,
				},
				[256700] = {
					["source"] = "Фириндрелла",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116849] = {
					["encounterID"] = 2290,
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197835] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Тюфель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269687] = {
					["source"] = "Enraged Azerite Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146917,
				},
				[312685] = {
					["source"] = "Black Warden Rhothkozz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158790,
				},
				[304496] = {
					["source"] = "Защитница Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151828,
				},
				[260286] = {
					["type"] = "BUFF",
					["source"] = "Quickstike-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312687] = {
					["source"] = "Black Warden Rhothkozz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158790,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[188625] = {
					["source"] = "Часовой дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137985,
				},
				[259264] = {
					["source"] = "Снежный йети",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127682,
				},
				[259776] = {
					["type"] = "DEBUFF",
					["source"] = "Плененная буря",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128586,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торбс",
					["npcID"] = 0,
				},
				[278908] = {
					["source"] = "Huntarded-Khadgar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213708] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Иманиша-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295290] = {
					["source"] = "Эльди-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аунола-Дракономор",
					["npcID"] = 0,
				},
				[278911] = {
					["source"] = "Йолька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68992] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270722] = {
					["source"] = "Curse-bound Soul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137671,
				},
				[214222] = {
					["source"] = "Drobbas-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260291] = {
					["source"] = "7th Legion Shieldbreaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149384,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Шпронька",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Venomous Coilscale",
					["npcID"] = 130232,
				},
				[257732] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blacktooth Knuckleduster",
					["npcID"] = 129547,
				},
				[196819] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[96890] = {
					["source"] = "Неуромансер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[300414] = {
					["source"] = "Перемалыватель из племени Хламоедов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150143,
				},
				[201427] = {
					["source"] = "Kaledemoon-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201939] = {
					["source"] = "Harrycherry-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278917] = {
					["source"] = "Nitsuj-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54212] = {
					["type"] = "BUFF",
					["source"] = "Бастиннда",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["source"] = "Иманиша-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256199] = {
					["type"] = "BUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[31589] = {
					["source"] = "Sheyma-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257223] = {
					["source"] = "Чащобная дворняга",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134080,
				},
				[13877] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214226] = {
					["source"] = "Ночнорожденный-посланник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135864,
				},
				[256200] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[257736] = {
					["type"] = "BUFF",
					["source"] = "Irontide Stormcaller",
					["npcID"] = 126919,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[316801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Дээжавю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256201] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[5116] = {
					["type"] = "DEBUFF",
					["source"] = "Простойслейв-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Аспектжизни-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193753] = {
					["type"] = "BUFF",
					["source"] = "Сандела",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300424] = {
					["source"] = "Бугай из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150160,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Венран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68996] = {
					["source"] = "Лавкравт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heartwood Soldier",
					["npcID"] = 134211,
				},
				[277904] = {
					["source"] = "Филданэль-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275857] = {
					["source"] = "Kelami-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185565] = {
					["source"] = "Thymian-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[348] = {
					["source"] = "Ченгарз-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278931] = {
					["source"] = "Кале-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[257741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacktooth Scrapper",
					["npcID"] = 129529,
				},
				[22568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gekko-Khadgar",
					["npcID"] = 0,
				},
				[355] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[115834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5740] = {
					["source"] = "Бесик-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294290] = {
					["source"] = "Переработчик отходов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144293,
				},
				[258254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murphy",
					["npcID"] = 130467,
				},
				[275863] = {
					["source"] = "Bustersmor-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Carrots",
					["npcID"] = 0,
				},
				[312720] = {
					["source"] = "Faceless Dominator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160550,
				},
				[300436] = {
					["source"] = "Шаман из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150146,
				},
				[297365] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алтидора",
					["npcID"] = 0,
				},
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[192225] = {
					["source"] = "Хуперлол-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299415] = {
					["type"] = "BUFF",
					["source"] = "Разрядниконосец мятежников",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159751,
				},
				[271774] = {
					["source"] = "Sandbinder Sodir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148494,
				},
				[264608] = {
					["npcID"] = 133219,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
				},
				[198368] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271777] = {
					["source"] = "Sandbinder Sodir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148494,
				},
				[257747] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blacktooth Brute",
					["npcID"] = 129548,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[316823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[304539] = {
					["source"] = "Защитник экспедиции",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152147,
				},
				[408] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[205025] = {
					["type"] = "BUFF",
					["source"] = "Моото",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Торбс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[316826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Twisted Appendage",
					["npcID"] = 162764,
				},
				[212704] = {
					["source"] = "Chaeron-Darksorrow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258773] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[210657] = {
					["source"] = "Lukasplay-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108416] = {
					["type"] = "BUFF",
					["source"] = "Пет-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303520] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["source"] = "Рэгнейра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281000] = {
					["source"] = "Скиазар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299428] = {
					["type"] = "BUFF",
					["source"] = "Анодированный часовой",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154152,
				},
				[60103] = {
					["source"] = "Дезнахус-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232670] = {
					["source"] = "Офник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[297382] = {
					["type"] = "BUFF",
					["source"] = "Украденный хламобот",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153172,
				},
				[210660] = {
					["source"] = "Lukasplay-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274860] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Enforcer",
					["npcID"] = 129602,
				},
				[292264] = {
					["encounterID"] = 2260,
					["source"] = "\"Омега-крушитель\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144249,
				},
				[196840] = {
					["source"] = "Kelami-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisted Appendage",
					["npcID"] = 162764,
				},
				[297384] = {
					["source"] = "Доминатр-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[299432] = {
					["type"] = "BUFF",
					["source"] = "Неисправный утильхаунд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151301,
				},
				[292267] = {
					["type"] = "DEBUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[121471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[295339] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[273842] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273843] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299437] = {
					["source"] = "Неисправный утильхаунд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151301,
				},
				[210152] = {
					["source"] = "Rerollex-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298414] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эдельхира-Дракономор",
					["npcID"] = 0,
				},
				[256221] = {
					["source"] = "Windmender-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15286] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22570] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[256735] = {
					["source"] = "Эрталь-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301490] = {
					["type"] = "BUFF",
					["source"] = "Паучиха на прокачку",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153000,
				},
				[34767] = {
					["source"] = "Néd-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63560] = {
					["type"] = "BUFF",
					["source"] = "Мяснойкисель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacktetra",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эдстериона",
					["npcID"] = 0,
				},
				[299445] = {
					["source"] = "Ярмина-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[528] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270785] = {
					["source"] = "Soul Goliath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137665,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rbu-Bloodhoof",
					["npcID"] = 0,
				},
				[236776] = {
					["source"] = "Крот-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Хидаан-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301499] = {
					["type"] = "BUFF",
					["source"] = "Паучиха на прокачку",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153000,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обора",
					["npcID"] = 0,
				},
				[183542] = {
					["source"] = "Часовая дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137985,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295359] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151660,
				},
				[298431] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275909] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[199412] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2367] = {
					["source"] = "Fluídzz-Bronzebeard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295362] = {
					["source"] = "Аурентия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[256231] = {
					["type"] = "BUFF",
					["source"] = "Коррисада-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51533] = {
					["source"] = "Pago",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Тэок-Гордунни",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299460] = {
					["source"] = "Стрелок из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150250,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эжель-Азурегос",
					["npcID"] = 0,
				},
				[295367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[298439] = {
					["source"] = "Опийюм-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295368] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Чэф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281036] = {
					["source"] = "Kroak-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302535] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155493,
				},
				[49998] = {
					["source"] = "Bloodripper-Haomarush",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58316] = {
					["source"] = "Fiercemonk-Mazrigos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5277] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2095,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[101260] = {
					["source"] = "Darkmoon Faire Mystic Mage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 54334,
				},
				[54861] = {
					["type"] = "BUFF",
					["source"] = "Венер-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scrimshaw Racketeer",
					["npcID"] = 144213,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[294349] = {
					["source"] = "Живые отходы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144301,
				},
				[295373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[49359] = {
					["source"] = "Ардентус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262617] = {
					["source"] = "Caravan Leader",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148550,
				},
				[314829] = {
					["source"] = "High Guard Reshef",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158528,
				},
				[295378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299474] = {
					["source"] = "Завролиск-костеглод",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150154,
				},
				[264667] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 55946,
				},
				[257775] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тихолап из братства Трюмных Крыс",
					["npcID"] = 129550,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Весс-Азурегос",
					["npcID"] = 0,
				},
				[740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298452] = {
					["type"] = "DEBUFF",
					["source"] = "Питониво-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loa-DarkmoonFaire",
					["npcID"] = 0,
				},
				[213243] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275931] = {
					["source"] = "Nazhar-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279003] = {
					["source"] = "Боец авангарда Орды",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142082,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[257777] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[295384] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20589] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Demonwraith",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270818] = {
					["source"] = "Soul Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137665,
				},
				[271842] = {
					["source"] = "Hired Caravan Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148530,
				},
				[312793] = {
					["source"] = "Хуперлол-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[175880] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[818] = {
					["source"] = "Virdant-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Грозныйтуч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273892] = {
					["source"] = "Саблеклык",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129337,
				},
				[147728] = {
					["source"] = "Haastia-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Smalltownboy-Bloodhoof",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гвиндолус",
					["npcID"] = 0,
				},
				[303584] = {
					["type"] = "BUFF",
					["source"] = "Толери-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Semerkhet-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50769] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300514] = {
					["source"] = "Шаман из племени Хламоедов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150146,
				},
				[247546] = {
					["source"] = "7th Legion Shieldbreaker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149384,
				},
				[304611] = {
					["source"] = "Ёжвкумаре",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257272] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["npcID"] = 129743,
				},
				[257784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bilge Rat Brinescale",
					["npcID"] = 129600,
				},
				[304612] = {
					["source"] = "Ёжвкумаре",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302565] = {
					["type"] = "DEBUFF",
					["source"] = "Демнюга-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Wartramp-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257785] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[147732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[106898] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299496] = {
					["source"] = "Стрелок из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150250,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Schnïtzel-Silvermoon",
					["npcID"] = 0,
				},
				[298473] = {
					["encounterID"] = 2290,
					["source"] = "Ворчун из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153196,
				},
				[58448] = {
					["type"] = "BUFF",
					["source"] = "Акесо-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299498] = {
					["source"] = "Мехагонский солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155094,
				},
				[7421] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wiingmann-Silvermoon",
					["npcID"] = 0,
				},
				[300525] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150142,
				},
				[255741] = {
					["source"] = "Faithless Aggressor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128660,
				},
				[299502] = {
					["source"] = "Мехагонский солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155094,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Remiry-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Занозавбок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257278] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[50259] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saucebaby-Bloodhoof",
					["npcID"] = 0,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[298485] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151660,
				},
				[213771] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[1022] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[257793] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[299511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Патриотт",
					["npcID"] = 0,
				},
				[1044] = {
					["type"] = "BUFF",
					["source"] = "Паладрик-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196881] = {
					["source"] = "Ибилех-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1064] = {
					["source"] = "Магнитики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126354] = {
					["source"] = "Ramkahen Citizen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157795,
				},
				[289277] = {
					["source"] = "Донпумпон-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298491] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151660,
				},
				[210191] = {
					["source"] = "Авендил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299516] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257284] = {
					["source"] = "Лихачок-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157981] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[236298] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2291,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["encounterID"] = 2093,
				},
				[22703] = {
					["type"] = "DEBUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[236299] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[202004] = {
					["type"] = "BUFF",
					["source"] = "Грозныйтуч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77472] = {
					["source"] = "Магнитики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261894] = {
					["source"] = "Dust Devil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148495,
				},
				[283143] = {
					["type"] = "BUFF",
					["source"] = "Магнитохват",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145560,
				},
				[300547] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150142,
				},
				[257800] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Otis",
					["npcID"] = 129441,
				},
				[299525] = {
					["source"] = "Стрелок из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150250,
				},
				[292359] = {
					["source"] = "Астрация-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wulie-Silvermoon",
					["npcID"] = 0,
				},
				[299526] = {
					["source"] = "Доминатр-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Kroak-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Офицер корпорации Эшвейнов",
					["npcID"] = 127486,
				},
				[292361] = {
					["source"] = "Алкидивер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Talorin-Silvermoon",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Dumas-ShatteredHand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116888] = {
					["type"] = "DEBUFF",
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["type"] = "BUFF",
					["source"] = "Жагернаут-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мистермэки-Дракономор",
					["npcID"] = 0,
				},
				[207640] = {
					["type"] = "BUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267798] = {
					["source"] = "Мияфудзи-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258317] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тюремщик корпорации Эшвейнов",
					["npcID"] = 135699,
				},
				[267799] = {
					["type"] = "DEBUFF",
					["source"] = "Мияфудзи-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197916] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298512] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270871] = {
					["type"] = "BUFF",
					["source"] = "Каменный голем",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137708,
				},
				[300560] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150142,
				},
				[293394] = {
					["source"] = "Ланетия-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299538] = {
					["source"] = "Святовтык-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1464] = {
					["source"] = "Kuròg-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102558] = {
					["source"] = "Истрель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обора",
					["npcID"] = 0,
				},
				[23920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264735] = {
					["source"] = "Hati",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151149,
				},
				[258321] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[185123] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264736] = {
					["type"] = "BUFF",
					["source"] = "Голракан",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124185,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Todolf",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Erakashak",
					["npcID"] = 17252,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Kahuna-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Expedition Guard",
					["npcID"] = 139090,
				},
				[193315] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Kuròg-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306715] = {
					["source"] = "Fastboye-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[157997] = {
					["source"] = "Pmargar-Minahonda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203554] = {
					["type"] = "BUFF",
					["source"] = "Фрейвинд-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["type"] = "BUFF",
					["source"] = "Жагернаут-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[1680] = {
					["source"] = "Хардбри-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289315] = {
					["type"] = "BUFF",
					["source"] = "Quadrox-Dethecus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257814] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[256791] = {
					["source"] = "Ашиани-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287270] = {
					["source"] = "Liqx-Terenas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[148274] = {
					["source"] = "Fiercemonk-Mazrigos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289318] = {
					["type"] = "BUFF",
					["source"] = "Хотпоинт-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263725] = {
					["type"] = "BUFF",
					["source"] = "Штукабратт",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[146739] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287272] = {
					["source"] = "Рамплт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Анивия-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[257305] = {
					["type"] = "DEBUFF",
					["source"] = "Harlan Sweete",
					["npcID"] = 126983,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[53209] = {
					["source"] = "Ашиани-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Тюфель-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271920] = {
					["type"] = "DEBUFF",
					["source"] = "Дезнахус-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Августиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["encounterID"] = 2093,
				},
				[287280] = {
					["source"] = "Таалшар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[257821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Captain Eudora",
					["npcID"] = 126848,
				},
				[258333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Экспокрит-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solltexas-Silvermoon",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Crustymuffin-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7870] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[273977] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solltexas-Silvermoon",
					["npcID"] = 0,
				},
				[299572] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276026] = {
					["source"] = "Crustymuffin-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314930] = {
					["source"] = "Black Warden Rhothkozz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158790,
				},
				[260384] = {
					["source"] = "Felandriana-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187698] = {
					["source"] = "Баамбаам-ПиратскаяБухта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32752] = {
					["source"] = "Powerthirsty-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284219] = {
					["source"] = "Мехагонский нормализатор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150297,
				},
				[53595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Blodyymarry-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257827] = {
					["type"] = "BUFF",
					["source"] = "Джес Хаулис",
					["npcID"] = 127484,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[302651] = {
					["source"] = "Армани-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316985] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелисвет-Азурегос",
					["npcID"] = 0,
				},
				[301629] = {
					["source"] = "Мехагонский нормализатор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150297,
				},
				[30449] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acervulinid-Silvermoon",
					["npcID"] = 0,
				},
				[257829] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lightning",
					["npcID"] = 130099,
				},
				[193333] = {
					["type"] = "BUFF",
					["source"] = "Злаякапля",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Violetshine-Silvermoon",
					["npcID"] = 0,
				},
				[290371] = {
					["type"] = "BUFF",
					["source"] = "Alesta-Stormrage",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["source"] = "Aderty-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313918] = {
					["source"] = "Xoparis-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289349] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257831] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[290374] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299588] = {
					["source"] = "Механик из банды Поршнеголовых",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150251,
				},
				[300612] = {
					["type"] = "BUFF",
					["source"] = "Бурябезумие-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268877] = {
					["source"] = "Kärroch-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зелисвет-Азурегос",
					["npcID"] = 0,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290378] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[296522] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298571] = {
					["encounterID"] = 2312,
					["source"] = "Механоцикл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153756,
				},
				[34914] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313928] = {
					["source"] = "Acolyte of N'Zoth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161139,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[5487] = {
					["source"] = "Западляна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199483] = {
					["type"] = "BUFF",
					["source"] = "Райсгул-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[314956] = {
					["source"] = "Black Warden Rhothkozz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158790,
				},
				[280149] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195901] = {
					["type"] = "DEBUFF",
					["source"] = "Простойслейв-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[33891] = {
					["type"] = "BUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122281] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[303698] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314960] = {
					["source"] = "Асгаардец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[288343] = {
					["type"] = "BUFF",
					["source"] = "Ликвойда-Азурегос",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212283] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[216890] = {
					["type"] = "BUFF",
					["source"] = "Тиимон-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258352] = {
					["npcID"] = 126848,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Eudora",
					["encounterID"] = 2094,
				},
				[258864] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морпех корпорации Эшвейнов",
					["npcID"] = 130027,
				},
				[281178] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302677] = {
					["source"] = "Терминатори-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65116] = {
					["type"] = "BUFF",
					["source"] = "Туркестан-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["source"] = "Stained-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268897] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302681] = {
					["type"] = "DEBUFF",
					["source"] = "Трикси Искрожгучка",
					["encounterID"] = 2312,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150712,
				},
				[268898] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302682] = {
					["encounterID"] = 2312,
					["source"] = "Трикси Искрожгучка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150712,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[47585] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Еаши-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312922] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Донмирчик-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 104091,
				},
				[212800] = {
					["source"] = "Valkren-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг огня корпорации Эшвейнов",
					["npcID"] = 127488,
				},
				[268903] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[212801] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacksmithing Follower - Alliance",
					["npcID"] = 88403,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ilumni-Silvermoon",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Vril-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["source"] = "Занавескас-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301667] = {
					["source"] = "Мехагонский кавалерист",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150292,
				},
				[280170] = {
					["source"] = "Kärroch-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268909] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Коленка",
					["npcID"] = 0,
				},
				[132951] = {
					["type"] = "DEBUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268910] = {
					["type"] = "BUFF",
					["source"] = "Неранол",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[225601] = {
					["source"] = "Happyseal-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Тотем оков земли",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 2630,
				},
				[206662] = {
					["source"] = "Fastboye-Doomhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298601] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Исмори",
					["npcID"] = 0,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[298602] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Мортарион-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300650] = {
					["source"] = "Токсичный скрытень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150169,
				},
				[298603] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вспоменика",
					["npcID"] = 0,
				},
				[258875] = {
					["npcID"] = 130896,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackout Barrel",
					["encounterID"] = 2094,
				},
				[214342] = {
					["source"] = "Rerollex-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298604] = {
					["source"] = "Ливэй",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Кикушон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ilumni-Silvermoon",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259388] = {
					["type"] = "BUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Мэдскит-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295536] = {
					["encounterID"] = 2291,
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[296560] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288371] = {
					["source"] = "Ozric",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278134] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Haastia-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301681] = {
					["source"] = "Мехагонский кавалерист",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150292,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Мэдскит-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nazaro",
					["npcID"] = 0,
				},
				[263806] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[8143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лихорадит",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Nazhar-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301689] = {
					["source"] = "Анодированный разрядниконосец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155090,
				},
				[298618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Наокийл",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Happyseal-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[248646] = {
					["source"] = "Missyr-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Силренис-Дракономор",
					["npcID"] = 0,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Шарайна",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["source"] = "Harzerkäse",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Blaez-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286342] = {
					["type"] = "BUFF",
					["source"] = "Витальхелий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300675] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "SI:7 Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147346,
				},
				[126389] = {
					["type"] = "BUFF",
					["source"] = "Скайскрим-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Kärroch-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Disguised K'thir",
					["npcID"] = 134845,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Каприза-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Todolf",
					["npcID"] = 0,
				},
				[45927] = {
					["source"] = "Keyblade-Azuremyst",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Akia-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276112] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хаосмашинаа-Дракономор",
					["npcID"] = 0,
				},
				[77762] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115385] = {
					["type"] = "BUFF",
					["source"] = "Донный охотник",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133285,
				},
				[175456] = {
					["type"] = "BUFF",
					["source"] = "Непсих",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48103] = {
					["source"] = "Darkberet-Khadgar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даунахиле-Гордунни",
					["npcID"] = 0,
				},
				[317065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elon-Khadgar",
					["npcID"] = 0,
				},
				[299662] = {
					["type"] = "BUFF",
					["source"] = "Мяснойкисель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191837] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315019] = {
					["source"] = "Black Warden Rhothkozz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158790,
				},
				[258381] = {
					["npcID"] = 126848,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Eudora",
					["encounterID"] = 2094,
				},
				[300687] = {
					["source"] = "Токсичное чудище",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150168,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Schate-Khadgar",
					["npcID"] = 0,
				},
				[305807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бедисмо",
					["npcID"] = 0,
				},
				[257870] = {
					["type"] = "BUFF",
					["source"] = "Irontide Buccaneer",
					["npcID"] = 130011,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[209754] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[259918] = {
					["source"] = "Iron Shaman Grimbeard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148597,
				},
				[268954] = {
					["source"] = "Офник-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2291,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300691] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Пиратикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259919] = {
					["source"] = "Iron Shaman Grimbeard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148597,
				},
				[268956] = {
					["source"] = "Леусварский-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307859] = {
					["source"] = "Spirit Drinker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163308,
				},
				[300693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pulrina-Khadgar",
					["npcID"] = 0,
				},
				[259408] = {
					["source"] = "Siltfeeder Ray",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126677,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drunkvogter-Outland",
					["npcID"] = 0,
				},
				[114108] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Таалшар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Таалшар-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263840] = {
					["source"] = "GreenDay",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 93349,
				},
				[265888] = {
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Поджигатель из братства Чернозубых",
					["npcID"] = 135366,
				},
				[303769] = {
					["type"] = "BUFF",
					["source"] = "Грейденз-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298651] = {
					["type"] = "BUFF",
					["source"] = "Механоцикл",
					["encounterID"] = 2312,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153756,
				},
				[259411] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285344] = {
					["encounterID"] = 2257,
					["source"] = "\"Платиновый лупцеватор\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144244,
				},
				[259412] = {
					["source"] = "Shiveren-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[277156] = {
					["type"] = "BUFF",
					["source"] = "Идол глубин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141782,
				},
				[279204] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53480] = {
					["type"] = "BUFF",
					["source"] = "Крот-Седогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259413] = {
					["source"] = "Эмерина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Pkane-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207203] = {
					["source"] = "Remiry-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300706] = {
					["source"] = "Токсичное чудище",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150168,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Миренея-Азурегос",
					["npcID"] = 0,
				},
				[19514] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148556,
				},
				[213858] = {
					["type"] = "BUFF",
					["source"] = "Ботька-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23737] = {
					["type"] = "BUFF",
					["source"] = "Воржей",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14822,
				},
				[303780] = {
					["source"] = "Ишунебалам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32375] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[264878] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89798] = {
					["source"] = "Lord Victor Nefarius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49799,
				},
				[272046] = {
					["npcID"] = 126841,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["encounterID"] = 2093,
				},
				[269999] = {
					["source"] = "Головорез из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136236,
				},
				[263857] = {
					["source"] = "HanheiteKara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 50370,
				},
				[16827] = {
					["source"] = "moky",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103326,
				},
				[7328] = {
					["source"] = "Шарайна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117952] = {
					["encounterID"] = 2312,
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Трис-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[189804] = {
					["source"] = "Honorbound Elementalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149154,
				},
				[51690] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263861] = {
					["source"] = "Дикорог",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 70018,
				},
				[134522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Twistyfur",
					["npcID"] = 0,
				},
				[298669] = {
					["encounterID"] = 2312,
					["source"] = "Трикси Искрожгучка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150712,
				},
				[202090] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[22842] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272055] = {
					["npcID"] = 126841,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["encounterID"] = 2093,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Gynækologen-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307887] = {
					["source"] = "Spirit Drinker",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163308,
				},
				[58729] = {
					["type"] = "BUFF",
					["source"] = "Дворфийский хранитель душ",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31842,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190831] = {
					["type"] = "BUFF",
					["source"] = "Иннерсларк-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[302771] = {
					["source"] = "Черрс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276154] = {
					["source"] = "Zimbawie-Bladefist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314033] = {
					["source"] = "K'thir Doomsayer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156572,
				},
				[48108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290792] = {
					["type"] = "DEBUFF",
					["source"] = "Блибо-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210128] = {
					["source"] = "Sztívön-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209261] = {
					["type"] = "DEBUFF",
					["source"] = "Мимикрирую-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Мэдскит-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277181] = {
					["source"] = "Ugadabunga-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290786] = {
					["type"] = "BUFF",
					["source"] = "Авендил",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115750] = {
					["source"] = "Vørån-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283565] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[289467] = {
					["source"] = "Thymian-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[303800] = {
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154442,
				},
				[304824] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[42650] = {
					["type"] = "BUFF",
					["source"] = "Sztívön-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212295] = {
					["type"] = "BUFF",
					["source"] = "Суперба-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["type"] = "DEBUFF",
					["source"] = "Taîren-Aegwynn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313015] = {
					["type"] = "DEBUFF",
					["source"] = "Блибо-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288426] = {
					["type"] = "BUFF",
					["source"] = "Sztívön-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269753] = {
					["source"] = "Мстительный мертвец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128181,
				},
				[299707] = {
					["source"] = "Шарайна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258915] = {
					["source"] = "Dune Beetle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126893,
				},
				[277185] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236077] = {
					["source"] = "Ботька-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46924] = {
					["type"] = "BUFF",
					["source"] = "Warwtf-Archimonde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Тотем конденсации",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[277186] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136550,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Иманиша-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204362] = {
					["type"] = "BUFF",
					["source"] = "Дезнахус-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Баамбаам-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277187] = {
					["type"] = "BUFF",
					["source"] = "Кромкица",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273323] = {
					["type"] = "BUFF",
					["source"] = "Дезнахус-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294926] = {
					["source"] = "Яром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256350] = {
					["type"] = "DEBUFF",
					["source"] = "Молодой радикулиск",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152035,
				},
				[268998] = {
					["source"] = "Skadej-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276110] = {
					["source"] = "Громила",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150436,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[258917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица корпорации Эшвейнов",
					["npcID"] = 130028,
				},
				[112868] = {
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294383] = {
					["type"] = "BUFF",
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256358] = {
					["npcID"] = 126969,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trothak",
					["encounterID"] = 2095,
				},
				[320297] = {
					["type"] = "DEBUFF",
					["source"] = "Magria",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54319,
				},
				[6262] = {
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119909] = {
					["source"] = "Тьео-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Dworig-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196884] = {
					["source"] = "Ибилех-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[290500] = {
					["type"] = "BUFF",
					["source"] = "Витальхелий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[300919] = {
					["type"] = "BUFF",
					["source"] = "Бенисонкрик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259489] = {
					["source"] = "Quickstike-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265931] = {
					["type"] = "DEBUFF",
					["source"] = "Кнопулька-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304056] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[296644] = {
					["type"] = "BUFF",
					["source"] = "Туркестан-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259431] = {
					["source"] = "Palladia-BurningBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19708] = {
					["source"] = "Magejano-Saurfang",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Магнитики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288455] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221885] = {
					["type"] = "BUFF",
					["source"] = "Засуньсам-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260249] = {
					["type"] = "BUFF",
					["source"] = "Quickstike-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32734] = {
					["type"] = "BUFF",
					["source"] = "Огнедых из племени Хламоедов",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151720,
				},
				[258920] = {
					["source"] = "Аполанария",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79886] = {
					["source"] = "Огнедых из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151720,
				},
				[198069] = {
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[219788] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204150] = {
					["type"] = "BUFF",
					["source"] = "Бениволум",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275370] = {
					["type"] = "BUFF",
					["source"] = "Неисправный гориллобот",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151933,
				},
				[275363] = {
					["type"] = "BUFF",
					["source"] = "Неисправный гориллобот",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151933,
				},
				[287825] = {
					["type"] = "DEBUFF",
					["source"] = "Гольвич-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246853] = {
					["source"] = "Chaeron-Darksorrow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254232] = {
					["source"] = "Пробуждённый-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216251] = {
					["type"] = "BUFF",
					["source"] = "Chopad-KirinTor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285388] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[116680] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262929] = {
					["type"] = "BUFF",
					["source"] = "Костегрыз",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152001,
				},
				[2641] = {
					["source"] = "Oropher-Khadgar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "moky",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103326,
				},
				[304037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rbu-Bloodhoof",
					["npcID"] = 0,
				},
				[256363] = {
					["npcID"] = 126969,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trothak",
					["encounterID"] = 2095,
				},
				[199545] = {
					["source"] = "Gorron-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245102] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Девлинн Стикс",
					["npcID"] = 121527,
				},
				[257899] = {
					["type"] = "BUFF",
					["source"] = "Irontide Ravager",
					["npcID"] = 130012,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Тотем исцеляющего потока",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3527,
				},
				[263892] = {
					["source"] = "Jackthecat",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 55946,
				},
				[187650] = {
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298700] = {
					["source"] = "Святейшая-Азурегос",
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
				[204596] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205604] = {
					["source"] = "Ситтора-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313310] = {
					["type"] = "BUFF",
					["source"] = "Ататита-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290512] = {
					["type"] = "DEBUFF",
					["source"] = "Karatetommi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Эвенгерс-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195452] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Blurpane-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Халльдор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219589] = {
					["type"] = "BUFF",
					["source"] = "Каррас-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258925] = {
					["source"] = "Ascensor-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198111] = {
					["type"] = "BUFF",
					["source"] = "Каррас-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Samskip-Mazrigos",
					["npcID"] = 0,
				},
				[33395] = {
					["type"] = "DEBUFF",
					["source"] = "Элементаль воды",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 78116,
				},
				[263897] = {
					["source"] = "Зубастый бобр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[633] = {
					["source"] = "Авендил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196477] = {
					["source"] = "Элагор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Офник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205691] = {
					["source"] = "Kroak-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Demonwraith",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105421] = {
					["type"] = "DEBUFF",
					["source"] = "Vørån-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271371] = {
					["type"] = "DEBUFF",
					["source"] = "Перемалыватель из племени Хламоедов",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151663,
				},
				[19505] = {
					["source"] = "Гзамини",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[324898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дерд-Азурегос",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Джинблох",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["source"] = "Wappii-Khadgar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283167] = {
					["type"] = "BUFF",
					["source"] = "Простойслейв-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287447] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301869] = {
					["source"] = "Ожившая жижа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155481,
				},
				[257904] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ludwig Von Tortollan",
					["npcID"] = 129699,
				},
				[302513] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259440] = {
					["source"] = "Palladia-BurningBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312680] = {
					["source"] = "Faceless Dominator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160550,
				},
				[271544] = {
					["type"] = "DEBUFF",
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271543] = {
					["type"] = "BUFF",
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261488] = {
					["source"] = "Caravan Leader",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148550,
				},
				[188290] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Hilataa-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277792] = {
					["source"] = "Хэппиджепп-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280661] = {
					["type"] = "BUFF",
					["source"] = "Поглощатор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143985,
				},
				[206432] = {
					["type"] = "BUFF",
					["source"] = "Хэппиджепп-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213241] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Бартоломяу",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108238] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тиммира-Дракономор",
					["npcID"] = 0,
				},
				[273424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[259442] = {
					["source"] = "Palladia-BurningBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19647] = {
					["source"] = "Jhaadrom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[272893] = {
					["type"] = "BUFF",
					["source"] = "Infectée-Elune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pulrina-Khadgar",
					["npcID"] = 0,
				},
				[259161] = {
					["type"] = "BUFF",
					["source"] = "Ванквишер-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["encounterID"] = 2101,
				},
				[131474] = {
					["source"] = "Мияфудзи-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Johnsmith-Mazrigos",
					["npcID"] = 0,
				},
				[279885] = {
					["type"] = "BUFF",
					["source"] = "Пет-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263854] = {
					["source"] = "Ящер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127869,
				},
				[199042] = {
					["source"] = "Warbearpig-ShatteredHand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300764] = {
					["source"] = "Жижементаль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150165,
				},
				[201787] = {
					["type"] = "DEBUFF",
					["source"] = "Владосх-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257908] = {
					["npcID"] = 127106,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Officer",
					["encounterID"] = 2096,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Сикорушка-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271369] = {
					["type"] = "BUFF",
					["source"] = "Обезумевший трогг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149847,
				},
				[135700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288849] = {
					["type"] = "DEBUFF",
					["source"] = "Церковь-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мистермэки-Дракономор",
					["npcID"] = 0,
				},
				[224125] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[289505] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Bustersmor-AeriePeak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Visin-Bloodhoof",
					["npcID"] = 0,
				},
				[304202] = {
					["source"] = "Обезумевший трогг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149847,
				},
				[280868] = {
					["type"] = "BUFF",
					["source"] = "Чэф",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207289] = {
					["type"] = "BUFF",
					["source"] = "Мяснойкисель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[224126] = {
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[295294] = {
					["source"] = "Фатаэль-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306230] = {
					["source"] = "Миридана-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256979] = {
					["npcID"] = 126848,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Eudora",
					["encounterID"] = 2094,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[185736] = {
					["type"] = "BUFF",
					["source"] = "Brando-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[248622] = {
					["source"] = "Kuròg-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224127] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[215711] = {
					["type"] = "BUFF",
					["source"] = "Малкиан-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Johnsmith-Mazrigos",
					["npcID"] = 0,
				},
				[207311] = {
					["source"] = "Малкиан-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[144787] = {
					["source"] = "Хр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Витальхелий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197628] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[131476] = {
					["type"] = "BUFF",
					["source"] = "Мияфудзи-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280776] = {
					["type"] = "BUFF",
					["source"] = "Старбенд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[32379] = {
					["source"] = "Javita-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shyláena-Silvermoon",
					["npcID"] = 0,
				},
				[299822] = {
					["source"] = "Хранитель мотояиц",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149843,
				},
				[3561] = {
					["source"] = "Лонгстайл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276204] = {
					["type"] = "BUFF",
					["source"] = "Рэгнейра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Магнитики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276083] = {
					["type"] = "BUFF",
					["source"] = "Ninehundred-Sylvanas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[175790] = {
					["type"] = "BUFF",
					["source"] = "Прыткая-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Мэрль-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278253] = {
					["source"] = "Haastia-Zenedar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214975] = {
					["type"] = "DEBUFF",
					["source"] = "Броонсон-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307281] = {
					["source"] = "Ледышечка-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257402] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[79833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 109364,
				},
				[205191] = {
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[300777] = {
					["source"] = "Жижементаль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150165,
				},
				[312370] = {
					["source"] = "Кагуто-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247677] = {
					["type"] = "BUFF",
					["source"] = "Джугашввили-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203848] = {
					["type"] = "BUFF",
					["source"] = "Харэ-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125883] = {
					["type"] = "BUFF",
					["source"] = "Чэф",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253308] = {
					["source"] = "Happyseal-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236021] = {
					["type"] = "DEBUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274838] = {
					["type"] = "DEBUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274837] = {
					["type"] = "BUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[182158] = {
					["source"] = "Fiercemonk-Mazrigos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[102547] = {
					["type"] = "BUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281329] = {
					["npcID"] = 126845,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Jolly",
					["encounterID"] = 2094,
				},
				[203849] = {
					["type"] = "BUFF",
					["source"] = "Hantrax-Kael'thas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197003] = {
					["source"] = "Анивия-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293930] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[198027] = {
					["type"] = "BUFF",
					["source"] = "Вориерка-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["source"] = "Занавескас-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наокийл",
					["npcID"] = 0,
				},
				[290467] = {
					["type"] = "BUFF",
					["source"] = "Ликмер-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["type"] = "BUFF",
					["source"] = "Илдарен-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278260] = {
					["source"] = "Ascensor-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 151096,
				},
				[273298] = {
					["type"] = "BUFF",
					["source"] = "Зинэур-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[228403] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212182] = {
					["source"] = "Вориерка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1715] = {
					["type"] = "DEBUFF",
					["source"] = "Boogytime-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233582] = {
					["type"] = "DEBUFF",
					["source"] = "Maldin-DunModr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311129] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сильная уязвимость",
					["npcID"] = 161831,
				},
				[102543] = {
					["type"] = "BUFF",
					["source"] = "Демосан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moepy-Silvermoon",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300271] = {
					["source"] = "Энтериэл-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96312] = {
					["type"] = "BUFF",
					["source"] = "Акирокоинаба-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147833] = {
					["type"] = "BUFF",
					["source"] = "Алекскилгур-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2006] = {
					["source"] = "Акалита-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Fraank-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Свитлоус-Азурегос",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300788] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257408] = {
					["source"] = "Vcinka-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306745] = {
					["type"] = "BUFF",
					["source"] = "Оплеушка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157166,
				},
				[303035] = {
					["source"] = "Кразилолз-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Абаурд-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Свитлоус-Азурегос",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Грейденз-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259462] = {
					["source"] = "Песочный краб-бегун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131675,
				},
				[75531] = {
					["source"] = "Galaxya-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102359] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[306474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Karamalec-Khadgar",
					["npcID"] = 0,
				},
				[24394] = {
					["type"] = "DEBUFF",
					["source"] = "Хати",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151096,
				},
				[274746] = {
					["type"] = "BUFF",
					["source"] = "Провидица Кристл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143847,
				},
				[271103] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226175] = {
					["type"] = "BUFF",
					["source"] = "Таирекс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nassxx-Silvermoon",
					["npcID"] = 0,
				},
				[160600] = {
					["type"] = "BUFF",
					["source"] = "Непсих",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Мантрат-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[845] = {
					["source"] = "Хардбри-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315176] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Тюфель-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jaxonpala-Silvermoon",
					["npcID"] = 0,
				},
				[294195] = {
					["source"] = "\"Оборонобот I\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151649,
				},
				[301734] = {
					["source"] = "Охранник Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155110,
				},
				[299457] = {
					["source"] = "Охранник Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155110,
				},
				[312107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[302384] = {
					["source"] = "\"Шокотрон X1\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152703,
				},
				[190356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[271107] = {
					["type"] = "BUFF",
					["source"] = "Gynækologen-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257739] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blacktooth Scrapper",
					["npcID"] = 129529,
				},
				[285440] = {
					["encounterID"] = 2259,
					["source"] = "Главный машинист Искроточец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144248,
				},
				[281403] = {
					["source"] = "Авгурей-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sharini",
					["npcID"] = 0,
				},
				[119415] = {
					["source"] = "Еаши-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Szitygooch-Bloodhoof",
					["npcID"] = 0,
				},
				[311035] = {
					["source"] = "Jahi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161097,
				},
				[105688] = {
					["type"] = "BUFF",
					["source"] = "Непсих",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277170] = {
					["type"] = "DEBUFF",
					["source"] = "Идол глубин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141782,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hugme-Bloodhoof",
					["npcID"] = 0,
				},
				[297080] = {
					["source"] = "Кузполад",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Akia-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316062] = {
					["source"] = "Corrupted Putrefaction",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158706,
				},
				[285443] = {
					["encounterID"] = 2259,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[256390] = {
					["source"] = "Похищенный мотопаук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153473,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[184364] = {
					["type"] = "BUFF",
					["source"] = "Каалантэ",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Jackicek-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зелисвет-Азурегос",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[105689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Johnshooter",
					["npcID"] = 0,
				},
				[300802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Aglariel-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["source"] = "Mañgo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156064] = {
					["type"] = "BUFF",
					["source"] = "Тырпырдыр",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["source"] = "Диохан-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115450] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259975] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[166302] = {
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-6000\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 101527,
				},
				[8613] = {
					["source"] = "Filipas-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202914] = {
					["type"] = "DEBUFF",
					["source"] = "Мантрат-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Тюфель-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crusher",
					["npcID"] = 130400,
				},
				[116858] = {
					["source"] = "Ченгарз-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210324] = {
					["type"] = "BUFF",
					["source"] = "Subi-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286473] = {
					["source"] = "Dookthar the Destroyer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147563,
				},
				[315763] = {
					["type"] = "BUFF",
					["source"] = "Джугашввили-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314405] = {
					["source"] = "Ramkahen Citizen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157795,
				},
				[50842] = {
					["source"] = "Hilataa-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Вашахаш-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117679] = {
					["type"] = "BUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318211] = {
					["source"] = "Eastcomer-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Апротекс-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236431] = {
					["type"] = "BUFF",
					["source"] = "Солвента-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314117] = {
					["source"] = "Oozing Putrefaction",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158703,
				},
				[287360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[302795] = {
					["type"] = "BUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[228537] = {
					["source"] = "Kaledemoon-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[276061] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irontide Crusher",
					["npcID"] = 130400,
				},
				[280404] = {
					["type"] = "DEBUFF",
					["source"] = "Бенисонкрик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285454] = {
					["encounterID"] = 2259,
					["source"] = "Главный машинист Искроточец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144248,
				},
				[131894] = {
					["source"] = "Эдол-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5394] = {
					["source"] = "Chopad-KirinTor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118779] = {
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[297283] = {
					["encounterID"] = 2290,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Aetuis-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281420] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bilge Rat Brinescale",
					["npcID"] = 129600,
				},
				[1719] = {
					["source"] = "Funnypoop-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["source"] = "Элитан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147367] = {
					["type"] = "BUFF",
					["source"] = "Старбенд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Cuddlemonk-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Szitygooch-Bloodhoof",
					["npcID"] = 0,
				},
				[192249] = {
					["source"] = "Kahuna-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319241] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[299790] = {
					["source"] = "Choppanomnom-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288075] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ferrusgnomus-Bloodhoof",
					["npcID"] = 0,
				},
				[194509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[266779] = {
					["type"] = "BUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156070] = {
					["source"] = "Tallianna-Azuremyst",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156778,
				},
				[318219] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298823] = {
					["source"] = "Дреаниса-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[277969] = {
					["type"] = "BUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Гэймовер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270235] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deadcalm",
					["npcID"] = 0,
				},
				[156071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Domblondjeu-Khadgar",
					["npcID"] = 0,
				},
				[1449] = {
					["source"] = "Sheyma-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2481] = {
					["source"] = "Norgona-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256589] = {
					["type"] = "BUFF",
					["source"] = "Captain Raoul",
					["npcID"] = 126847,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[23922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[300818] = {
					["source"] = "Слизнюк-гномоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150195,
				},
				[46968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[126457] = {
					["type"] = "BUFF",
					["source"] = "Колянычч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Бобкувалда-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295343] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[83245] = {
					["source"] = "Ашиани-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12323] = {
					["type"] = "DEBUFF",
					["source"] = "Трис-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318391] = {
					["source"] = "Великий потусторонний червь",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[257424] = {
					["source"] = "Ниггатов-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bilge Rat Buccaneer",
					["npcID"] = 129527,
				},
				[262942] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298317] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Eastcomer-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286547] = {
					["source"] = "Felandriana-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268062] = {
					["source"] = "Дэхауль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Лезгинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304537] = {
					["source"] = "Защитник экспедиции",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152158,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Celexa-Mazrigos",
					["npcID"] = 0,
				},
				[303525] = {
					["type"] = "DEBUFF",
					["source"] = "Нано Мегабум",
					["encounterID"] = 2312,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153755,
				},
				[185763] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257397] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[250878] = {
					["type"] = "BUFF",
					["source"] = "Шадовфайт-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadewolf-Khadgar",
					["npcID"] = 0,
				},
				[257426] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Enforcer",
					["npcID"] = 129602,
				},
				[287063] = {
					["source"] = "Cuddlemonk-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283421] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[257460] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aerthis-Silvermoon",
					["npcID"] = 0,
				},
				[266018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оллайя-Дракономор",
					["npcID"] = 0,
				},
				[34428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["encounterID"] = 2096,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[273185] = {
					["source"] = "Механик из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150251,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mitsuko-Bloodhoof",
					["npcID"] = 0,
				},
				[291613] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150396,
				},
				[59638] = {
					["type"] = "DEBUFF",
					["source"] = "Зеркальное изображение",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31216,
				},
				[276111] = {
					["type"] = "BUFF",
					["source"] = "Тэлфорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[298836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elon-Khadgar",
					["npcID"] = 0,
				},
				[313113] = {
					["source"] = "Скиазар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[315161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лози-Гордунни",
					["npcID"] = 0,
				},
				[296279] = {
					["encounterID"] = 2291,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213405] = {
					["source"] = "Demonwraith",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255966] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[256405] = {
					["type"] = "BUFF",
					["source"] = "Trothak",
					["npcID"] = 126969,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2095,
				},
				[298845] = {
					["source"] = "Felandriana-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Apokalìpsa-Silvermoon",
					["npcID"] = 0,
				},
				[295258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[188838] = {
					["type"] = "DEBUFF",
					["source"] = "Тоссинг-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[18562] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257404] = {
					["source"] = "Soul Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137665,
				},
				[298433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Todolf",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Виэтрикс-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278310] = {
					["type"] = "BUFF",
					["source"] = "Хэппиджепп-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33917] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288548] = {
					["source"] = "Magus of the Dead",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148797,
				},
				[311217] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аксон-Дракономор",
					["npcID"] = 0,
				},
				[256702] = {
					["source"] = "Эанари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оллайя-Дракономор",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Danthordk-Bloodhoof",
					["npcID"] = 0,
				},
				[298849] = {
					["encounterID"] = 2312,
					["source"] = "Трикси Искрожгучка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150712,
				},
				[1953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[260349] = {
					["source"] = "Тен'гор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130713,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[269169] = {
					["source"] = "Honorbound Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144958,
				},
				[203173] = {
					["source"] = "Bloodripper-Haomarush",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52437] = {
					["source"] = "Kuròg-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Skadej-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273264] = {
					["source"] = "Chaeron-Darksorrow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[293671] = {
					["source"] = "Keyblade-Azuremyst",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Jeffisko-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256409] = {
					["source"] = "Радикулиск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153699,
				},
				[276268] = {
					["source"] = "High Guard Reshef",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158528,
				},
				[285482] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233375] = {
					["type"] = "DEBUFF",
					["source"] = "Нимида-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Bloodripper-Haomarush",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54710] = {
					["source"] = "Тинфиззл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53760] = {
					["type"] = "BUFF",
					["source"] = "Тавровский",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208683] = {
					["source"] = "Arkaun-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291626] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150396,
				},
				[115078] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Куданахпрёшь-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257946] = {
					["source"] = "Akia-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rbu-Bloodhoof",
					["npcID"] = 0,
				},
				[1833] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[49360] = {
					["source"] = "Ардентус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wiingmann-Silvermoon",
					["npcID"] = 0,
				},
				[191034] = {
					["type"] = "BUFF",
					["source"] = "Флайрон-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mitsuko-Bloodhoof",
					["npcID"] = 0,
				},
				[314151] = {
					["source"] = "Crazed Ramkahen Guardian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161110,
				},
				[313929] = {
					["source"] = "Deranged Fleshbeast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158684,
				},
				[686] = {
					["source"] = "Пуконюх-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271716] = {
					["source"] = "Enraged Azerite Elemental",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146917,
				},
				[105174] = {
					["source"] = "Пуконюх-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дидилия-Гром",
					["npcID"] = 0,
				},
				[270527] = {
					["source"] = "Ричард Торнсейл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136474,
				},
				[257436] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Corsair",
					["npcID"] = 126928,
				},
				[298859] = {
					["source"] = "Мельиночка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299821] = {
					["source"] = "Мотопаук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152287,
				},
				[755] = {
					["source"] = "Ченгарз-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[189869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Expedition Guard",
					["npcID"] = 139090,
				},
				[269651] = {
					["source"] = "Торбс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[228260] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257437] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Corsair",
					["npcID"] = 126928,
				},
				[257949] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лореандра",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Fraank-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Ченгарз-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[298124] = {
					["encounterID"] = 2292,
					["source"] = "Токсикоид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150222,
				},
				[211881] = {
					["source"] = "Arkaun-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120360] = {
					["type"] = "BUFF",
					["source"] = "Чавес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["encounterID"] = 2093,
				},
				[112867] = {
					["source"] = "Beelsebub-Darksorrow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287835] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Пчпэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223143] = {
					["source"] = "Elihm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Glabarg-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280375] = {
					["type"] = "BUFF",
					["source"] = "Сикорушка-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260355] = {
					["type"] = "BUFF",
					["source"] = "Тен'гор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130713,
				},
				[318227] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Akia-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281400] = {
					["source"] = "Торбс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186289] = {
					["type"] = "BUFF",
					["source"] = "Pageanchorx-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Eastcomer-Darkspear",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[268439] = {
					["source"] = "Пиратикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303924] = {
					["source"] = "Смазочный бот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155911,
				},
				[193456] = {
					["source"] = "Khôrne-Turalyon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255393] = {
					["source"] = "Stoopstwo-Terokkar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drunkvogter-Outland",
					["npcID"] = 0,
				},
				[195125] = {
					["source"] = "Kaledemoon-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 59037,
				},
				[85739] = {
					["source"] = "Венран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266047] = {
					["type"] = "BUFF",
					["source"] = "Sztívön-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rolexx",
					["npcID"] = 0,
				},
				[256198] = {
					["type"] = "BUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кэнвин-Дракономор",
					["npcID"] = 0,
				},
				[256477] = {
					["npcID"] = 129359,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sawtooth Shark",
					["encounterID"] = 2095,
				},
				[227847] = {
					["source"] = "Kuròg-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[258153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морской колдун из братства Трюмных Крыс",
					["npcID"] = 130026,
				},
				[112869] = {
					["source"] = "Powerthirsty-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286739] = {
					["type"] = "BUFF",
					["source"] = "Вестейдж",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198065] = {
					["type"] = "BUFF",
					["source"] = "Моябаба-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scrimshaw Thug",
					["npcID"] = 135107,
				},
				[268350] = {
					["source"] = "Порабощенная волна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134340,
				},
				[288573] = {
					["type"] = "BUFF",
					["source"] = "Sënsëï-Elune",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8676] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[208353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Смуу-Гордунни",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Макидонец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242599] = {
					["source"] = "Fastboye-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259491] = {
					["source"] = "Quickstike-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Disguised K'thir",
					["npcID"] = 134845,
				},
				[61391] = {
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301884] = {
					["type"] = "BUFF",
					["source"] = "Квакеру",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79854] = {
					["source"] = "7th Legion Incinerator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148554,
				},
				[285979] = {
					["source"] = "Argyrion-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257297] = {
					["source"] = "Лозомант Рата",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135939,
				},
				[272979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[255909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[154953] = {
					["type"] = "DEBUFF",
					["source"] = "Gynækologen-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[315195] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аташе-Дракономор",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Вориерка-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["source"] = "Drobbas-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[91800] = {
					["type"] = "DEBUFF",
					["source"] = "Тухлогул",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26125,
				},
				[204263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Triazzle-Mazrigos",
					["npcID"] = 0,
				},
				[79855] = {
					["source"] = "7th Legion Incinerator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148554,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160597] = {
					["source"] = "Sliff-Khadgar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58875] = {
					["type"] = "BUFF",
					["source"] = "Ибилех-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61781] = {
					["source"] = "Tank-Saurfang",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55164] = {
					["source"] = "Eastcomer-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Сиетатотакам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255952] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[115175] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259495] = {
					["source"] = "Quickstike-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262094] = {
					["source"] = "Ughy-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[204213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[299431] = {
					["type"] = "DEBUFF",
					["source"] = "Неисправный утильхаунд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151301,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eskah-Bloodhoof",
					["npcID"] = 0,
				},
				[252383] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251306] = {
					["source"] = "Чезарей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Леусварский-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303941] = {
					["source"] = "Анодированный разрядниконосец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155090,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелисвет-Азурегос",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2291,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198813] = {
					["source"] = "Arkaun-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268519] = {
					["type"] = "BUFF",
					["source"] = "Исшана",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Ютани-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303943] = {
					["type"] = "BUFF",
					["source"] = "Миридана-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269214] = {
					["source"] = "Demonwraith",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22807] = {
					["source"] = "Keruw-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79857] = {
					["source"] = "7th Legion Incinerator",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148554,
				},
				[290600] = {
					["source"] = "Дебриссет-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Demonwraith",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298897] = {
					["encounterID"] = 2312,
					["source"] = "Трикси Искрожгучка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150712,
				},
				[273321] = {
					["source"] = "Arnoobb-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314689] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Силанэль-Дракономор",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Warbearpig-ShatteredHand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58506] = {
					["source"] = "SI:7 Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146946,
				},
				[300434] = {
					["source"] = "Бугай из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150160,
				},
				[280400] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fryser-Khadgar",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Amoraris-AeriePeak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[280746] = {
					["source"] = "Juggernaught-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278878] = {
					["type"] = "BUFF",
					["source"] = "Тингян-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197051] = {
					["type"] = "DEBUFF",
					["source"] = "Тинсмэйден-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274376] = {
					["type"] = "BUFF",
					["source"] = "Аэльхай",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Шарайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Лезгинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205231] = {
					["source"] = "Созерцатель Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[79140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[115178] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273238] = {
					["source"] = "Ascensor-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Тофус-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sjeet-Bloodhoof",
					["npcID"] = 0,
				},
				[203538] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["encounterID"] = 2096,
				},
				[196742] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290643] = {
					["type"] = "BUFF",
					["source"] = "Сикорушка-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303952] = {
					["source"] = "Сварочный робот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155910,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255407] = {
					["source"] = "Вилдеръяг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Johnsmith-Mazrigos",
					["npcID"] = 0,
				},
				[295838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stöne-Khadgar",
					["npcID"] = 0,
				},
				[258777] = {
					["npcID"] = 127111,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Oarsman",
					["encounterID"] = 2096,
				},
				[179057] = {
					["source"] = "Тохтегенде-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61336] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114923] = {
					["source"] = "Sheyma-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Hilataa-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247218] = {
					["source"] = "Honorbound Berserker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149133,
				},
				[307026] = {
					["source"] = "Тешиву",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268717] = {
					["npcID"] = 126841,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["encounterID"] = 2093,
				},
				[280409] = {
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[193530] = {
					["source"] = "Kärroch-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302932] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[247776] = {
					["source"] = "Ozric",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[197625] = {
					["source"] = "Камирика",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260016] = {
					["npcID"] = 131785,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жужжащий трутень",
					["encounterID"] = 2101,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dylpif-Mazrigos",
					["npcID"] = 0,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blikbier-BurningLegion",
					["npcID"] = 0,
				},
				[176058] = {
					["source"] = "Бастиннда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solltexas-Silvermoon",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Райдомир-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Бурябезумие-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265056] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["npcID"] = 133219,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[302935] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ögödei-Silvermoon",
					["npcID"] = 0,
				},
				[296197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[257458] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[298841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bhagawan",
					["npcID"] = 0,
				},
				[80117] = {
					["source"] = "Огнедых из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151720,
				},
				[201664] = {
					["source"] = "Religiousbob-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247221] = {
					["type"] = "BUFF",
					["source"] = "Калинага",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264605] = {
					["type"] = "BUFF",
					["source"] = "Rummy Mancomb",
					["npcID"] = 133219,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[293724] = {
					["source"] = "Генератор защитного поля",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151579,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mivir-Silvermoon",
					["npcID"] = 0,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elunalora",
					["npcID"] = 0,
				},
				[299438] = {
					["source"] = "Демонтажница из банды Поршнеголовых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150249,
				},
				[193538] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178119] = {
					["source"] = "Copala-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Solltexas-Silvermoon",
					["npcID"] = 0,
				},
				[256948] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[108271] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147407] = {
					["source"] = "Illya-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Весс-Азурегос",
					["npcID"] = 0,
				},
				[300893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[132563] = {
					["source"] = "Исмори",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Еаши-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[294324] = {
					["source"] = "Переработчик отходов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144293,
				},
				[69369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[224869] = {
					["source"] = "Яблочныйвор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301088] = {
					["source"] = "Бомботанк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151657,
				},
				[164812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Uhd-Nordrassil",
					["npcID"] = 0,
				},
				[293729] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[298848] = {
					["source"] = "Eyelash-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279397] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Рэгнейра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79863] = {
					["source"] = "SI:7 Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146946,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Рэгнейра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эльтиия-Дракономор",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Tomaka",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273547] = {
					["source"] = "Оказавшийся в ловушке агент",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142072,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[15487] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232893] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Хиина-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296150] = {
					["encounterID"] = 2291,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298946] = {
					["encounterID"] = 2312,
					["source"] = "Нано Мегабум",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153755,
				},
				[303041] = {
					["source"] = "Баскинчук",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298852] = {
					["source"] = "Лёлешна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263607] = {
					["source"] = "Аватара Золотала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129343,
				},
				[228287] = {
					["source"] = "Hoenfeng-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294855] = {
					["encounterID"] = 2259,
					["source"] = "Непримечательное растение",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152033,
				},
				[257774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тихолап из братства Трюмных Крыс",
					["npcID"] = 129550,
				},
				[97063] = {
					["type"] = "BUFF",
					["source"] = "Кооляныч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Uhd-Nordrassil",
					["npcID"] = 0,
				},
				[163201] = {
					["source"] = "Хардбри-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278999] = {
					["source"] = "Alimek-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3562] = {
					["source"] = "Немэрлин-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[171804] = {
					["type"] = "BUFF",
					["source"] = "Архистер",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[298855] = {
					["source"] = "Eyelash-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208086] = {
					["source"] = "Kuròg-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13819] = {
					["type"] = "BUFF",
					["source"] = "Ишунебалам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264774] = {
					["type"] = "BUFF",
					["source"] = "Игуар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301367] = {
					["type"] = "BUFF",
					["source"] = "Ланатиль",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Недотрога-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302952] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[299475] = {
					["source"] = "Утильхаунд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150254,
				},
				[271841] = {
					["source"] = "Hired Caravan Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148530,
				},
				[297834] = {
					["encounterID"] = 2292,
					["source"] = "Токсикоид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150222,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðjînn-Silvermoon",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Венран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256955] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[297835] = {
					["encounterID"] = 2292,
					["source"] = "Токсикоид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150222,
				},
				[3714] = {
					["source"] = "Дейзвай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285152] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Кале-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amundra-Khadgar",
					["npcID"] = 0,
				},
				[17735] = {
					["source"] = "Kilthion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58960,
				},
				[280433] = {
					["source"] = "Venrir-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212423] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[79866] = {
					["source"] = "Френа Душистая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141120,
				},
				[271220] = {
					["source"] = "Ворчун из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152960,
				},
				[255104] = {
					["source"] = "Ярдли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257274] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282482] = {
					["type"] = "BUFF",
					["source"] = "Типичныймаг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[159786] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17447,
				},
				[123040] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ozric",
					["encounterID"] = 2093,
				},
				[242690] = {
					["type"] = "DEBUFF",
					["source"] = "Инхейн-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Michalhruza-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274231] = {
					["source"] = "Deepwater Summoner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161291,
				},
				[219407] = {
					["source"] = "Jósmorr-Darkspear",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["source"] = "Торбс",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Graker",
					["npcID"] = 0,
				},
				[102560] = {
					["source"] = "Blaez-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96955,
				},
				[772] = {
					["source"] = "Dumas-ShatteredHand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Finaldestiny-Nethersturm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256005] = {
					["npcID"] = 126841,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["encounterID"] = 2093,
				},
				[202188] = {
					["source"] = "Lukasplay-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286581] = {
					["source"] = "Thymian-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Demonwraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[189991] = {
					["source"] = "7th Legion Despoiler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148541,
				},
				[247563] = {
					["type"] = "BUFF",
					["source"] = "Дефтакер",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Hati",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151149,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Лортирон-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Happyseal-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[252353] = {
					["source"] = "Kreaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314107] = {
					["source"] = "Foul Observer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156890,
				},
				[265085] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["npcID"] = 133219,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[93622] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312845] = {
					["source"] = "K'thir Thoughtstealer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156576,
				},
				[297985] = {
					["encounterID"] = 2292,
					["source"] = "Токсикоид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150222,
				},
				[132169] = {
					["source"] = "Dumas-ShatteredHand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Valkren-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[49028] = {
					["source"] = "Гриммриппер-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Arnoobb-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201679] = {
					["source"] = "Freakazoid-Terenas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265088] = {
					["npcID"] = 133219,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
				},
				[286587] = {
					["source"] = "Hoenfeng-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Azazelx-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77761] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33907] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бролл Медвежья Шкура",
					["npcID"] = 142294,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acervulinid-Silvermoon",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Мортриси-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317301] = {
					["source"] = "K'thir Doomsayer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156572,
				},
				[198097] = {
					["source"] = "Filipas-Doomhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272679] = {
					["source"] = "Chaeron-Darksorrow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256451] = {
					["source"] = "Lîghtnîng-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297999] = {
					["source"] = "Anarchidia-Saurfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167385] = {
					["type"] = "BUFF",
					["source"] = "Тренировочный манекен покорителя подземелий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131992,
				},
				[259092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Stormcaller",
					["npcID"] = 126919,
				},
				[295445] = {
					["type"] = "DEBUFF",
					["source"] = "\"Танкоборец-1\"",
					["encounterID"] = 2291,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150295,
				},
				[51460] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[59752] = {
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[256452] = {
					["type"] = "BUFF",
					["source"] = "Нагорецик-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283422] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[257476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Mastiff",
					["npcID"] = 128551,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mitsuko-Bloodhoof",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Гонций-Корольлич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297854] = {
					["source"] = "Пламя горнила",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151930,
				},
				[261792] = {
					["source"] = "Warlord Zothix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134638,
				},
				[256453] = {
					["type"] = "BUFF",
					["source"] = "Аркорион-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ilumni-Silvermoon",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lorge-Bloodhoof",
					["npcID"] = 0,
				},
				[45062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nerii-Bloodhoof",
					["npcID"] = 0,
				},
				[188033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Файтсонг-Азурегос",
					["npcID"] = 0,
				},
				[298016] = {
					["source"] = "Werm-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302111] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Jeffisko-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256016] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Christianaj-Silvermoon",
					["npcID"] = 0,
				},
				[257478] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Mastiff",
					["npcID"] = 128551,
				},
				[285460] = {
					["type"] = "DEBUFF",
					["source"] = "Главный машинист Искроточец",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144248,
				},
				[299905] = {
					["type"] = "DEBUFF",
					["source"] = "Илдарен-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298025] = {
					["source"] = "Void Wraith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158707,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Леусварский-Дракономор",
					["npcID"] = 0,
				},
				[284275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andaría-Silvermoon",
					["npcID"] = 0,
				},
				[63106] = {
					["source"] = "Офник-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Hilataa-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petitbou-Eitrigg",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[297860] = {
					["source"] = "Джугашввили-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drunkvogter-Outland",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Ририин-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2290,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291918] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[282505] = {
					["source"] = "Ярмина-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Вашахаш-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[157153] = {
					["source"] = "Магнитики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Тюфель-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[273293] = {
					["source"] = "Эмерина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[264265] = {
					["source"] = "Rezan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 121571,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Ozric",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nícci-Blackmoore",
					["npcID"] = 0,
				},
				[131944] = {
					["source"] = "Сын Золотала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129124,
				},
				[256970] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blikbier-BurningLegion",
					["npcID"] = 0,
				},
				[211522] = {
					["type"] = "DEBUFF",
					["source"] = "Инферрнал-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Торбс",
					["encounterID"] = 2312,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[193357] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akumanokami",
					["npcID"] = 0,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2291,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55173] = {
					["type"] = "BUFF",
					["source"] = "Мантрат-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Офник-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["npcID"] = 62982,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mindbender",
					["encounterID"] = 2093,
				},
				[47541] = {
					["source"] = "Gædnøk-Bloodfeather",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Глазалин-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Эрталь-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156774] = {
					["source"] = "Маг Оплота Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150122,
				},
				[1850] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["source"] = "Gædnøk-Bloodfeather",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263274] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2094,
				},
				[298894] = {
					["source"] = "Неисправный утильхаунд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151301,
				},
				[300761] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313966] = {
					["source"] = "Writhing Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160499,
				},
				[288356] = {
					["source"] = "Dookthar the Destroyer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147563,
				},
				[287998] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148519,
				},
				[256060] = {
					["type"] = "BUFF",
					["source"] = "Skycap'n Kragg",
					["npcID"] = 126832,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[94719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
				},
				[300129] = {
					["source"] = "Неисправный хламобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152009,
				},
				[212051] = {
					["source"] = "Тэок-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312413] = {
					["source"] = "Black Empire Beheader",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160465,
				},
				[32182] = {
					["source"] = "Kahuna-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270232] = {
					["type"] = "BUFF",
					["source"] = "Миссмурпл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58501] = {
					["type"] = "BUFF",
					["source"] = "Гольвич-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["source"] = "Тэок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["source"] = "Kelami-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298898] = {
					["encounterID"] = 2312,
					["source"] = "Нано Мегабум",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153755,
				},
				[300142] = {
					["source"] = "Skadej-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Авгурей-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Demonwraith",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34827] = {
					["type"] = "BUFF",
					["source"] = "Горьководный солехвост",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131674,
				},
				[8042] = {
					["source"] = "Kahuna-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rat-Mazrigos",
					["npcID"] = 0,
				},
				[300659] = {
					["source"] = "Токсичное чудище",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150168,
				},
				[311185] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Готен",
					["npcID"] = 0,
				},
				[163505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[11974] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141121,
				},
				[301972] = {
					["type"] = "BUFF",
					["source"] = "Инферрнал-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311186] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эшаниэль",
					["npcID"] = 0,
				},
				[193641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[279766] = {
					["source"] = "Toska Eaglehorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140778,
				},
				[44425] = {
					["source"] = "Sheyma-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фионе-Азурегос",
					["npcID"] = 0,
				},
				[231895] = {
					["type"] = "BUFF",
					["source"] = "Elemyre-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Илинес-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Хардбри-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кренайя-Гордунни",
					["encounterID"] = 2101,
				},
				[201695] = {
					["type"] = "BUFF",
					["source"] = "Бастиннда",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[272790] = {
					["source"] = "Akia-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[80353] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinida-Eitrigg",
					["encounterID"] = 2096,
				},
				[204255] = {
					["source"] = "Пакетсахара-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Конрадавр-Гордунни",
					["npcID"] = 0,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Лжегригорий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69791,
				},
				[8921] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Akia-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Gædnøk-Bloodfeather",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Аполанария",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Builds-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эльтиия-Дракономор",
					["npcID"] = 0,
				},
				[283551] = {
					["type"] = "BUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tenskwatawa",
					["npcID"] = 0,
				},
				[79849] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61834,
				},
				[203123] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[203233] = {
					["source"] = "Bazzul-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moepy-Silvermoon",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thylaldan",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Kahuna-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klaw",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Xrias-Exodar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226943] = {
					["source"] = "Ozric",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["source"] = "Bloodripper-Haomarush",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Incarius",
					["npcID"] = 0,
				},
				[257495] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazar-Khadgar",
					["npcID"] = 0,
				},
				[6660] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[295840] = {
					["type"] = "BUFF",
					["source"] = "Кренайя-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[256374] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[258945] = {
					["source"] = "Faithless Sentry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129007,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elon-Khadgar",
					["npcID"] = 0,
				},
				[275366] = {
					["source"] = "Неисправный гориллобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151933,
				},
				[272295] = {
					["type"] = "DEBUFF",
					["source"] = "Alesta-Stormrage",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301351] = {
					["encounterID"] = 2291,
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150190,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ozric",
					["npcID"] = 0,
				},
				[295842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bárti-Aegwynn",
					["npcID"] = 0,
				},
				[264106] = {
					["source"] = "Офник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172] = {
					["source"] = "Офник-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gekko-Khadgar",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лутяга",
					["npcID"] = 0,
				},
				[259711] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель блока",
					["npcID"] = 131445,
				},
				[31687] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кэнвин-Дракономор",
					["npcID"] = 0,
				},
				[293670] = {
					["source"] = "Защитник мастерской",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144299,
				},
				[258338] = {
					["npcID"] = 126847,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Raoul",
					["encounterID"] = 2094,
				},
				[245389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kalaharion-Aegwynn",
					["npcID"] = 0,
				},
				[270598] = {
					["type"] = "BUFF",
					["source"] = "Дикий глубинный жеватель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130916,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Sengirú-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Венран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dafni",
					["npcID"] = 0,
				},
				[200166] = {
					["source"] = "Ascensor-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311202] = {
					["source"] = "Semerkhet-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275371] = {
					["source"] = "Неисправный гориллобот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151933,
				},
				[152262] = {
					["type"] = "BUFF",
					["source"] = "Полупалка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harrouda",
					["npcID"] = 0,
				},
				[339] = {
					["encounterID"] = 2312,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nastasya",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Vinida-Eitrigg",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2095,
				},
				[278826] = {
					["source"] = "Хардбри-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
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
			["login_counter"] = 114,
			["aura_show_aura_by_the_player"] = false,
			["patch_version"] = 9,
			["number_region_first_run"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["health_statusbar_texture"] = "Minimalist",
			["aura_show_enrage"] = true,
			["indicator_enemyclass"] = true,
		},
	},
}
