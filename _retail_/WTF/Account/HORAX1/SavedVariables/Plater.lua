
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
		["Шанами - Вечная Песня"] = "Default",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Unit - Important [Plater]",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["version"] = -1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Cast - Very Important [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["version"] = -1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["version"] = -1,
					["Name"] = "Cast - Big Alert [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Cast - Small Alert [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["version"] = -1,
					["Name"] = "Color Change [Plater]",
					["NpcNames"] = {
						"141851", -- [1]
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Aura - Border Color [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["version"] = -1,
					["Name"] = "UnitPower [Plater]",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["version"] = -1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Fixate [Plater]",
					["NpcNames"] = {
					},
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["version"] = -1,
					["Name"] = "Fixate On You [Plater]",
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
				}, -- [15]
			},
			["aura_cache_by_name"] = {
				["vampiric embrace"] = {
					15286, -- [1]
					15290, -- [2]
					199397, -- [3]
					221721, -- [4]
				},
				["древнее пламя"] = {
					40657, -- [1]
					138015, -- [2]
					144691, -- [3]
					144695, -- [4]
					144699, -- [5]
					295365, -- [6]
					295367, -- [7]
					295369, -- [8]
					295372, -- [9]
					295381, -- [10]
					299348, -- [11]
					299350, -- [12]
					303380, -- [13]
				},
				["очищение зла"] = {
					204197, -- [1]
					204213, -- [2]
					204215, -- [3]
				},
				["знамя орды"] = {
					61574, -- [1]
					70535, -- [2]
					77951, -- [3]
					79064, -- [4]
					81679, -- [5]
					82259, -- [6]
					86591, -- [7]
					87093, -- [8]
					133801, -- [9]
					134106, -- [10]
					135871, -- [11]
					178685, -- [12]
					178687, -- [13]
					178688, -- [14]
					178689, -- [15]
					193926, -- [16]
					270445, -- [17]
				},
				["vampiric touch"] = {
					34914, -- [1]
					52723, -- [2]
					52724, -- [3]
					60501, -- [4]
					65490, -- [5]
					195999, -- [6]
					250037, -- [7]
					284402, -- [8]
				},
				["прикосновение вампира"] = {
					34914, -- [1]
					52723, -- [2]
					52724, -- [3]
					60501, -- [4]
					65490, -- [5]
					195999, -- [6]
					250037, -- [7]
					284402, -- [8]
				},
				["знамя альянса"] = {
					61573, -- [1]
					87214, -- [2]
					133808, -- [3]
					134107, -- [4]
					178686, -- [5]
					178691, -- [6]
					178692, -- [7]
					178693, -- [8]
				},
				["солнечный огонь"] = {
					27981, -- [1]
					89131, -- [2]
					89133, -- [3]
					90919, -- [4]
					93402, -- [5]
					96789, -- [6]
					99626, -- [7]
					129885, -- [8]
					129979, -- [9]
					162628, -- [10]
					164815, -- [11]
					197630, -- [12]
					231050, -- [13]
					255795, -- [14]
					292711, -- [15]
				},
				["взбучка"] = {
					3391, -- [1]
					3417, -- [2]
					8876, -- [3]
					12787, -- [4]
					21919, -- [5]
					54913, -- [6]
					74979, -- [7]
					77758, -- [8]
					106830, -- [9]
					106832, -- [10]
					131657, -- [11]
					131659, -- [12]
					131993, -- [13]
					131994, -- [14]
					131996, -- [15]
					158175, -- [16]
					158176, -- [17]
					158435, -- [18]
					158436, -- [19]
					158723, -- [20]
					158790, -- [21]
					161129, -- [22]
					163040, -- [23]
					164124, -- [24]
					172035, -- [25]
					174081, -- [26]
					174082, -- [27]
					174916, -- [28]
					174917, -- [29]
					177422, -- [30]
					181269, -- [31]
					182846, -- [32]
					192090, -- [33]
					196345, -- [34]
					207487, -- [35]
					211141, -- [36]
					219286, -- [37]
					219339, -- [38]
					220964, -- [39]
					222814, -- [40]
					242323, -- [41]
					250428, -- [42]
					256409, -- [43]
					257266, -- [44]
					257271, -- [45]
					260321, -- [46]
					260322, -- [47]
					261892, -- [48]
					265539, -- [49]
					275043, -- [50]
					292576, -- [51]
					297382, -- [52]
					297383, -- [53]
					300109, -- [54]
					300110, -- [55]
					301061, -- [56]
					308556, -- [57]
					313970, -- [58]
					313971, -- [59]
				},
				["глубокая рана"] = {
					1822, -- [1]
					24331, -- [2]
					24332, -- [3]
					27556, -- [4]
					27638, -- [5]
					36332, -- [6]
					43104, -- [7]
					53499, -- [8]
					54668, -- [9]
					59881, -- [10]
					65406, -- [11]
					89593, -- [12]
					115871, -- [13]
					120560, -- [14]
					125099, -- [15]
					130191, -- [16]
					147396, -- [17]
					155722, -- [18]
					163505, -- [19]
					217369, -- [20]
					223111, -- [21]
					223954, -- [22]
					231052, -- [23]
					239675, -- [24]
					242931, -- [25]
					250393, -- [26]
					262557, -- [27]
					270488, -- [28]
					278733, -- [29]
					283699, -- [30]
					283700, -- [31]
					292610, -- [32]
					292611, -- [33]
					311744, -- [34]
					314568, -- [35]
				},
				["разорвать"] = {
					1079, -- [1]
					33912, -- [2]
					36590, -- [3]
					57661, -- [4]
					59989, -- [5]
					71926, -- [6]
					79829, -- [7]
					126120, -- [8]
					133081, -- [9]
					173299, -- [10]
					188353, -- [11]
					208946, -- [12]
					214686, -- [13]
					251332, -- [14]
					256920, -- [15]
					259873, -- [16]
					275440, -- [17]
					292626, -- [18]
					303378, -- [19]
				},
				["shadow word: pain"] = {
					589, -- [1]
					11639, -- [2]
					14032, -- [3]
					15654, -- [4]
					17146, -- [5]
					19776, -- [6]
					23268, -- [7]
					23952, -- [8]
					24212, -- [9]
					27605, -- [10]
					30854, -- [11]
					30898, -- [12]
					34441, -- [13]
					34941, -- [14]
					34942, -- [15]
					37275, -- [16]
					41355, -- [17]
					46560, -- [18]
					57778, -- [19]
					59864, -- [20]
					60005, -- [21]
					60446, -- [22]
					65541, -- [23]
					72318, -- [24]
					84632, -- [25]
					97642, -- [26]
					134006, -- [27]
					135509, -- [28]
					154477, -- [29]
					164446, -- [30]
					169284, -- [31]
					169827, -- [32]
					175801, -- [33]
					176518, -- [34]
					189874, -- [35]
					195998, -- [36]
					202896, -- [37]
					216514, -- [38]
					222074, -- [39]
					222322, -- [40]
					224089, -- [41]
					242673, -- [42]
					262387, -- [43]
					284401, -- [44]
					314107, -- [45]
					317301, -- [46]
				},
				["поддержка"] = {
					126736, -- [1]
					209859, -- [2]
					275337, -- [3]
					280001, -- [4]
				},
				["слово тьмы: боль"] = {
					589, -- [1]
					11639, -- [2]
					14032, -- [3]
					15654, -- [4]
					17146, -- [5]
					19776, -- [6]
					23268, -- [7]
					23952, -- [8]
					24212, -- [9]
					27605, -- [10]
					30854, -- [11]
					30898, -- [12]
					34441, -- [13]
					34941, -- [14]
					34942, -- [15]
					37275, -- [16]
					41355, -- [17]
					46560, -- [18]
					57778, -- [19]
					59864, -- [20]
					60005, -- [21]
					60446, -- [22]
					65541, -- [23]
					72318, -- [24]
					84632, -- [25]
					97642, -- [26]
					134006, -- [27]
					135509, -- [28]
					154477, -- [29]
					164446, -- [30]
					169284, -- [31]
					169827, -- [32]
					175801, -- [33]
					176518, -- [34]
					189874, -- [35]
					195998, -- [36]
					202896, -- [37]
					216514, -- [38]
					222322, -- [39]
					224089, -- [40]
					242673, -- [41]
					262387, -- [42]
					284401, -- [43]
					314107, -- [44]
					317301, -- [45]
				},
				["purge the wicked"] = {
					204197, -- [1]
					204213, -- [2]
					204215, -- [3]
				},
				["лунный огонь"] = {
					8921, -- [1]
					15798, -- [2]
					20690, -- [3]
					21669, -- [4]
					22206, -- [5]
					23380, -- [6]
					24957, -- [7]
					27737, -- [8]
					31270, -- [9]
					31401, -- [10]
					32373, -- [11]
					32415, -- [12]
					37328, -- [13]
					43545, -- [14]
					45821, -- [15]
					45900, -- [16]
					47072, -- [17]
					52502, -- [18]
					57647, -- [19]
					59987, -- [20]
					65856, -- [21]
					75329, -- [22]
					82816, -- [23]
					101633, -- [24]
					155625, -- [25]
					162623, -- [26]
					164812, -- [27]
					185467, -- [28]
					186624, -- [29]
					208943, -- [30]
					218796, -- [31]
					218797, -- [32]
					224066, -- [33]
					239264, -- [34]
					241130, -- [35]
					241144, -- [36]
					243383, -- [37]
					243829, -- [38]
					277921, -- [39]
					278946, -- [40]
					303027, -- [41]
					311738, -- [42]
				},
				["мощь претендента"] = {
					206150, -- [1]
				},
				["сосредоточенный огонь"] = {
					295368, -- [1]
					295373, -- [2]
					295374, -- [3]
					295375, -- [4]
					295376, -- [5]
					295377, -- [6]
					295378, -- [7]
					295379, -- [8]
					295380, -- [9]
					295384, -- [10]
					299349, -- [11]
					299353, -- [12]
					302564, -- [13]
				},
			},
			["aura_timer"] = false,
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
				[140149] = {
					"Освобожденный крог", -- [1]
					"Око Бури", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151658] = {
					"Танк-долгоног", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152809] = {
					"Алькс'ков Зараженный", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[109908] = {
					"Кошмарное поганище", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151659] = {
					"Ракетный танк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150253] = {
					"Вооруженный робопаук", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[99359] = {
					"Гнилосердный хранитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[138489] = {
					"Тень Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[152939] = {
					"Безграничная порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"Храм Котмогу", -- [2]
				},
				[150254] = {
					"Утильхаунд", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144244] = {
					"\"Платиновый лупцеватор\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[95779] = {
					"Гноешкурый гризли", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[131585] = {
					"Порабощенный стражник", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[153196] = {
					"Ворчун из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[99360] = {
					"Цветущий злошип", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131586] = {
					"Распорядитель банкета", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[144246] = {
					"КУ-ДЖ0", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135167] = {
					"Призрачный берсерк", -- [1]
					"Гробница королей", -- [2]
				},
				[131587] = {
					"Заколдованный капитан", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[160871] = {
					"Одержимая посылка", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[135552] = {
					"Меченный смертью поработитель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[157419] = {
					"Void-Twisted Whelp", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[144248] = {
					"Главный машинист Искроточец", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				[161895] = {
					"Потусторонняя тварь", -- [1]
					"Око Бури", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158315] = {
					"Око хаоса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[103326] = {
					"Esprit de bête", -- [1]
					"Храм Котмогу", -- [2]
				},
				[144249] = {
					"\"Омега-крушитель\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[53006] = {
					"Тотем духовной связи", -- [1]
					"Око Бури", -- [2]
				},
				[137473] = {
					"Капитан стражи Ату", -- [1]
					"Гробница королей", -- [2]
				},
				[156143] = {
					"Заглянувший в Бездну громила", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131847] = {
					"Гуляка из дома Уэйкрестов", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137474] = {
					"Король Тималджи", -- [1]
					"Гробница королей", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131849] = {
					"Обезумевший стрелок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[159598] = {
					"\"Манекен-мишень\"", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131850] = {
					"Обезумевший мастер выживания", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134024] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127497] = {
					"Стражник корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[137989] = {
					"Бальзамировочный состав", -- [1]
					"Гробница королей", -- [2]
				},
				[135048] = {
					"Запачканный кровью поросенок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[99365] = {
					"Скверносерд-лазутчик", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[162030] = {
					"Darkwhisper Ritualist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[152184] = {
					"Orgrimmar Grunt", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135049] = {
					"Грознокрылый ворон", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139269] = {
					"Сумрачный ужас", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[99366] = {
					"Скверносерд-призыватель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150396] = {
					"Воздушное судно R-21/X", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150397] = {
					"Король Мехагон", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134157] = {
					"Тенеликий воин", -- [1]
					"Гробница королей", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150142] = {
					"Хламометатель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134158] = {
					"Тенеликий защитник", -- [1]
					"Гробница королей", -- [2]
				},
				[131601] = {
					"Шеф-повар Даниэль", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150143] = {
					"Перемалыватель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[137484] = {
					"Король А'акул", -- [1]
					"Гробница королей", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131858] = {
					"Шипастый страж", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[156794] = {
					"Поглощенный Тьмой агент ШРУ", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[137485] = {
					"Одержимый кровью шпион", -- [1]
					"Гробница королей", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[156795] = {
					"Осведомитель ШРУ", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150146] = {
					"Шаман из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136976] = {
					"Т'зала", -- [1]
					"Гробница королей", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[161273] = {
					"Abyssal Spawn", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[150276] = {
					"Тяжелый хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158588] = {
					"Гамон", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131607] = {
					"Соусье Самуэль", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131863] = {
					"Раал Прожорливый", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151812] = {
					"Детектобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152324] = {
					"Aldwin Laughlin", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[156161] = {
					"Инквизитор Гншал", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157441] = {
					"Void Wraith", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131611] = {
					"Ротиссье Ронда", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[3527] = {
					"Тотем исцеляющего потока", -- [1]
					"Око Бури", -- [2]
				},
				[134041] = {
					"Зараженный крестьянин", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150154] = {
					"Завролиск-костеглод", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154758] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151945] = {
					"Hyena", -- [1]
					"Храм Котмогу", -- [2]
				},
				[161280] = {
					"Жук", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[136984] = {
					"Ребан", -- [1]
					"Гробница королей", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135322] = {
					"Золотой Змей", -- [1]
					"Гробница королей", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134174] = {
					"Тенеликий колдун", -- [1]
					"Гробница королей", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[150159] = {
					"Король Гоббамак", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[100527] = {
					"Бес ужасающего огня", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[150160] = {
					"Бугай из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127381] = {
					"Ильный краб", -- [1]
					"Тол Дагор", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[2630] = {
					"Тотем оков земли", -- [1]
					"Око Бури", -- [2]
				},
				[105451] = {
					"Тотем контрудара", -- [1]
					"Око Бури", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[136735] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[135329] = {
					"Матрона Бриндл", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[98035] = {
					"Зловещий охотник", -- [1]
					"Гробница королей", -- [2]
				},
				[32517] = {
					"Локе'нахак", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[150547] = {
					"Ворчун из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[100529] = {
					"Порожденный ненавистью слизень", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[42720] = {
					"Haut-trotteur", -- [1]
					"Храм Котмогу", -- [2]
				},
				[150292] = {
					"Мехагонский кавалерист", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157709] = {
					"Dreliana", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150165] = {
					"Жижементаль", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135204] = {
					"Призрачный жрец-проклинатель", -- [1]
					"Гробница королей", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[82308] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150295] = {
					"\"Танкоборец-1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[163978] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[100531] = {
					"Оскверненная кровью ярость", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[161293] = {
					"Заброшенный банк гильдии", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130582] = {
					"Отчаявшийся негодяй", -- [1]
					"Тол Дагор", -- [2]
				},
				[150169] = {
					"Токсичный скрытень", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150297] = {
					"Мехагонский нормализатор", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[159632] = {
					"Сектантка - теневой клинок", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[159633] = {
					"Сектантка-палач", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[156820] = {
					"Дод", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156949] = {
					"Мастер клинка Теренсон", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[157333] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[145185] = {
					"\"Гномогедд-0Н\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151579] = {
					"Генератор защитного поля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153881] = {
					"Conversion Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[89] = {
					"Инфернал", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[151325] = {
					"Тревогобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[153755] = {
					"Нано Мегабум", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[60849] = {
					"Статуя Нефритовой Змеи", -- [1]
					"Око Бури", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[133935] = {
					"Оживший страж", -- [1]
					"Гробница королей", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[161812] = {
					"Faceless Ruiner", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[135470] = {
					"Ака'али Завоевательница", -- [1]
					"Гробница королей", -- [2]
				},
				[157337] = {
					"Spawn of Shad'har", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[161813] = {
					"K'thir Assassin", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[26125] = {
					"Крысобив", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135472] = {
					"Заназал Мудрый", -- [1]
					"Гробница королей", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[24207] = {
					"Войско мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[144296] = {
					"Танк-паук", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[161815] = {
					"K'thir Voidcaller", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135474] = {
					"Ведьма-послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[152993] = {
					"Garona Halforcen", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153377] = {
					"Жижа", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144298] = {
					"\"Оборонобот II\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135475] = {
					"Кула Живодерка", -- [1]
					"Гробница королей", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[144299] = {
					"Защитник мастерской", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144300] = {
					"Жительница Мехагона", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[59764] = {
					"Тотем целительного прилива", -- [1]
					"Око Бури", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[133943] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[144301] = {
					"Живые отходы", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144303] = {
					"СТРАЖ", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[96512] = {
					"Верховный друид Глайдалис", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[157603] = {
					"Капля Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[130655] = {
					"Бобби Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[159266] = {
					"Повелитель порталов", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[158371] = {
					"Зардет Черный Коготь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[157604] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134331] = {
					"Король Рау'ай", -- [1]
					"Гробница королей", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[62131] = {
					"Cat", -- [1]
					"Око Бури", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[157605] = {
					"Подземное щупальце", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152874] = {
					"Вез'окк Беспросветный", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158373] = {
					"Роберто Пуплливербос", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[150190] = {
					"Воздушный подавитель ОУ-8", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157607] = {
					"Безликий призыватель теней", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[99200] = {
					"Дресарон", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[163746] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157609] = {
					"К'тир резчик разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[135231] = {
					"Призрачный громила", -- [1]
					"Гробница королей", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[157610] = {
					"К'тир-поработитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[157483] = {
					"Ysedra the Darkener", -- [1]
					"Halls of Origination", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157356] = {
					"Extractor Thelsara", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[159275] = {
					"Хранительница портала", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[135235] = {
					"Призрачная повелительница животных", -- [1]
					"Гробница королей", -- [2]
				},
				[155951] = {
					"Раффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131527] = {
					"Лорд Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[154161] = {
					"Nogg", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151476] = {
					"\"Взрывотрон Х-80\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[69792] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[155952] = {
					"Саффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[135365] = {
					"Матрона Альма", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[155953] = {
					"К'Таффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135239] = {
					"Призрачная знахарка", -- [1]
					"Гробница королей", -- [2]
				},
				[150712] = {
					"Трикси Искрожгучка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153526] = {
					"Акир-роевик", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[135240] = {
					"Субстанция души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153527] = {
					"Акир - вожак роя", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153531] = {
					"Акир-костекрушитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157368] = {
					"Velinaria", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[158140] = {
					"Бешеная крыса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[134739] = {
					"Голем-чистильщик", -- [1]
					"Гробница королей", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[160699] = {
					"Рассерженный почтоменталь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131545] = {
					"Леди Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135765] = {
					"Тотем потоков", -- [1]
					"Гробница королей", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[160704] = {
					"Капля Бездны в письме", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[129776] = {
					"Faithless Spireguard", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Гробница королей", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[150222] = {
					"Токсикоид", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[148432] = {
					"Тотем неистовства Громораана", -- [1]
					"Око Бури", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[99192] = {
					"Тень Ксавия", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[100526] = {
					"Истерзанный кровопийца", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[105419] = {
					"Ужасный василиск", -- [1]
					"Око Бури", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[101991] = {
					"Обитатель Кошмара", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[100539] = {
					"Скверносерд-стрелок", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[155657] = {
					"Хаффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[140593] = {
					"Restless Horror", -- [1]
					"The Underrot", -- [2]
				},
				[103344] = {
					"Дубосерд", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[156089] = {
					"Акир - повелитель ядов", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158411] = {
					"Нестабильный слуга", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[99358] = {
					"Гнилосердная дриада", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[101679] = {
					"Грозный отравитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[161198] = {
					"Исказитель пространства Душар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[63508] = {
					"Сюэнь", -- [1]
					"Око Бури", -- [2]
				},
				[156653] = {
					"Сгустившийся ужас", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[157608] = {
					"Безликий сокрушитель воли", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[95766] = {
					"Обезумевший остроклюв", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130832] = {
					"Strawberry", -- [1]
					"Око Бури", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[153532] = {
					"Акир - подчинитель разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[160061] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[101074] = {
					"Порожденный ненавистью дракончик", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[155090] = {
					"Анодированный разрядниконосец", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[151638] = {
					"Crazed Earth Rager", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[157904] = {
					"Акир-скарабей", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[55659] = {
					"Дикий бес", -- [1]
					"Гробница королей", -- [2]
				},
				[157137] = {
					"Terror Tendril", -- [1]
					"Halls of Origination", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[151639] = {
					"Crazed Gyreworm", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158157] = {
					"Владыка Матиас Шоу", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[137805] = {
					"Black Blood", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[100820] = {
					"Ящер-элементаль", -- [1]
					"Гробница королей", -- [2]
				},
				[95769] = {
					"Бешеная визгунья", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155094] = {
					"Мехагонский солдат", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157268] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131821] = {
					"Безликая дева", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[17252] = {
					"HaaKrill", -- [1]
					"Гробница королей", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[144293] = {
					"Переработчик отходов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[95771] = {
					"Грозный разрушитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155098] = {
					"Рексар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[123093] = {
					"Scalehide", -- [1]
					"Око Бури", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158168] = {
					"Dark Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[95772] = {
					"Разъяренный коготь ночи", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127486] = {
					"Офицер корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[151649] = {
					"\"Оборонобот I\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158035] = {
					"Магистр Умбрий", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[127488] = {
					"Маг огня корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[151654] = {
					"Дьюс Мехалоск", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Око Бури", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[155656] = {
					"Миша", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Гробница королей", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[164188] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[152396] = {
					"Защитник Азерот", -- [1]
					"Око Бури", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[151657] = {
					"Бомботанк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Око Бури", -- [2]
				},
				[164189] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[157349] = {
					"Вепрь Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136664] = {
					"Sepisko", -- [1]
					"Око Бури", -- [2]
				},
				[125828] = {
					"Ozric", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
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
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
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
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
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
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
					},
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
					["Time"] = 1554138845,
					["PlaterCore"] = 1,
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
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
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
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
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
							2280, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
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
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
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
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
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
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
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
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
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
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
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
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
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
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
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
						["race"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
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
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
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
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
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
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
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
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
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
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
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
					["Time"] = 1553450957,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [14]
			},
			["aura_width"] = 20.53935241699219,
			["aura_show_crowdcontrol"] = true,
			["enable_masque_support"] = true,
			["resources"] = {
				["scale"] = 0.9994834065437317,
				["alpha"] = 0.7977221012115479,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["aura_alpha"] = 0.8045477867126465,
			["first_run3"] = true,
			["transparency_behavior"] = 3,
			["ui_parent_scale_tune"] = 1.538461594891974,
			["aura_show_enrage"] = true,
			["aura_tracker"] = {
				["debuff_tracked"] = {
					[303378] = true,
					[313971] = true,
					[314568] = true,
					[292711] = true,
					[311738] = true,
					[204215] = true,
				},
				["debuff_banned"] = {
					[303380] = true,
					[302564] = true,
					[58180] = true,
				},
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
				["Combo Points"] = 3,
				["Aura Reorder"] = 1,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Attacking Specific Unit"] = 1,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
			},
			["captured_spells"] = {
				[164815] = {
					["source"] = "Гердт-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280375] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Непробивай-Азурегос",
					["npcID"] = 0,
				},
				[53390] = {
					["source"] = "Твое-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[196289] = {
					["source"] = "Воин племени Серой Мглы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147735,
				},
				[315176] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[75148] = {
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Масарахши-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275773] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[257956] = {
					["type"] = "BUFF",
					["source"] = "Джес Хаулис",
					["npcID"] = 127484,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[252071] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сита",
					["npcID"] = 0,
				},
				[119415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мераша-Азурегос",
					["npcID"] = 0,
				},
				[292151] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[130418] = {
					["source"] = "Палач Мохо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147701,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[285500] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[403] = {
					["source"] = "Еленка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэлокруа",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[280385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лориан-Подземье",
					["npcID"] = 0,
				},
				[301367] = {
					["source"] = "Элииналь-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201411] = {
					["source"] = "Бес ужасающего огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100527,
				},
				[268616] = {
					["source"] = "Шунигур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[408] = {
					["source"] = "Sharpié-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261798] = {
					["source"] = "Желчный быстроног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132318,
				},
				[116858] = {
					["source"] = "Эксплаузио-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[250796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Толгольд",
					["npcID"] = 0,
				},
				[200389] = {
					["type"] = "BUFF",
					["source"] = "Мостима-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30478] = {
					["source"] = "Бандит из стаи Речной Лапы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 54371,
				},
				[162264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghaddaffi-Nagrand",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Туули",
					["npcID"] = 0,
				},
				[224186] = {
					["source"] = "Набали-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267085] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сурхат-Азурегос",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[80269] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алтидан",
					["npcID"] = 0,
				},
				[228537] = {
					["source"] = "Лаирендил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301886] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Ямакаська-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270670] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алеос-Корольлич",
					["npcID"] = 0,
				},
				[158940] = {
					["source"] = "Ядовитый чешуйник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130232,
				},
				[118779] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Ригольд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224189] = {
					["source"] = "Святобесёнок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гэймовер",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1715] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[272721] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гатта",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Блиссей",
					["npcID"] = 0,
				},
				[1725] = {
					["source"] = "Трупарожка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288075] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Альсеид",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Варпчва",
					["npcID"] = 0,
				},
				[272723] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оророкор-Дракономор",
					["npcID"] = 0,
				},
				[298823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пестенуар-Дракономор",
					["npcID"] = 0,
				},
				[255152] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гулдамас",
					["npcID"] = 0,
				},
				[309571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[286031] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elumtazar-Kilrogg",
					["npcID"] = 0,
				},
				[302408] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Исшана",
					["npcID"] = 0,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гатта",
					["npcID"] = 0,
				},
				[50259] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[58511] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Томас Миллер",
					["npcID"] = 3518,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[280404] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Реликвия-Ревущийфьорд",
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
				[3561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гачилол",
					["npcID"] = 0,
				},
				[256434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Перчегь",
					["npcID"] = 0,
				},
				[267612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[286547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бздэха-Азурегос",
					["npcID"] = 0,
				},
				[276824] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ёно-ЧерныйШрам",
					["npcID"] = 0,
				},
				[296271] = {
					["source"] = "Лухля-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[203981] = {
					["source"] = "Валарауко-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медоносец-роевик",
					["npcID"] = 154113,
				},
				[287062] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101639] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 4642,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aheris-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Камика-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сузудадая-ЧерныйШрам",
					["npcID"] = 0,
				},
				[271711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[58448] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мазгриша",
					["npcID"] = 0,
				},
				[306511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[280412] = {
					["source"] = "Никотян-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91021] = {
					["source"] = "Шунигур",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волорион",
					["npcID"] = 0,
				},
				[278878] = {
					["source"] = "Хэппиалекс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[256694] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасныйлик",
					["npcID"] = 0,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[253112] = {
					["source"] = "Ладиол",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[226757] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[61391] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[302932] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[159974] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 76672,
				},
				[213708] = {
					["source"] = "Элранис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fearmonger-Ragnaros",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неларос",
					["npcID"] = 0,
				},
				[295258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Масарахши-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ундетрас",
					["npcID"] = 0,
				},
				[201939] = {
					["source"] = "Хокутонокен-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[266091] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270697] = {
					["source"] = "Головорез из братства Волнорезов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129029,
				},
				[279397] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[175841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Румирум-Дракономор",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Смертные",
					["npcID"] = 0,
				},
				[87185] = {
					["source"] = "Страж Тенистого закоулка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34500,
				},
				[252348] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ейна-Азурегос",
					["npcID"] = 0,
				},
				[290145] = {
					["source"] = "Аленси",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193753] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пиромант из клана Черного Железа",
					["npcID"] = 41902,
				},
				[300893] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[98444] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мазолинова",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиппа",
					["npcID"] = 0,
				},
				[125439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лиоритта-Азурегос",
					["npcID"] = 0,
				},
				[82580] = {
					["source"] = "Феяромашка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стаябесова-Азурегос",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Норсекь-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252350] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тратаа-Дракономор",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Масарахши-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мераша-Азурегос",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Furious-Nagrand",
					["npcID"] = 0,
				},
				[225484] = {
					["source"] = "Разъяренный коготь ночи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 95772,
				},
				[58514] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Штормградский стражник",
					["npcID"] = 68,
				},
				[52437] = {
					["source"] = "Кроганварион",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80534] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айсууруву-Азурегос",
					["npcID"] = 0,
				},
				[273264] = {
					["source"] = "Плиссара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80610] = {
					["type"] = "BUFF",
					["source"] = "Разгар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43239,
				},
				[74193] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Соленоплавниковый пловец",
					["npcID"] = 126682,
				},
				[104416] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104407] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрмейс",
					["npcID"] = 0,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[104409] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255040] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104417] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[159982] = {
					["source"] = "Жрица камня Железного Марша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77640,
				},
				[271220] = {
					["source"] = "Крушитель из племени Дыбогривов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131447,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[5217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Шацу",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287597] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104395] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264057] = {
					["source"] = "Хьянти-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131222] = {
					["source"] = "Арбаз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[229837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[310530] = {
					["type"] = "BUFF",
					["source"] = "Ворамсалам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190892] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193759] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Найларра-Гордунни",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Халумэйнэ-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255072] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252106] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191004] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298347] = {
					["source"] = "Струящийся волноход",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153998,
				},
				[255086] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8112] = {
					["type"] = "BUFF",
					["source"] = "Лиоген-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224721] = {
					["source"] = "Мистик из племени Пронзающего Копья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147426,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эске",
					["npcID"] = 0,
				},
				[299753] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[257424] = {
					["type"] = "BUFF",
					["source"] = "Фарет",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252356] = {
					["source"] = "Найссик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66448] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Визериз-СвежевательДуш",
					["npcID"] = 0,
				},
				[88342] = {
					["source"] = "Мка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289650] = {
					["source"] = "Желчетоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148428,
				},
				[32752] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Зловещий охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[257127] = {
					["source"] = "Мка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256451] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[306539] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[313571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[257101] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198368] = {
					["source"] = "Миссинио-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256452] = {
					["source"] = "Исмори",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Крашлэйт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201695] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Глебоэль",
					["npcID"] = 0,
				},
				[257107] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сапер",
					["npcID"] = 134426,
				},
				[77851] = {
					["type"] = "BUFF",
					["source"] = "Хдыщь-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102543] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Шунигур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Urzuz-Aegwynn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279470] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140914,
				},
				[257102] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[257095] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271433] = {
					["source"] = "Беляев",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256198] = {
					["type"] = "BUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[298357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[286587] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278911] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[273794] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луранэль-Азурегос",
					["npcID"] = 0,
				},
				[256199] = {
					["type"] = "BUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[282482] = {
					["type"] = "BUFF",
					["source"] = "Мка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259448] = {
					["type"] = "BUFF",
					["source"] = "Тотемвпуть",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[257223] = {
					["source"] = "Древоклык-охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129624,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Савуша",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Хьянти-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300919] = {
					["source"] = "Колторп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256200] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Давионд-СвежевательДуш",
					["npcID"] = 0,
				},
				[78754] = {
					["source"] = "Разведчик Ясеневого леса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34177,
				},
				[126892] = {
					["type"] = "BUFF",
					["source"] = "Зигвуд-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89751] = {
					["source"] = "Акингорил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[259408] = {
					["source"] = "Скат-илоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126677,
				},
				[235599] = {
					["type"] = "BUFF",
					["source"] = "Галакрондор-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[256201] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[180733] = {
					["source"] = "Голдраф-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256955] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[13005] = {
					["source"] = "Зеленый паладин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32342,
				},
				[315763] = {
					["source"] = "Лаирендил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29385] = {
					["type"] = "BUFF",
					["source"] = "Зеленый паладин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32342,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фредрикс",
					["npcID"] = 0,
				},
				[225497] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 99359,
				},
				[46747] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Усуги",
					["npcID"] = 0,
				},
				[69070] = {
					["source"] = "Хахапра-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256970] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[196099] = {
					["type"] = "BUFF",
					["source"] = "Гаркин-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["source"] = "Лаирендил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279943] = {
					["source"] = "Элранис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59008] = {
					["source"] = "Жилистый волк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 31233,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yræ-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гремория",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49020] = {
					["source"] = "Ямакаська-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Луранэль-Азурегос",
					["npcID"] = 0,
				},
				[6713] = {
					["source"] = "Золотой воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32322,
				},
				[585] = {
					["source"] = "Хилнеоч-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35361] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31228,
				},
				[59843] = {
					["type"] = "BUFF",
					["source"] = "Нюфаня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fappii-Nagrand",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Водопадик-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Акингорил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Федориус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286305] = {
					["type"] = "DEBUFF",
					["source"] = "Варок Саурфанг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146011,
				},
				[18968] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 4329,
				},
				[16953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[53755] = {
					["type"] = "BUFF",
					["source"] = "Robyates-Turalyon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Вишари-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43198] = {
					["type"] = "BUFF",
					["source"] = "Ногойвлицо",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 1554,
				},
				[169464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оророкор-Дракономор",
					["npcID"] = 0,
				},
				[210660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Архойм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Мшеук-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[77216] = {
					["source"] = "Ружейница из Караноса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41182,
				},
				[199658] = {
					["source"] = "Кроганварион",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["source"] = "Сплетенный проклятием голем",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137129,
				},
				[273298] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сайлес",
					["npcID"] = 0,
				},
				[290640] = {
					["source"] = "Слухостопие-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Ворчуча-Азурегос",
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
				[272276] = {
					["source"] = "Kefka-Baelgun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15532] = {
					["source"] = "Золотой маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32341,
				},
				[12611] = {
					["source"] = "Золотой маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32341,
				},
				[14514] = {
					["type"] = "BUFF",
					["source"] = "Золотой маг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32341,
				},
				[200182] = {
					["encounterID"] = 1839,
					["source"] = "Тень Ксавия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99192,
				},
				[225503] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90854] = {
					["type"] = "BUFF",
					["source"] = "Агмасс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277907] = {
					["source"] = "Гладиатор из клана Соленой Чешуи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129252,
				},
				[228318] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маг огня корпорации Эшвейнов",
					["npcID"] = 127488,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[132621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арканида-Азурегос",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ута-Дракономор",
					["npcID"] = 0,
				},
				[200684] = {
					["source"] = "Грозный отравитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101679,
				},
				[6795] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58519] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Штормградский стражник",
					["npcID"] = 68,
				},
				[279956] = {
					["source"] = "Крашлэйт",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180750] = {
					["type"] = "BUFF",
					["source"] = "Мегабрюх-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Нюфаня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лысыийз",
					["npcID"] = 0,
				},
				[295310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[43939] = {
					["type"] = "BUFF",
					["source"] = "Валгардская жрица",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24099,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Висмутви",
					["npcID"] = 0,
				},
				[256220] = {
					["source"] = "Феделмид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264606] = {
					["type"] = "BUFF",
					["source"] = "Милашкаю-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206760] = {
					["source"] = "Шунигур",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["source"] = "Сть-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[33625] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[11640] = {
					["type"] = "BUFF",
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32343,
				},
				[17843] = {
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32343,
				},
				[269214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[175867] = {
					["source"] = "Фрейсварт-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272285] = {
					["source"] = "Повелительница лоз Смагх",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132160,
				},
				[15786] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[20824] = {
					["source"] = "Огр-маг с перевала Мертвого Ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 7379,
				},
				[20615] = {
					["type"] = "DEBUFF",
					["source"] = "Золотой воин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32322,
				},
				[27577] = {
					["source"] = "Золотой воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32322,
				},
				[32911] = {
					["source"] = "Призванный Тотем неистовства ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 22897,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[306629] = {
					["source"] = "Друг Пронк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149911,
				},
				[39586] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[12470] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[233952] = {
					["source"] = "Залп Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 115747,
				},
				[29544] = {
					["type"] = "DEBUFF",
					["source"] = "Золотой воин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32322,
				},
				[29332] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пестенуар-Дракономор",
					["npcID"] = 0,
				},
				[315787] = {
					["source"] = "Рысяш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[19134] = {
					["source"] = "Золотой воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32322,
				},
				[147362] = {
					["source"] = "Аленси",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Танжыро",
					["npcID"] = 0,
				},
				[44415] = {
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32343,
				},
				[14032] = {
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32343,
				},
				[23600] = {
					["source"] = "Золотой воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32322,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[212460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повелитель Скверны",
					["npcID"] = 107024,
				},
				[673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гадинус-Дракономор",
					["npcID"] = 0,
				},
				[81954] = {
					["type"] = "BUFF",
					["source"] = "Зараженная дриада",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40168,
				},
				[153865] = {
					["source"] = "Морара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49309] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[316814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Молвер",
					["npcID"] = 0,
				},
				[216043] = {
					["source"] = "Шар'тос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 108678,
				},
				[53595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[257495] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[259798] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Текущий мед",
					["npcID"] = 131663,
				},
				[271287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Высвобожденная энергия шторма",
					["npcID"] = 141123,
				},
				[202225] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чипшотина-Азурегос",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215607] = {
					["type"] = "BUFF",
					["source"] = "Крусадерос-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рейвенхолдт",
					["npcID"] = 0,
				},
				[215598] = {
					["type"] = "BUFF",
					["source"] = "Крусадерос-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["type"] = "BUFF",
					["source"] = "Крусадерос-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256217] = {
					["source"] = "Феделмид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[135700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[256219] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дантерсмонха",
					["npcID"] = 0,
				},
				[68054] = {
					["source"] = "Дживс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[59480] = {
					["source"] = "Зарианис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2782] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[48247] = {
					["source"] = "Зарианис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57706] = {
					["source"] = "Зарианис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[171701] = {
					["source"] = "Шагарт-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295838] = {
					["source"] = "Лаирендил",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260908] = {
					["source"] = "Джи'арак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132253,
				},
				[182928] = {
					["source"] = "Шагарт-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[61336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[20473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[274346] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225514] = {
					["source"] = "Заклинатель моря из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131303,
				},
				[295840] = {
					["source"] = "Лаирендил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275882] = {
					["source"] = "Эттин-землекрушитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136421,
				},
				[193530] = {
					["source"] = "Аленси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шрайя-Голдринн",
					["npcID"] = 0,
				},
				[124210] = {
					["type"] = "BUFF",
					["source"] = "Инфик-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273836] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Долориил-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шпронька",
					["npcID"] = 0,
				},
				[59547] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197625] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хати",
					["npcID"] = 151147,
				},
				[175844] = {
					["type"] = "BUFF",
					["source"] = "Шагомор-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[275863] = {
					["source"] = "Скартан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303520] = {
					["source"] = "Святый-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Селфирот",
					["npcID"] = 0,
				},
				[316826] = {
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[29333] = {
					["type"] = "BUFF",
					["source"] = "Аззалия-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262581] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292263] = {
					["source"] = "Бронированный клешневик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150644,
				},
				[267288] = {
					["source"] = "Шаманка Служителей Земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135671,
				},
				[272817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хелмфрид",
					["npcID"] = 0,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белнаара",
					["npcID"] = 0,
				},
				[44769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глебоэль",
					["npcID"] = 0,
				},
				[21401] = {
					["source"] = "Золотой шаман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32340,
				},
				[33907] = {
					["type"] = "BUFF",
					["source"] = "Бролл Медвежья Шкура",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142294,
				},
				[185857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морпех корпорации Эшвейнов",
					["npcID"] = 130027,
				},
				[265931] = {
					["source"] = "Эксплаузио-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264119] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[147732] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194509] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255593] = {
					["source"] = "Бухтовый крепкозуб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123226,
				},
				[1943] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69591] = {
					["source"] = "Солдат картеля Трюмных Вод",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 36925,
				},
				[310690] = {
					["source"] = "Ямакаська-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311202] = {
					["source"] = "Делавреале-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неотеннка-Гордунни",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Гердт-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[69526] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36902,
				},
				[187650] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глагольев-Гордунни",
					["npcID"] = 0,
				},
				[93985] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[6907] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3928,
				},
				[17963] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34366,
				},
				[262588] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[252387] = {
					["source"] = "Твое-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Акингорил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[24337] = {
					["source"] = "Стерегущий часовой",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41854,
				},
				[201361] = {
					["source"] = "Истерзанный кровопийца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100526,
				},
				[7978] = {
					["source"] = "Гоблин-техник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 35333,
				},
				[316835] = {
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[288689] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[195072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулури",
					["npcID"] = 0,
				},
				[44770] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глебоэль",
					["npcID"] = 0,
				},
				[261088] = {
					["source"] = "Джи'арак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132253,
				},
				[81420] = {
					["type"] = "DEBUFF",
					["source"] = "Гном-инженер",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35334,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[78346] = {
					["type"] = "BUFF",
					["source"] = "Поалиса-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Ямакаська-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55173] = {
					["source"] = "Дэсха-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295856] = {
					["source"] = "Защитник Азерот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[49376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ута-Дракономор",
					["npcID"] = 0,
				},
				[287827] = {
					["source"] = "Архойм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18501] = {
					["type"] = "BUFF",
					["source"] = "Разъяренный кодо",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36094,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кофешлёп-Дракономор",
					["npcID"] = 0,
				},
				[260066] = {
					["type"] = "DEBUFF",
					["source"] = "Бобби Хаулис",
					["npcID"] = 130655,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[256228] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нагорный козел",
					["npcID"] = 138316,
				},
				[81193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Призрачное видение",
					["npcID"] = 4472,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yræ-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[79892] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 5461,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[261602] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Микофе-Дракономор",
					["npcID"] = 0,
				},
				[12544] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 875,
				},
				[260067] = {
					["npcID"] = 130655,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бобби Хаулис",
					["encounterID"] = 2102,
				},
				[74504] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7726,
				},
				[42131] = {
					["source"] = "Стражник Ласитер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 4973,
				},
				[23161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Орриго",
					["npcID"] = 0,
				},
				[29334] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Выключайник-Дракономор",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Халумэйнэ-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318378] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэлдо-Азурегос",
					["npcID"] = 0,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[235614] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 118512,
				},
				[273345] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пробужденный страж моря",
					["npcID"] = 138857,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Матезалка",
					["npcID"] = 0,
				},
				[274369] = {
					["source"] = "Тебесладко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299445] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арканн-Дракономор",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уллькактус",
					["npcID"] = 0,
				},
				[19483] = {
					["source"] = "Инфернал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мистекал",
					["npcID"] = 0,
				},
				[68996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хабари",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Эйления",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[67768] = {
					["type"] = "BUFF",
					["source"] = "Джейсфер-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242926] = {
					["source"] = "Капитан разведчиков Серокнопс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148198,
				},
				[51322] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34866,
				},
				[194310] = {
					["source"] = "Thyraliøn-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[9080] = {
					["source"] = "Громила из племени Зловещего Тотема",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11912,
				},
				[262602] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[15039] = {
					["source"] = "Огр-маг с перевала Мертвого Ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 7379,
				},
				[274373] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Катинелла-Азурегос",
					["npcID"] = 0,
				},
				[60195] = {
					["source"] = "Наемница из племени Зловещего Тотема",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11911,
				},
				[275909] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[818] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нюфаня",
					["npcID"] = 0,
				},
				[256233] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лоорд",
					["npcID"] = 0,
				},
				[304056] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Развалюшн",
					["npcID"] = 0,
				},
				[45444] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79852] = {
					["source"] = "Наемник из племени Зловещего Тотема",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11911,
				},
				[262720] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[299759] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[177936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оророкор-Дракономор",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["source"] = "Хилнеоч-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нубарс-Азурегос",
					["npcID"] = 0,
				},
				[65628] = {
					["type"] = "BUFF",
					["source"] = "Пленный иглогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34523,
				},
				[299760] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[242929] = {
					["source"] = "Тизали Ворона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 119077,
				},
				[23214] = {
					["source"] = "Лордэйн-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[5280] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3112,
				},
				[288074] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сиртак-Азурегос",
					["npcID"] = 0,
				},
				[236021] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хават",
					["npcID"] = 0,
				},
				[185358] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страшило-Гром",
					["npcID"] = 0,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294384] = {
					["type"] = "BUFF",
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78894] = {
					["source"] = "Разведчик Ясеневого леса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34177,
				},
				[22842] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[304062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жуткий капитан де Меза",
					["npcID"] = 154335,
				},
				[256748] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Крашлэйт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242931] = {
					["source"] = "Тизали Ворона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 119077,
				},
				[81340] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29175] = {
					["source"] = "Дэррина-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19082] = {
					["source"] = "Репали-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эритроцит",
					["npcID"] = 0,
				},
				[106785] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[88845] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 47724,
				},
				[65191] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34302,
				},
				[53142] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ацетил-Дракономор",
					["npcID"] = 0,
				},
				[160029] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мильсторм",
					["npcID"] = 0,
				},
				[256750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[81454] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43546,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285644] = {
					["source"] = "Неальянс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Хотхард-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298950] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уллькактус",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[11972] = {
					["source"] = "Рубака из клана Песни Войны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11682,
				},
				[94632] = {
					["type"] = "BUFF",
					["source"] = "Мэлииан",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298951] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6942] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3759,
				},
				[24394] = {
					["type"] = "DEBUFF",
					["source"] = "Тенекоготь",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 2175,
				},
				[19708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луранэль-Азурегос",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Глебоэль",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Эльудиро-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[348] = {
					["source"] = "Шавушкер-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[270295] = {
					["source"] = "Грабитель из племени Дыбогривов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128994,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ангелринн",
					["npcID"] = 0,
				},
				[132653] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148361,
				},
				[12169] = {
					["source"] = "Часовой Сторожевого холма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 42407,
				},
				[270296] = {
					["source"] = "Капитан Остроспин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130897,
				},
				[883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стоунвульф-Дракономор",
					["npcID"] = 0,
				},
				[258544] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анумрама-Дракономор",
					["npcID"] = 0,
				},
				[65215] = {
					["source"] = "Лорд Магматар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34295,
				},
				[295373] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[62856] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 33356,
				},
				[257777] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[3593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Синдорела-Голдринн",
					["npcID"] = 0,
				},
				[3562] = {
					["source"] = "Хрюша-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76479] = {
					["type"] = "BUFF",
					["source"] = "Мелайнира-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34828] = {
					["type"] = "DEBUFF",
					["source"] = "Колдунья из клана Зловещего Хвоста",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3717,
				},
				[8599] = {
					["type"] = "BUFF",
					["source"] = "Светлолапый бегун",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3823,
				},
				[295137] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261616] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кэти Штемпельпупс",
					["npcID"] = 132969,
				},
				[171804] = {
					["type"] = "BUFF",
					["source"] = "Архистер",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7178] = {
					["type"] = "BUFF",
					["source"] = "Мэлииан",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17205] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7441,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буддхи-Дракономор",
					["npcID"] = 0,
				},
				[256755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[303053] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Исшана",
					["npcID"] = 0,
				},
				[5171] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неотеннка-Гордунни",
					["npcID"] = 0,
				},
				[80689] = {
					["source"] = "Януб-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Ворчуча-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Добролюбов",
					["npcID"] = 0,
				},
				[295378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наиля-Дракономор",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[256756] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[228354] = {
					["source"] = "Архойм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13585] = {
					["type"] = "BUFF",
					["source"] = "Шаман из племени Мертвого Леса",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7158,
				},
				[224772] = {
					["source"] = "Набали-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48101] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хантердемон",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[265187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[256757] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[167164] = {
					["source"] = "Беспокойный камень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134966,
				},
				[285496] = {
					["source"] = "Архойм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216044] = {
					["source"] = "Шар'тос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 108678,
				},
				[298452] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кебехет",
					["npcID"] = 0,
				},
				[137427] = {
					["source"] = "Лор'данелская часовая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32969,
				},
				[297941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Твийтато",
					["npcID"] = 0,
				},
				[256758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[280542] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папсик",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[17227] = {
					["source"] = "Авгур из племени Кривой Сосны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2011,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Развалюшн",
					["npcID"] = 0,
				},
				[280543] = {
					["source"] = "Хартиус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гронв",
					["npcID"] = 0,
				},
				[258974] = {
					["type"] = "DEBUFF",
					["source"] = "Бальдерик-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286342] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йокоми-Гордунни",
					["npcID"] = 0,
				},
				[132404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Дэйтэри-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меднозубый волчонок",
					["npcID"] = 144494,
				},
				[157736] = {
					["source"] = "Эксплаузио-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэлдо-Азурегос",
					["npcID"] = 0,
				},
				[290246] = {
					["type"] = "BUFF",
					["source"] = "Иллюмиэлла-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256760] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[280546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hoho-Runetotem",
					["npcID"] = 0,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[275429] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туули",
					["npcID"] = 0,
				},
				[178207] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[8995] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный ружейник",
					["npcID"] = 42155,
				},
				[152108] = {
					["source"] = "Эксплаузио-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Обгалдырь",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Валарауко-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202004] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шрайя-Голдринн",
					["npcID"] = 0,
				},
				[286296] = {
					["source"] = "Заклинательница Бездны из 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148778,
				},
				[257785] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[280549] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Савуша",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54431] = {
					["source"] = "Волнолов из племени Серой Мглы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147736,
				},
				[256762] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[270380] = {
					["source"] = "Палач Мохо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147701,
				},
				[108199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[244811] = {
					["source"] = "Налетчик из племени Пронзающего Копья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147423,
				},
				[196376] = {
					["type"] = "DEBUFF",
					["source"] = "Верховный друид Глайдалис",
					["encounterID"] = 1836,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96512,
				},
				[159786] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ивасик",
					["npcID"] = 17447,
				},
				[281117] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["type"] = "BUFF",
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73630] = {
					["type"] = "BUFF",
					["source"] = "Памело-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[30848] = {
					["type"] = "BUFF",
					["source"] = "Памело-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Лирс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304605] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Морозная",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ундетрас",
					["npcID"] = 0,
				},
				[308188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Илидданка",
					["npcID"] = 0,
				},
				[256764] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ачтовыдумали",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Грациозна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278508] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 140925,
				},
				[19705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Импруув-Дракономор",
					["npcID"] = 0,
				},
				[203846] = {
					["source"] = "Ангелринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Ворчуча-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Монех",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262645] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[304603] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252351] = {
					["source"] = "Ночевзора",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256221] = {
					["source"] = "Феделмид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[182993] = {
					["type"] = "BUFF",
					["source"] = "Ддворфыч",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36589] = {
					["type"] = "BUFF",
					["source"] = "Жилистый волк",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31233,
				},
				[313310] = {
					["source"] = "Попкилик-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290360] = {
					["source"] = "Киркиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290361] = {
					["source"] = "Киркиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Морозная",
					["npcID"] = 0,
				},
				[294966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[300761] = {
					["source"] = "Регилион-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2538] = {
					["source"] = "Изиида-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Страшило-Гром",
					["npcID"] = 0,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хати",
					["npcID"] = 151147,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вратук",
					["npcID"] = 0,
				},
				[47528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[257791] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[38557] = {
					["source"] = "Разведчик из племени Мерзлогривов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41175,
				},
				[8258] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 41181,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Феладрин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298985] = {
					["source"] = "Провидец из племени Черного Плавника",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148475,
				},
				[168700] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Катаришка",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[48168] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49784,
				},
				[303080] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хисол-Гордунни",
					["npcID"] = 0,
				},
				[82836] = {
					["source"] = "Следопыт из клана Черной горы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 615,
				},
				[79934] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43350,
				},
				[302392] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Газлоу",
					["npcID"] = 155437,
				},
				[303593] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153738,
				},
				[279541] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[257793] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[81455] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43546,
				},
				[207289] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Покаженаспит",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222501] = {
					["source"] = "Матрос 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135858,
				},
				[1022] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фритта-Дракономор",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Обгалдырь",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[8212] = {
					["source"] = "Люстера",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55900] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алконостия",
					["npcID"] = 0,
				},
				[18328] = {
					["source"] = "Морской волк Штормграда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 76085,
				},
				[80576] = {
					["source"] = "Разведчица Железного Марша",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 76886,
				},
				[262145] = {
					["source"] = "Воинственная налетчица",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148179,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хисол-Гордунни",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[285514] = {
					["source"] = "Хотхард-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фритта-Дракономор",
					["npcID"] = 0,
				},
				[168699] = {
					["source"] = "Мокрык Чернопал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 73459,
				},
				[75068] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Черный поработитель",
					["npcID"] = 42043,
				},
				[193315] = {
					["source"] = "Крашлэйт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257028] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь-капитан Валири",
					["encounterID"] = 2103,
				},
				[160055] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77790,
				},
				[197908] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Часть",
					["npcID"] = 0,
				},
				[85288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Варпчва",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[278876] = {
					["source"] = "Аорра-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272945] = {
					["source"] = "Колторп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хисол-Гордунни",
					["npcID"] = 0,
				},
				[66497] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83867] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1488,
				},
				[273714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[176111] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Масарахши-Седогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[226325] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83864] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43223,
				},
				[279490] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247563] = {
					["source"] = "Форэвэрбэст",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[262664] = {
					["source"] = "Офицер из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133635,
				},
				[201250] = {
					["source"] = "Оскверненная кровью ярость",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100531,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кризалиса",
					["npcID"] = 0,
				},
				[197051] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156079] = {
					["source"] = "Илиоса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271877] = {
					["source"] = "Слэб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8852] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 44161,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Добролюбов",
					["npcID"] = 0,
				},
				[254473] = {
					["source"] = "Палочел",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11970] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Порабощенный поджигатель",
					["npcID"] = 46838,
				},
				[226327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зулури",
					["npcID"] = 0,
				},
				[16739] = {
					["source"] = "Сетикристали-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279555] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[243471] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 119077,
				},
				[184364] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Масаврелиус",
					["npcID"] = 0,
				},
				[202168] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[78397] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Похититель детенышей из клана Драконьей Пасти",
					["npcID"] = 42041,
				},
				[289349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Фельта-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5784] = {
					["source"] = "Феяромашка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Офицер корпорации Эшвейнов",
					["npcID"] = 127486,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[93622] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[203812] = {
					["source"] = "Сетикристали-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нейролепсия-Ревущийфьорд",
					["npcID"] = 0,
				},
				[178740] = {
					["source"] = "Валарауко-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[86603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гавин Малсбери",
					["npcID"] = 61838,
				},
				[225562] = {
					["encounterID"] = 1838,
					["source"] = "Оскверненный кровью взрывень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100532,
				},
				[261092] = {
					["source"] = "Джи'арак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132253,
				},
				[81219] = {
					["source"] = "Пехотинец Окрил'лона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 42359,
				},
				[274443] = {
					["source"] = "Мокмаф-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289284] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Альсеид",
					["npcID"] = 0,
				},
				[291843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[273932] = {
					["source"] = "Ресторатор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139358,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[300832] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Колябомж-Азурегос",
					["npcID"] = 0,
				},
				[246852] = {
					["source"] = "Аленси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22910] = {
					["source"] = "Разведчик Ясеневого леса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34177,
				},
				[203814] = {
					["source"] = "Миссисмунк-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[2367] = {
					["type"] = "BUFF",
					["source"] = "Арлония-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[219167] = {
					["source"] = "Лишайниковый завролиск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123868,
				},
				[31290] = {
					["source"] = "Лор'данелская часовая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32969,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[263725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алеос-Корольлич",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273424] = {
					["source"] = "Шунигур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[229872] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[200642] = {
					["source"] = "Грозный разрушитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95771,
				},
				[13730] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Командир Эскивел",
					["npcID"] = 43912,
				},
				[21343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буховский",
					["npcID"] = 0,
				},
				[292360] = {
					["type"] = "BUFF",
					["source"] = "Заклак-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[264178] = {
					["source"] = "Хьянти-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259597] = {
					["source"] = "Равазавр-лютогрив",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122504,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Друухил-Ревущийфьорд",
					["npcID"] = 0,
				},
				[200630] = {
					["source"] = "Бешеная визгунья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95769,
				},
				[260365] = {
					["source"] = "Королевское Перо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139365,
				},
				[225822] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Легна-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19514] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49808,
				},
				[299805] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kyashan-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Типотоп-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["source"] = "Элранис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260366] = {
					["source"] = "Королевское Перо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139365,
				},
				[297993] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гэнжа-Дракономор",
					["npcID"] = 0,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Асмадэос-СвежевательДуш",
					["npcID"] = 0,
				},
				[169567] = {
					["source"] = "Цепкая лоза",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129806,
				},
				[283167] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Охорок-Галакронд",
					["npcID"] = 0,
				},
				[77761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крукс",
					["npcID"] = 0,
				},
				[225568] = {
					["source"] = "Скверносерд-призыватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99366,
				},
				[297995] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буддхи-Дракономор",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Фейтфул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160832] = {
					["source"] = "Ликуба",
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
				[263197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тяжелое орудие",
					["npcID"] = 133972,
				},
				[188625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Захватчица-рубака",
					["npcID"] = 135860,
				},
				[294926] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[236060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[258317] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Офицер корпорации Эшвейнов",
					["npcID"] = 127486,
				},
				[246807] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вернонссиэль-СтражСмерти",
					["npcID"] = 0,
				},
				[5116] = {
					["source"] = "Эльудиро-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77762] = {
					["source"] = "Хотхард-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[9053] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пепельный маг из клана Черного Железа",
					["npcID"] = 41272,
				},
				[273934] = {
					["source"] = "Ресторатор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139358,
				},
				[1680] = {
					["source"] = "Кроганварион",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Кельтузаат-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258200] = {
					["source"] = "Стрелок из племени Шипошкурых",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129750,
				},
				[262094] = {
					["source"] = "Ллюдочка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэрилия-Азурегос",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Валарауко-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 1802,
				},
				[285719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чудокуст",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туули",
					["npcID"] = 0,
				},
				[212283] = {
					["source"] = "Шунигур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281114] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285720] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лэссия-Гордунни",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вуури-Гордунни",
					["npcID"] = 0,
				},
				[255977] = {
					["source"] = "Ворон-костеклюй",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124382,
				},
				[58472] = {
					["source"] = "Гарола-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254486] = {
					["source"] = "Озарко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Плиссара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255975] = {
					["source"] = "Ворон-костеклюй",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124382,
				},
				[281116] = {
					["type"] = "BUFF",
					["source"] = "Трейтон-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[1330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[276840] = {
					["source"] = "Лирс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["source"] = "Элранис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Налиика-Гром",
					["npcID"] = 0,
				},
				[193333] = {
					["source"] = "Десмайл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кристэллия-Дракономор",
					["npcID"] = 0,
				},
				[262695] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[224806] = {
					["source"] = "Желчетоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148428,
				},
				[77764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[199412] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225574] = {
					["type"] = "DEBUFF",
					["source"] = "Репсодия-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[131924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ивинир",
					["npcID"] = 0,
				},
				[280608] = {
					["source"] = "Шамалия-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Масаврелиус",
					["npcID"] = 0,
				},
				[275398] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[35377] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Порабощенный поджигатель",
					["npcID"] = 46838,
				},
				[298009] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мьезмер",
					["npcID"] = 0,
				},
				[316944] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257258] = {
					["source"] = "Плетеный захватчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129768,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Галаросе",
					["npcID"] = 58960,
				},
				[15090] = {
					["source"] = "Золотая жрица",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32325,
				},
				[304663] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тольконеэль",
					["npcID"] = 0,
				},
				[155722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[287802] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Архойм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[318219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Ворчуча-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273960] = {
					["source"] = "Ресторатор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139358,
				},
				[197385] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258278] = {
					["source"] = "Колторп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Лирс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["source"] = "Бассхолдер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83523] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32182] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хати",
					["npcID"] = 151147,
				},
				[319241] = {
					["source"] = "Лаирендил",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уорфорд",
					["npcID"] = 0,
				},
				[289315] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морозная",
					["npcID"] = 0,
				},
				[306715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бьямба-Дракономор",
					["npcID"] = 0,
				},
				[58461] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Захватчик из клана Черного Железа",
					["npcID"] = 41924,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Серог-Дракономор",
					["npcID"] = 0,
				},
				[298016] = {
					["source"] = "Киркиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11396] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Выключайник-Дракономор",
					["npcID"] = 0,
				},
				[258075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жалящий паразит",
					["npcID"] = 127480,
				},
				[270302] = {
					["source"] = "Дозорный из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130073,
				},
				[160331] = {
					["source"] = "Уриэлька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267553] = {
					["source"] = "Пчелопотам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134147,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Серог-Дракономор",
					["npcID"] = 0,
				},
				[312107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[1122] = {
					["source"] = "Шавушкер-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[219909] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 110350,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Хэппиалекс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278931] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295186] = {
					["source"] = "Попкилик-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197690] = {
					["source"] = "Селамерекс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259302] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсерк-ветеран",
					["npcID"] = 140494,
				},
				[313663] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8680] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278574] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287274] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеткокос",
					["npcID"] = 0,
				},
				[79175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Краб гавани",
					["npcID"] = 44116,
				},
				[73162] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Залатар",
					["npcID"] = 0,
				},
				[296750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Исшана",
					["npcID"] = 0,
				},
				[272156] = {
					["source"] = "Ужасень Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136403,
				},
				[61353] = {
					["source"] = "Дагна Кремневое Ружье",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 96779,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стималекс-Галакронд",
					["npcID"] = 0,
				},
				[228050] = {
					["source"] = "Страж забытой королевы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 114565,
				},
				[84165] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Голем клана Черного Железа",
					["npcID"] = 42008,
				},
				[265271] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Boulder Caster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137078,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сузудадая-ЧерныйШрам",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elumtazar-Kilrogg",
					["npcID"] = 0,
				},
				[299789] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Белнаара",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пранкерша",
					["npcID"] = 0,
				},
				[231724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ворсекса-Гордунни",
					["npcID"] = 0,
				},
				[79176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Краб гавани",
					["npcID"] = 44116,
				},
				[215860] = {
					["source"] = "Шар'тос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 108678,
				},
				[9941] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7032,
				},
				[268856] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мяфмур",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148541] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[204852] = {
					["source"] = "Обитатель Кошмара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101991,
				},
				[181062] = {
					["source"] = "Динна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200658] = {
					["source"] = "Грозный разрушитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95771,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fearmonger-Ragnaros",
					["npcID"] = 0,
				},
				[60842] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11911,
				},
				[44530] = {
					["source"] = "Голодный боевой вепрь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130130,
				},
				[115767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[260384] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ляйшен-Дракономор",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[244776] = {
					["source"] = "Янтарная Клешня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147744,
				},
				[130736] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[271439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дирижабль-бомбардировщик",
					["npcID"] = 136957,
				},
				[271896] = {
					["source"] = "Слэб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Соратник-кузнец - Альянс",
					["npcID"] = 88403,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[183111] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104091,
				},
				[275540] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[298343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[257827] = {
					["type"] = "BUFF",
					["source"] = "Джес Хаулис",
					["npcID"] = 127484,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[200620] = {
					["source"] = "Разъяренный коготь ночи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 95772,
				},
				[267545] = {
					["source"] = "Покрытый пыльцой трутень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143510,
				},
				[124212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бертозэн",
					["npcID"] = 0,
				},
				[302952] = {
					["source"] = "Дэсха-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zizzifu-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Плиссара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6268] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ящер с нагорья Арати",
					["npcID"] = 142338,
				},
				[79833] = {
					["source"] = "Друид Валь'шары",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 109364,
				},
				[280635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Молвер",
					["npcID"] = 0,
				},
				[275006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оруэл",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэглз-СтражСмерти",
					["npcID"] = 0,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[115385] = {
					["source"] = "Донный охотник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133285,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[269890] = {
					["source"] = "Разбойник из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126720,
				},
				[256038] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[111803] = {
					["source"] = "Пироманиха",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59052] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271938] = {
					["source"] = "Гнездо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138172,
				},
				[158806] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Квакух",
					["npcID"] = 140938,
				},
				[264774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оруэл",
					["npcID"] = 0,
				},
				[280547] = {
					["source"] = "Всвлд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[256039] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[85710] = {
					["source"] = "Штормградский морской пехотинец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 76436,
				},
				[293945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ута-Дракономор",
					["npcID"] = 0,
				},
				[3219] = {
					["type"] = "BUFF",
					["source"] = "Вишари-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257225] = {
					["source"] = "Древоклык-охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129624,
				},
				[264776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Destruman-Nagrand",
					["npcID"] = 0,
				},
				[204666] = {
					["encounterID"] = 1837,
					["source"] = "Дубосерд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103344,
				},
				[273988] = {
					["source"] = "Кестрелла-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258079] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сточный злобнокус",
					["npcID"] = 127482,
				},
				[264777] = {
					["source"] = "Грусныйдруид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Беленький-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15043] = {
					["source"] = "Золотой маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32341,
				},
				[53385] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лоорд",
					["npcID"] = 0,
				},
				[77645] = {
					["type"] = "DEBUFF",
					["source"] = "Адепт клана Пылающего Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 4665,
				},
				[256778] = {
					["source"] = "Енотпатаскун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288091] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Такефка-Ясеневыйлес",
					["npcID"] = 0,
				},
				[44212] = {
					["source"] = "Фатания-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160600] = {
					["type"] = "BUFF",
					["source"] = "Лекарстон",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85072] = {
					["source"] = "Тенеткач Ночной Погибели",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 533,
				},
				[18148] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 11577,
				},
				[212799] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299068] = {
					["source"] = "Азш'ари - призывательница бурь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152917,
				},
				[201129] = {
					["source"] = "Цветущий злошип",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99360,
				},
				[273481] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302651] = {
					["source"] = "Алурини-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290819] = {
					["source"] = "Аленси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198723] = {
					["source"] = "Гнилосердная дриада",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99358,
				},
				[287811] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[6668] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Экспансивная",
					["npcID"] = 0,
				},
				[268877] = {
					["source"] = "Плиссара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стражник аэродрома",
					["npcID"] = 41909,
				},
				[66004] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43795,
				},
				[185422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрмейс",
					["npcID"] = 0,
				},
				[3355] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Канау-Дракономор",
					["npcID"] = 0,
				},
				[271437] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саперный заряд",
					["npcID"] = 103512,
				},
				[290372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Толбоня-Азурегос",
					["npcID"] = 0,
				},
				[256044] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[268879] = {
					["source"] = "Кашисх-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62124] = {
					["type"] = "DEBUFF",
					["source"] = "Палотбога-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300802] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69203] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Режущий плавник гавани",
					["npcID"] = 41293,
				},
				[48792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[183888] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Захватчица-рубака",
					["npcID"] = 135860,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Хават",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Шеп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103326,
				},
				[33917] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[299803] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Миссинио-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203847] = {
					["source"] = "Кенгурун-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303681] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153307,
				},
				[185936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ворлдор-Дракономор",
					["npcID"] = 0,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бьямба-Дракономор",
					["npcID"] = 0,
				},
				[280653] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Серборей-Гордунни",
					["npcID"] = 0,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ивасик",
					["npcID"] = 17447,
				},
				[193357] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270419] = {
					["source"] = "Рагна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134884,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зорелика",
					["npcID"] = 0,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белнаара",
					["npcID"] = 0,
				},
				[262232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Рипрото",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[193358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неотеннка-Гордунни",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нюфаня",
					["npcID"] = 0,
				},
				[274834] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280841] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292287] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62061] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аларрия",
					["npcID"] = 0,
				},
				[1752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелдрикк-СвежевательДуш",
					["npcID"] = 0,
				},
				[215876] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волорион",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Пироманиха",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Майднес-Дракономор",
					["npcID"] = 0,
				},
				[229871] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Баамс",
					["npcID"] = 0,
				},
				[258864] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морпех корпорации Эшвейнов",
					["npcID"] = 130027,
				},
				[261167] = {
					["source"] = "Джи'арак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132253,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мурммура-СтражСмерти",
					["npcID"] = 0,
				},
				[127801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тренировочная репа",
					["npcID"] = 65310,
				},
				[194384] = {
					["source"] = "Беленький-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299084] = {
					["source"] = "Скаириса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225601] = {
					["type"] = "BUFF",
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэрилия-Азурегос",
					["npcID"] = 0,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мишель",
					["npcID"] = 42718,
				},
				[288756] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Обояшкаа",
					["npcID"] = 0,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Духпогибели-Азурегос",
					["npcID"] = 0,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[297039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[160098] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77644,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэлдо-Азурегос",
					["npcID"] = 0,
				},
				[30847] = {
					["type"] = "BUFF",
					["source"] = "Трансмутаня-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fearmonger-Ragnaros",
					["npcID"] = 0,
				},
				[108271] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97097] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148308,
				},
				[125883] = {
					["source"] = "Шаах-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188501] = {
					["source"] = "Дэсха-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 151096,
				},
				[5221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[269169] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Озлобленный рубака",
					["npcID"] = 129749,
				},
				[1822] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ута-Дракономор",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Волара-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79954] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43535,
				},
				[28491] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фоморра",
					["npcID"] = 0,
				},
				[267362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 135985,
				},
				[117828] = {
					["source"] = "Эксплаузио-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156774] = {
					["source"] = "Маг Оплота Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150122,
				},
				[82641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пепельный маг из клана Черного Железа",
					["npcID"] = 41272,
				},
				[164460] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77724,
				},
				[281721] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Горный пехотинец Стальгорна",
					["npcID"] = 727,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Катеринес-Дракономор",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[307281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Палдринг-Галакронд",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Хасткрита-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69592] = {
					["source"] = "Воин из клана Бича Злобы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 6190,
				},
				[215821] = {
					["source"] = "Шар'тос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 108678,
				},
				[268901] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буддхи-Дракономор",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шрайя-Голдринн",
					["npcID"] = 0,
				},
				[313424] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Заулка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316801] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мераша-Азурегос",
					["npcID"] = 0,
				},
				[61999] = {
					["source"] = "Винкис-Гордунни",
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
				[66906] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайноель-Ревущийфьорд",
					["npcID"] = 0,
				},
				[255625] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128474,
				},
				[95988] = {
					["source"] = "Тяфс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312915] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Подначитана-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[2481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лериша",
					["npcID"] = 0,
				},
				[106951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Майднес-Дракономор",
					["npcID"] = 0,
				},
				[121536] = {
					["source"] = "Снекайс-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257092] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Королева песков",
					["encounterID"] = 2101,
				},
				[270453] = {
					["source"] = "Вагга Узловатый Бивень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130079,
				},
				[206930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морфель",
					["npcID"] = 0,
				},
				[302171] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153307,
				},
				[245389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сузудадая-ЧерныйШрам",
					["npcID"] = 0,
				},
				[255035] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акалита",
					["npcID"] = 0,
				},
				[299767] = {
					["source"] = "Кельпин-разведчица",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[192090] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[262652] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270444] = {
					["source"] = "Рагна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134884,
				},
				[298743] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тратаа-Дракономор",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Сомнайт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213602] = {
					["source"] = "Тебесладко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264305] = {
					["source"] = "Страж сокровищ из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132177,
				},
				[120679] = {
					["source"] = "Аленси",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15572] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[122] = {
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оророкор-Дракономор",
					["npcID"] = 0,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65629] = {
					["type"] = "BUFF",
					["source"] = "Пленный иглогрив",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34523,
				},
				[262772] = {
					["source"] = "Офицер из братства Стальных Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133635,
				},
				[256390] = {
					["source"] = "Чуланный ползун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137000,
				},
				[281178] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[313948] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[277989] = {
					["source"] = "Эрик Тихий Кулак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148308,
				},
				[261947] = {
					["source"] = "Ворчуча-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305249] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287338] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197211] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Мокмаф-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бигудии",
					["npcID"] = 0,
				},
				[214975] = {
					["source"] = "Грипстанкилх-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49143] = {
					["source"] = "Тристерия-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264311] = {
					["source"] = "Пират-счетовод",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145202,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[281711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[299763] = {
					["source"] = "Шаман из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154304,
				},
				[297064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ламборджинни",
					["npcID"] = 0,
				},
				[258869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг огня корпорации Эшвейнов",
					["npcID"] = 127488,
				},
				[264893] = {
					["source"] = "Ревизор Дольп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132182,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[32064] = {
					["source"] = "Кракауер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43303,
				},
				[199260] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11974] = {
					["type"] = "BUFF",
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32343,
				},
				[188838] = {
					["source"] = "Еленка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beefybudda-Silvermoon",
					["npcID"] = 0,
				},
				[196770] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54261] = {
					["source"] = "Золотой маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32341,
				},
				[233582] = {
					["source"] = "Эксплаузио-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Зеттерстром-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80472] = {
					["source"] = "Травник из стаи Речной Лапы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54373,
				},
				[230289] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 115790,
				},
				[272061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Веледжин-Гордунни",
					["npcID"] = 0,
				},
				[284275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hoho-Runetotem",
					["npcID"] = 0,
				},
				[65072] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34287,
				},
				[295029] = {
					["source"] = "Малый зоатроид",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152067,
				},
				[299663] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Когалл-Дракономор",
					["npcID"] = 0,
				},
				[262783] = {
					["source"] = "Офицер из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133635,
				},
				[32736] = {
					["source"] = "Громила из племени Зловещего Тотема",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11912,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[298700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хабари",
					["npcID"] = 0,
				},
				[2060] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хроноздорму-Гордунни",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неотеннка-Гордунни",
					["npcID"] = 0,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бурстдикей-ЧерныйШрам",
					["npcID"] = 0,
				},
				[262785] = {
					["source"] = "Офицер из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133635,
				},
				[279673] = {
					["source"] = "Эксплаузио-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ацетил-Дракономор",
					["npcID"] = 0,
				},
				[268956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ундетрас",
					["npcID"] = 0,
				},
				[302191] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153307,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Колябомж-Азурегос",
					["npcID"] = 0,
				},
				[95826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стражник порта",
					["npcID"] = 142450,
				},
				[211793] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269440] = {
					["source"] = "Поджигательница из Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138092,
				},
				[12550] = {
					["source"] = "Огр-маг с перевала Мертвого Ветра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 7379,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэйв Проворный",
					["npcID"] = 62913,
				},
				[133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[316522] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[142205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эвилес",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дриад-Азурегос",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[51271] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Стражник экспедиции",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139090,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naileen-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрил",
					["npcID"] = 0,
				},
				[247218] = {
					["source"] = "Воинственный боец прикрытия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148367,
				},
				[276096] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Орчиха-налетчица",
					["npcID"] = 137104,
				},
				[114250] = {
					["source"] = "Зеттерстром-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Аленси",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[181867] = {
					["source"] = "Сть-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259430] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79963] = {
					["source"] = "Йоргенсен",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43305,
				},
				[281215] = {
					["source"] = "Резал-Термоштепсель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[211805] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212061] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131775,
				},
				[216411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[257496] = {
					["source"] = "Волногон из клана Соленой Чешуи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128997,
				},
				[45699] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нуминос",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Феладрин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ангелринн",
					["npcID"] = 0,
				},
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[45819] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257096] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30146] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шионя-Дракономор",
					["npcID"] = 0,
				},
				[257608] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[228049] = {
					["source"] = "Холиманьяк-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Элранис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287360] = {
					["source"] = "Беленький-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164470] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77767,
				},
				[2540] = {
					["source"] = "Изиида-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257097] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пчпэ",
					["npcID"] = 0,
				},
				[257609] = {
					["type"] = "BUFF",
					["source"] = "Королева песков",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[185311] = {
					["source"] = "Ластдцпхиро-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270474] = {
					["source"] = "Вагга Узловатый Бивень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130079,
				},
				[9128] = {
					["type"] = "BUFF",
					["source"] = "Золотой воин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32322,
				},
				[277909] = {
					["source"] = "Желчетоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148428,
				},
				[284292] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лоорд",
					["npcID"] = 0,
				},
				[297086] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оптинэ-Дракономор",
					["npcID"] = 0,
				},
				[270987] = {
					["source"] = "Служитель Налоракка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120949,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наиля-Дракономор",
					["npcID"] = 0,
				},
				[1066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[200806] = {
					["source"] = "Sharpié-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207203] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258634] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг огня корпорации Эшвейнов",
					["npcID"] = 127488,
				},
				[179057] = {
					["source"] = "Лаирендил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эйковбой-Азурегос",
					["npcID"] = 0,
				},
				[260734] = {
					["source"] = "Хотхард-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ингуст-Галакронд",
					["npcID"] = 0,
				},
				[57846] = {
					["source"] = "Пехотинец крепости Стражей Пустоты",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 45031,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Актрос",
					["npcID"] = 0,
				},
				[105681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Футзал-Дракономор",
					["npcID"] = 0,
				},
				[302207] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153307,
				},
				[263840] = {
					["source"] = "Эффорт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129124,
				},
				[272526] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сапер",
					["npcID"] = 134426,
				},
				[77535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[126935] = {
					["source"] = "Осбен-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6789] = {
					["source"] = "Шавушкер-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270494] = {
					["source"] = "Вагга Узловатый Бивень",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130079,
				},
				[198300] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267410] = {
					["source"] = "Клизмус",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213858] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["source"] = "Демонический тиран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[299751] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[302210] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153307,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Молвер",
					["npcID"] = 0,
				},
				[209951] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105793,
				},
				[66789] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даорур",
					["npcID"] = 0,
				},
				[295047] = {
					["source"] = "Чудомохнатка-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[200589] = {
					["source"] = "Гноешкурый гризли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95779,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[318391] = {
					["source"] = "Великий потусторонний червь",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аллонси-Дракономор",
					["npcID"] = 0,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[299778] = {
					["source"] = "Кельпин-разведчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[257103] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195949] = {
					["type"] = "BUFF",
					["source"] = "Алюминис",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Хотхард-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сагатош",
					["npcID"] = 0,
				},
				[155777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Майднес-Дракономор",
					["npcID"] = 0,
				},
				[105683] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Футзал-Дракономор",
					["npcID"] = 0,
				},
				[195182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[142204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эвилес",
					["npcID"] = 0,
				},
				[257104] = {
					["source"] = "Минимагус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Пррокурор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291981] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лайтбриз-Дракономор",
					["npcID"] = 0,
				},
				[45182] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258128] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громила из братства Стальных Волн",
					["npcID"] = 130025,
				},
				[268953] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13737] = {
					["source"] = "Пехотинец Окрил'лона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 42359,
				},
				[115151] = {
					["source"] = "Шацу",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196742] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ващенубка",
					["npcID"] = 0,
				},
				[257617] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Королева песков",
					["encounterID"] = 2101,
				},
				[51714] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256082] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элувриль",
					["npcID"] = 0,
				},
				[268955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алеос-Корольлич",
					["npcID"] = 0,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сита",
					["npcID"] = 0,
				},
				[201837] = {
					["source"] = "Скверносерд-призыватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99366,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Экомен-Дракономор",
					["npcID"] = 0,
				},
				[7165] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 4922,
				},
				[274074] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256083] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[71909] = {
					["source"] = "Ластдцпхиро-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262161] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уллькактус",
					["npcID"] = 0,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пчпэ",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тейву-Ясеневыйлес",
					["npcID"] = 0,
				},
				[198222] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33284] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Роксара-Дракономор",
					["npcID"] = 0,
				},
				[264353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nalien-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Укупкинский",
					["npcID"] = 0,
				},
				[8377] = {
					["source"] = "Тотем хватки земли",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137585,
				},
				[265889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Поджигатель из братства Чернозубых",
					["npcID"] = 135366,
				},
				[54340] = {
					["source"] = "Желчетоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148428,
				},
				[255858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меднозубый волчонок",
					["npcID"] = 144494,
				},
				[64437] = {
					["type"] = "BUFF",
					["source"] = "Лор'данелская часовая",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 33115,
				},
				[317065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джев",
					["npcID"] = 0,
				},
				[8936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хисол-Гордунни",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[297108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[5302] = {
					["source"] = "Часовой Сторожевого холма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 42407,
				},
				[279709] = {
					["source"] = "Хэппиалекс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Эксплаузио-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258133] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мародер из братства Трюмных Крыс",
					["npcID"] = 127485,
				},
				[209261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джеткокос",
					["npcID"] = 0,
				},
				[2378] = {
					["source"] = "Морара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[258155] = {
					["source"] = "Древний защитник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128285,
				},
				[264870] = {
					["source"] = "Колторп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273570] = {
					["source"] = "Пеплохвостый бандинот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142454,
				},
				[300693] = {
					["source"] = "Регилион-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258134] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мародер из братства Трюмных Крыс",
					["npcID"] = 127485,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрмейс",
					["npcID"] = 0,
				},
				[264173] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59640] = {
					["source"] = "Нюфаня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Ланцек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253309] = {
					["source"] = "Ильзираиль-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Боец из братства Волнорезов",
					["npcID"] = 131112,
				},
				[257879] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 139571,
				},
				[3166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бьямба-Дракономор",
					["npcID"] = 0,
				},
				[299773] = {
					["source"] = "Кельпин-разведчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151309,
				},
				[207472] = {
					["type"] = "BUFF",
					["source"] = "Ноарвел-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дух земли",
					["npcID"] = 69792,
				},
				[255065] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Культазавр-Дракономор",
					["npcID"] = 0,
				},
				[277156] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141782,
				},
				[279715] = {
					["source"] = "Делавреале-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Феладрин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[137619] = {
					["source"] = "Ластдцпхиро-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[257297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пробудительница лоз из племени Шипошкурых",
					["npcID"] = 132226,
				},
				[255066] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Харт-Дракономор",
					["npcID"] = 0,
				},
				[262829] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[49738] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Серог-Дракономор",
					["npcID"] = 0,
				},
				[268836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[15254] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153307,
				},
				[210065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eranai-Nagrand",
					["npcID"] = 0,
				},
				[294047] = {
					["source"] = "Твое-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257814] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джес Хаулис",
					["encounterID"] = 2102,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[264878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 0,
				},
				[277185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[269996] = {
					["source"] = "Дуэлянтка из братства Волнорезов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129025,
				},
				[22568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[78054] = {
					["type"] = "BUFF",
					["source"] = "Ваньхиляй-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24331] = {
					["source"] = "Юркий разоритель гнезд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139326,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гонората-Дракономор",
					["npcID"] = 0,
				},
				[124121] = {
					["source"] = "Яббадаббадуу-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263345] = {
					["npcID"] = 134025,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тяжелое орудие",
					["encounterID"] = 2104,
				},
				[290468] = {
					["type"] = "BUFF",
					["source"] = "Вазария",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267972] = {
					["source"] = "Демонический тиран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135002,
				},
				[1856] = {
					["source"] = "Sharpié-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81253] = {
					["source"] = "Лор'данелская часовая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32969,
				},
				[304606] = {
					["source"] = "Малгат-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дозорный из племени Шипошкурых",
					["npcID"] = 130073,
				},
				[144787] = {
					["source"] = "Десмайл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294052] = {
					["type"] = "BUFF",
					["source"] = "Беляев",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288988] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[250208] = {
					["source"] = "Солекаменная черепаха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130160,
				},
				[76136] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40906,
				},
				[199545] = {
					["source"] = "Палочел",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255070] = {
					["source"] = "Беляев",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2908] = {
					["encounterID"] = 2101,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188031] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brufolo-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Твое-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Ямакаська-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256350] = {
					["source"] = "Мелководный завролиск",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 125452,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[288426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[297126] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287403] = {
					["source"] = "Архойм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страшило-Гром",
					["npcID"] = 0,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Матезалка",
					["npcID"] = 0,
				},
				[180612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[102547] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[257119] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[188033] = {
					["source"] = "Ввсдрол-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Пррокурор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183585] = {
					["source"] = "Присягнувший Свету анахорет",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 109751,
				},
				[271550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[198813] = {
					["source"] = "Феладрин-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11976] = {
					["source"] = "Пехотинец Болотной Воды",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 46164,
				},
				[199804] = {
					["source"] = "Крашлэйт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghaddaffi-Nagrand",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Финискор-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79848] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пепельный маг из клана Черного Железа",
					["npcID"] = 41272,
				},
				[79976] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49793,
				},
				[55095] = {
					["source"] = "Ямакаська-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Точноготовая",
					["npcID"] = 0,
				},
				[298710] = {
					["source"] = "Волара-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аракгозин",
					["npcID"] = 17252,
				},
				[283315] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Серог-Дракономор",
					["npcID"] = 0,
				},
				[58875] = {
					["type"] = "BUFF",
					["source"] = "Искин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270544] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кровожадная охотница за головами",
					["npcID"] = 129753,
				},
				[87269] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жительница Дозора Огнебородов",
					["npcID"] = 46922,
				},
				[81256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[5211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[168338] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299762] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[45732] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ващенубка",
					["npcID"] = 0,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алин Блэк",
					["npcID"] = 61834,
				},
				[79977] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49793,
				},
				[256355] = {
					["source"] = "Мелководный завролиск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 125452,
				},
				[277186] = {
					["source"] = "Заряженный страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136550,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Серог-Дракономор",
					["npcID"] = 0,
				},
				[256148] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Снекайс-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стражник корпорации Эшвейнов",
					["npcID"] = 127497,
				},
				[53758] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лунадрагоций",
					["npcID"] = 0,
				},
				[258147] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меднозубый хищник",
					["npcID"] = 131365,
				},
				[261467] = {
					["source"] = "Джи'арак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132253,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торэдос-ЧерныйШрам",
					["npcID"] = 0,
				},
				[258915] = {
					["source"] = "Ядовитый угорь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127600,
				},
				[198121] = {
					["source"] = "Архойм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295752] = {
					["source"] = "Лухля-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Масарахши-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88038] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 922,
				},
				[256101] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель Корги",
					["encounterID"] = 2104,
				},
				[277181] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256613] = {
					["source"] = "Аессонэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196608] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nøvaæ-Hyjal",
					["npcID"] = 0,
				},
				[199754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нюфаня",
					["npcID"] = 0,
				},
				[289976] = {
					["source"] = "Воинственный боец прикрытия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148367,
				},
				[267971] = {
					["source"] = "Демонический тиран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хават",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[258917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица корпорации Эшвейнов",
					["npcID"] = 130028,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[79477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Локомотиф",
					["npcID"] = 0,
				},
				[295855] = {
					["source"] = "Лаирендил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79851] = {
					["source"] = "Наемница из племени Зловещего Тотема",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 11911,
				},
				[258150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морской колдун из братства Трюмных Крыс",
					["npcID"] = 130026,
				},
				[289467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[25704] = {
					["source"] = "Свинохряк-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203123] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[201858] = {
					["source"] = "Скверносерд-стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100539,
				},
				[287421] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лунныйпандав",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Савуша",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Эпохальная-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Тибблдорф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3248] = {
					["source"] = "Пехотинец крепости Стражей Пустоты",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 45031,
				},
				[302797] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бигудии",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Добролюбов",
					["npcID"] = 0,
				},
				[271559] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[200580] = {
					["source"] = "Гноешкурый гризли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95779,
				},
				[256105] = {
					["type"] = "DEBUFF",
					["source"] = "Надзиратель Корги",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[221562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[258156] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дозорный из племени Шипошкурых",
					["npcID"] = 130073,
				},
				[258920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghaddaffi-Nagrand",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Тибблдорф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8219] = {
					["source"] = "Мистерчленс-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неларос",
					["npcID"] = 0,
				},
				[207196] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153307,
				},
				[258153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морской колдун из братства Трюмных Крыс",
					["npcID"] = 130026,
				},
				[38793] = {
					["source"] = "Пламенный клинок Летящей Тьмы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 46917,
				},
				[176785] = {
					["source"] = "Тиренде-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеткокос",
					["npcID"] = 0,
				},
				[287825] = {
					["source"] = "Архойм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255595] = {
					["source"] = "Умбровый пескохват",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140585,
				},
				[77806] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 44087,
				},
				[22570] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жураа",
					["npcID"] = 0,
				},
				[274426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[280776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[314040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[277706] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вуури-Гордунни",
					["npcID"] = 0,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[6742] = {
					["source"] = "Огр-маг с перевала Мертвого Ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 7379,
				},
				[279754] = {
					["source"] = "Шунигур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Сетикристали-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сингрия-Азурегос",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Архойм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nearlydead-Magtheridon",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Феладрин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пумпочка-Дракономор",
					["npcID"] = 0,
				},
				[213634] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263892] = {
					["type"] = "BUFF",
					["source"] = "Тенекоготь",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 2175,
				},
				[280780] = {
					["type"] = "BUFF",
					["source"] = "Андайнг-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273104] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[78703] = {
					["type"] = "BUFF",
					["source"] = "Светлолапый бегун",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3823,
				},
				[13704] = {
					["source"] = "Зеленый жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32343,
				},
				[48707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Легионерфид",
					["npcID"] = 0,
				},
				[182930] = {
					["source"] = "Шагарт-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Маратор-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318187] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крукс",
					["npcID"] = 0,
				},
				[172184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Верховный маг Накада",
					["npcID"] = 82564,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наиля-Дракономор",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уорфорд",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Трестинг",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крукс",
					["npcID"] = 0,
				},
				[11977] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 46166,
				},
				[263897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зубастый бобр",
					["npcID"] = 134359,
				},
				[258159] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 130395,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[296138] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[211846] = {
					["source"] = "Длинноклык",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139385,
				},
				[297162] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[30151] = {
					["source"] = "Акингорил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[218755] = {
					["source"] = "Гноешкурый гризли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 95779,
				},
				[139178] = {
					["source"] = "Кулетт Вспыльчивый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131520,
				},
				[280787] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кебехет",
					["npcID"] = 0,
				},
				[80240] = {
					["source"] = "Шавушкер-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299764] = {
					["source"] = "Шаман из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154304,
				},
				[280788] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266249] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ascilla-Nagrand",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пантерюсичка",
					["npcID"] = 0,
				},
				[166302] = {
					["source"] = "\"Блескотрон-7000\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сузудадая-ЧерныйШрам",
					["npcID"] = 0,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[2330] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Торопа",
					["npcID"] = 0,
				},
				[49028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Архойм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мурлок из племени Синежабрых",
					["npcID"] = 41425,
				},
				[258162] = {
					["source"] = "Проклятый мародер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128286,
				},
				[5143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алеос-Корольлич",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Тотем оков земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[298703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Искандериус-Азурегос",
					["npcID"] = 0,
				},
				[297168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[303344] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Трестинг",
					["npcID"] = 0,
				},
				[276187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Голодныйенот",
					["npcID"] = 0,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Матезалка",
					["npcID"] = 0,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ламель",
					["npcID"] = 0,
				},
				[297037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бипалярочка",
					["npcID"] = 0,
				},
				[271071] = {
					["source"] = "Беленький-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186263] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31271] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17217,
				},
				[156070] = {
					["type"] = "BUFF",
					["source"] = "Андаисия",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэсирия-Дракономор",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Аорра-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arìel-Runetotem",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сангита-Дракономор",
					["npcID"] = 0,
				},
				[7366] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36159,
				},
				[245526] = {
					["source"] = "Порабощенная морячка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123399,
				},
				[256374] = {
					["source"] = "Хьянти-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298197] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[272098] = {
					["source"] = "Громила из братства Чернозубых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129121,
				},
				[255095] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Антилогика-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Галаросе",
					["npcID"] = 58960,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Молвер",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Крашлэйт",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пиромант из клана Черного Железа",
					["npcID"] = 41902,
				},
				[51460] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268518] = {
					["source"] = "Ильзираиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Витаминх-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[268519] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[45693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Туел",
					["npcID"] = 0,
				},
				[275684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Доктор Марртенс",
					["npcID"] = 140925,
				},
				[258935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жрица корпорации Эшвейнов",
					["npcID"] = 130028,
				},
				[85617] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[69369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[278244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Козочказвезд",
					["npcID"] = 0,
				},
				[291150] = {
					["source"] = "Кенгурун-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264892] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Утонувший предвестник",
					["npcID"] = 135785,
				},
				[221887] = {
					["source"] = "Неранол",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300762] = {
					["source"] = "Колторп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шаловливый хорек",
					["npcID"] = 143361,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[276111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стасюня-Дракономор",
					["npcID"] = 0,
				},
				[302216] = {
					["source"] = "Высвобожденное порождение тайной магии",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153307,
				},
				[32615] = {
					["source"] = "Тизали Ворона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 119077,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Толбоня-Азурегос",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[77558] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54372,
				},
				[275689] = {
					["source"] = "Сетикристали-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195452] = {
					["source"] = "Шунигур",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288588] = {
					["source"] = "Капитан разведчиков Серокнопс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148198,
				},
				[6685] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 41182,
				},
				[258938] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жрица корпорации Эшвейнов",
					["npcID"] = 130028,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Курвинка",
					["npcID"] = 0,
				},
				[299743] = {
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154297,
				},
				[179873] = {
					["source"] = "Озарко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15496] = {
					["source"] = "Пехотинец Окрил'лона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 42359,
				},
				[205351] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299744] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[192081] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[45562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нюфаня",
					["npcID"] = 0,
				},
				[85619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торэдос-ЧерныйШрам",
					["npcID"] = 0,
				},
				[299745] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[37836] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изиида-Голдринн",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Олаф-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэлокруа",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мистекал",
					["npcID"] = 0,
				},
				[295367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[244808] = {
					["source"] = "Песчаный краб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145337,
				},
				[210324] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Эксплаузио-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66557] = {
					["source"] = "Мюрат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[256382] = {
					["source"] = "Благородная олениха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126709,
				},
				[302307] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80473] = {
					["source"] = "Травник из стаи Речной Лапы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54373,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293887] = {
					["source"] = "Коука-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fearmonger-Ragnaros",
					["npcID"] = 0,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[194717] = {
					["source"] = "Анжлилина-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Козочказвезд",
					["npcID"] = 0,
				},
				[5277] = {
					["source"] = "Sharpié-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йервальд",
					["npcID"] = 0,
				},
				[279793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Майднес-Дракономор",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Муминка",
					["npcID"] = 0,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[75002] = {
					["source"] = "Снежный леопард",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 42170,
				},
				[197277] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79480] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жураа",
					["npcID"] = 0,
				},
				[257408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Барседес",
					["npcID"] = 0,
				},
				[259711] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надзиратель блока",
					["npcID"] = 131445,
				},
				[298730] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[8078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стражник Стальгорна",
					["npcID"] = 5595,
				},
				[299754] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[255909] = {
					["source"] = "Крашлэйт",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["type"] = "BUFF",
					["source"] = "Неробро-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Тибблдорф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Тибблдорф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12170] = {
					["source"] = "Часовой Сторожевого холма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 42407,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Майднес-Дракономор",
					["npcID"] = 0,
				},
				[299756] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лортарион",
					["npcID"] = 0,
				},
				[164783] = {
					["source"] = "Кровозев",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138299,
				},
				[201885] = {
					["source"] = "Скверносерд-стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100539,
				},
				[299757] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[34767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ингот-Ревущийфьорд",
					["npcID"] = 0,
				},
				[79865] = {
					["source"] = "Лиз Уорк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155761,
				},
				[8220] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Primal-Nagrand",
					["npcID"] = 0,
				},
				[299758] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[51399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[269304] = {
					["source"] = "Нефтедобытчик Торговой компании",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137065,
				},
				[315161] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Матезалка",
					["npcID"] = 0,
				},
				[163505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[70242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Писсецц",
					["npcID"] = 0,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Черепаха",
					["npcID"] = 113125,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мирадзель",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кристэллия-Дракономор",
					["npcID"] = 0,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[299761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анкоа - мастер клинка",
					["npcID"] = 154297,
				},
				[302908] = {
					["source"] = "Драгнас-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102383] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маэлину-Голдринн",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[256222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нагорный козел",
					["npcID"] = 138316,
				},
				[316823] = {
					["source"] = "Попкилик-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Орриго",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Котвлаптях-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304369] = {
					["source"] = "Градация-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[55090] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[304370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тотемвпуть",
					["npcID"] = 0,
				},
				[300788] = {
					["source"] = "Кашисх-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114282] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[299765] = {
					["source"] = "Кельпин-разведчица",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[245388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сузудадая-ЧерныйШрам",
					["npcID"] = 0,
				},
				[262726] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[116841] = {
					["source"] = "Малгат-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299766] = {
					["source"] = "Кельпин-разведчица",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[286835] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164788] = {
					["source"] = "Кровозев",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138299,
				},
				[306795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Брэнни-Дракономор",
					["npcID"] = 0,
				},
				[304373] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тольконеэль",
					["npcID"] = 0,
				},
				[288509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тилаин-Азурегос",
					["npcID"] = 0,
				},
				[270598] = {
					["source"] = "Дикий глубинный жеватель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130916,
				},
				[278989] = {
					["source"] = "Олаф-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Еленти-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298745] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[302917] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[269064] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Найжелус-Азурегос",
					["npcID"] = 0,
				},
				[269576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Страшило-Гром",
					["npcID"] = 0,
				},
				[298746] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тратаа-Дракономор",
					["npcID"] = 0,
				},
				[8122] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248082] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Узалай-Гордунни",
					["npcID"] = 0,
				},
				[248062] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Узалай-Гордунни",
					["npcID"] = 0,
				},
				[201636] = {
					["source"] = "Летидора-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["source"] = "Илидана-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80471] = {
					["source"] = "Травник из стаи Речной Лапы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54373,
				},
				[302794] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[99315] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чаррна",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бартденэль",
					["npcID"] = 0,
				},
				[1966] = {
					["source"] = "Эвикдэнс-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[286979] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Санжиру",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бурстдикей-ЧерныйШрам",
					["npcID"] = 0,
				},
				[75775] = {
					["source"] = "Падальщик из племени Мерзлогривов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41146,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Колябомж-Азурегос",
					["npcID"] = 0,
				},
				[304722] = {
					["source"] = "Kefka-Baelgun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131784] = {
					["source"] = "Мэлииан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Шинраэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260062] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128472,
				},
				[299775] = {
					["source"] = "Кельпин-разведчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[22766] = {
					["source"] = "Старая тенебрюхая пантера",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1713,
				},
				[280433] = {
					["source"] = "Шинраэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Барседес",
					["npcID"] = 0,
				},
				[299776] = {
					["source"] = "Кельпин-разведчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151310,
				},
				[6751] = {
					["source"] = "Вдова с перевала Мертвого Ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 51987,
				},
				[201639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анубаська-Гордунни",
					["npcID"] = 0,
				},
				[280842] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[189869] = {
					["source"] = "Стражник экспедиции",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139090,
				},
				[267537] = {
					["source"] = "Еленка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1706] = {
					["source"] = "Мшеук-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147650] = {
					["source"] = "Шаловливый хорек",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143361,
				},
				[6807] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[8042] = {
					["source"] = "Хотхард-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лунныйпандав",
					["npcID"] = 0,
				},
				[280844] = {
					["source"] = "Ноуа-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хроноздорму-Гордунни",
					["npcID"] = 0,
				},
				[213771] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[196834] = {
					["source"] = "Халумэйнэ-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299780] = {
					["source"] = "Кельпин-разведчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151310,
				},
				[324856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46924] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Фельве",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алеос-Корольлич",
					["npcID"] = 0,
				},
				[299782] = {
					["source"] = "Кельпин-разведчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151309,
				},
				[31850] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ёка",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299783] = {
					["source"] = "Кельпин-разведчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151309,
				},
				[125801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шелби Щебенка",
					["npcID"] = 9980,
				},
				[288525] = {
					["source"] = "Заклинатель Бездны из 7-го легиона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148778,
				},
				[6991] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Семабэзкэд",
					["npcID"] = 0,
				},
				[299784] = {
					["source"] = "Кельпин-разведчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151309,
				},
				[294155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оптинэ-Дракономор",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[267171] = {
					["source"] = "Попкилик-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299785] = {
					["source"] = "Кельпин-разведчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151309,
				},
				[279827] = {
					["source"] = "Отец Тимоти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143581,
				},
				[300809] = {
					["source"] = "Дэсха-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256401] = {
					["source"] = "Чуланный ползун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137000,
				},
				[279828] = {
					["source"] = "Жрица Лиллиана",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143582,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элганос",
					["npcID"] = 0,
				},
				[80149] = {
					["source"] = "Разведчик Окрил'лона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 42228,
				},
				[196819] = {
					["source"] = "Шунигур",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айболишка",
					["npcID"] = 0,
				},
				[162908] = {
					["source"] = "Кровозев",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138299,
				},
				[318211] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[99] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2102,
				},
				[290577] = {
					["source"] = "Поганище",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149555,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[302348] = {
					["source"] = "Морфель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2565] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Леик-Ясеневыйлес",
					["npcID"] = 0,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Еленка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268062] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Шавушкер-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Йаула-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313643] = {
					["source"] = "Чичаркс-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Sharpié-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Страшило-Гром",
					["npcID"] = 0,
				},
				[202748] = {
					["source"] = "Механя-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шрайя-Голдринн",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242930] = {
					["source"] = "Тизали Ворона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 119077,
				},
				[318216] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[198577] = {
					["source"] = "Громила из банды Резчиков",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134725,
				},
				[157980] = {
					["source"] = "Таэлит",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Белнаара",
					["npcID"] = 0,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джасхан",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Молвер",
					["npcID"] = 0,
				},
				[96890] = {
					["source"] = "Маратор-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11971] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Стражник Стальгорна",
					["npcID"] = 5595,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Таэлит",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262590] = {
					["source"] = "Held Position",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133626,
				},
				[271138] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 129867,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бриони-Азурегос",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Илидана-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[262691] = {
					["source"] = "Held Position",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133626,
				},
				[688] = {
					["source"] = "Шавушкер-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303380] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drogonne-Silvermoon",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Реликвия-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Разведчик Орды",
					["npcID"] = 139570,
				},
				[199603] = {
					["source"] = "Крашлэйт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276950] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[49966] = {
					["source"] = "Копытень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 28009,
				},
				[196277] = {
					["source"] = "Хьянти-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46168] = {
					["source"] = "Жишипаэс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вуури-Гордунни",
					["npcID"] = 0,
				},
				[131307] = {
					["source"] = "Попроми",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Масаврелиус",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пихо",
					["npcID"] = 0,
				},
				[255129] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пуканогорец-Азурегос",
					["npcID"] = 0,
				},
				[285472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[210643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[196840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[270825] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дирижабль-бомбардировщик",
					["npcID"] = 129867,
				},
				[210657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дочьмурадина-ЧерныйШрам",
					["npcID"] = 0,
				},
				[260779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Боец-ветеран",
					["npcID"] = 140493,
				},
				[115315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лунныйпандав",
					["npcID"] = 0,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хабари",
					["npcID"] = 0,
				},
				[253595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дворфз-Дракономор",
					["npcID"] = 0,
				},
				[298847] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[258201] = {
					["source"] = "Фуражир из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134141,
				},
				[318227] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[11196] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 140925,
				},
				[80676] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 615,
				},
				[261124] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсерк-ветеран",
					["npcID"] = 140494,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зулури",
					["npcID"] = 0,
				},
				[259737] = {
					["source"] = "Потерпевший кораблекрушение моряк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131610,
				},
				[257946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Афарэтра-Азурегос",
					["npcID"] = 0,
				},
				[256155] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элувриль",
					["npcID"] = 0,
				},
				[32918] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Снежный гончий волк",
					["npcID"] = 41478,
				},
				[49358] = {
					["source"] = "Келанир-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тавариль-Голдринн",
					["npcID"] = 0,
				},
				[281036] = {
					["source"] = "Аленси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204213] = {
					["source"] = "Беленький-Разувий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пантерюсичка",
					["npcID"] = 0,
				},
				[157644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[155853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пантеррка",
					["npcID"] = 0,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Натурблонд",
					["npcID"] = 0,
				},
				[204243] = {
					["source"] = "Обитатель Кошмара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101991,
				},
				[197561] = {
					["source"] = "Заулка-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Singera-Silvermoon",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Винкис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Туттанат-Галакронд",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шрайя-Голдринн",
					["npcID"] = 0,
				},
				[14030] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[16979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[1449] = {
					["source"] = "Таэлит",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46352] = {
					["source"] = "Форстайт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78646] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Костестраж из клана Драконьей Пасти",
					["npcID"] = 1057,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тимхиро-Гордунни",
					["npcID"] = 0,
				},
				[208683] = {
					["source"] = "Лаирендил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[48719] = {
					["type"] = "BUFF",
					["source"] = "Доканаювсех",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293671] = {
					["source"] = "Сонгок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234153] = {
					["source"] = "Лестанта-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джиэсс-Дракономор",
					["npcID"] = 0,
				},
				[214794] = {
					["source"] = "Отрекшаяся - стражница смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135886,
				},
				[277296] = {
					["source"] = "Дуэлянтка из братства Волнорезов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129025,
				},
				[13819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кокеш",
					["npcID"] = 0,
				},
				[48108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[63560] = {
					["source"] = "Винкис-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32919] = {
					["source"] = "Жилистый волк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 31233,
				},
				[24829] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чародей Итанас",
					["npcID"] = 15296,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повар-Дракономор",
					["npcID"] = 0,
				},
				[298928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кахран",
					["npcID"] = 0,
				},
				[43410] = {
					["source"] = "Древоруб Железнолесья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 48453,
				},
				[316703] = {
					["source"] = "Чорныгвард-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лисы",
					["npcID"] = 0,
				},
				[303586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дарсин",
					["npcID"] = 0,
				},
				[273293] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Барседес",
					["npcID"] = 0,
				},
				[205022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Айсууруву-Азурегос",
					["npcID"] = 0,
				},
				[54029] = {
					["type"] = "DEBUFF",
					["source"] = "Маг-страж Похитителей Солнца",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29255,
				},
				[315681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Румирум-Дракономор",
					["npcID"] = 0,
				},
				[298843] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Варчо-Азурегос",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[303044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ильдари-Дракономор",
					["npcID"] = 0,
				},
				[33943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айстер-Азурегос",
					["npcID"] = 0,
				},
				[187174] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиба",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мантило-Дракономор",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Беленький-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271291] = {
					["source"] = "Задира из братства Чернозубых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129097,
				},
				[186406] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaiôh-Elune",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Ворчуча-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Обояшкаа",
					["npcID"] = 0,
				},
				[299896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тихобрут-Дракономор",
					["npcID"] = 0,
				},
				[152277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerebor-Silvermoon",
					["npcID"] = 0,
				},
				[303438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мехримах-Азурегос",
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
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "0",
				["nameplateMinScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1",
				["nameplateSelfAlpha"] = "0.74498599767685",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowSelf"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 624,
			["patch_version"] = 9,
			["number_region_first_run"] = true,
			["buffs_on_aura2"] = true,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["health_statusbar_texture"] = "Minimalist",
			["indicator_enemyclass"] = true,
		},
	},
}
