
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
		["Шанами - Вечная Песня"] = "Default",
		["Thalassa - Lightning's Blade"] = "Default",
		["Ньярли - Вечная Песня"] = "Default",
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
				[21467] = {
					"Предвестник Скайрисс", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[18430] = {
					"Эфириал-ученик", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[161124] = {
					"Ург'рот Сокрушитель Героев", -- [1]
					"Вольная Гавань", -- [2]
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
				[16704] = {
					"Меткий стрелок из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[61029] = {
					"Изначальный элементаль огня", -- [1]
					"Храм Котмогу", -- [2]
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
				[161510] = {
					"Раздирающее разум щупальце", -- [1]
					"Вольная Гавань", -- [2]
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
				[18431] = {
					"Эфириальный маяк", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[24697] = {
					"Сестра Мучений", -- [1]
					"Терраса Магистров", -- [2]
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
				[24761] = {
					"Яркочешуйчатый змей", -- [1]
					"Терраса Магистров", -- [2]
				},
				[16593] = {
					"Буян из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[24554] = {
					"Эрамас Сияющее Пламя", -- [1]
					"Терраса Магистров", -- [2]
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
				[24762] = {
					"Хранитель Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[16594] = {
					"Послушник из клана Призрачной Луны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[131601] = {
					"Шеф-повар Даниэль", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150143] = {
					"Перемалыватель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[25865] = {
					"Застывшее ядро", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[18177] = {
					"Нечистый тотем каменной кожи", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[24683] = {
					"Маг-стражник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
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
				[161408] = {
					"Злокачественный нарост", -- [1]
					"Вольная Гавань", -- [2]
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
				[17427] = {
					"Лучник из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[25755] = {
					"Градина Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[20896] = {
					"Душегуб Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20912] = {
					"Предвестник Скайрисс", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[18994] = {
					"Палач из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
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
				[21136] = {
					"Хрономант из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
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
				[24685] = {
					"Магистр Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
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
				[20881] = {
					"Освобожденный уничтожитель", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130582] = {
					"Отчаявшийся негодяй", -- [1]
					"Тол Дагор", -- [2]
				},
				[17892] = {
					"Хрономант из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
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
				[21137] = {
					"Убийца из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
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
				[17621] = {
					"Страж-язычник", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[20882] = {
					"Таящаяся ведьма", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[18309] = {
					"Эфириал-падальщик", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[17462] = {
					"Ревнитель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[24687] = {
					"Врач Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
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
				[24815] = {
					"Бес Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
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
				[161437] = {
					"Взрывоопасный скарабей", -- [1]
					"Вольная Гавань", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[16807] = {
					"Главный чернокнижник Пустоклят", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[17942] = {
					"Зыбун", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[21395] = {
					"Амебовидное порождение", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[24688] = {
					"Тихий презренный", -- [1]
					"Терраса Магистров", -- [2]
				},
				[150190] = {
					"Воздушный подавитель ОУ-8", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[157607] = {
					"Безликий призыватель теней", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[17623] = {
					"Стражник-разоритель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[99200] = {
					"Дресарон", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[163746] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[20868] = {
					"Энтропический глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[17991] = {
					"Рокмар Трескун", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[18343] = {
					"Таварок", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[17464] = {
					"Гладиатор из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[24689] = {
					"Презренный-костолом", -- [1]
					"Терраса Магистров", -- [2]
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
				[20869] = {
					"Часовой Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20901] = {
					"Саргеронский лучник", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[135239] = {
					"Призрачная знахарка", -- [1]
					"Гробница королей", -- [2]
				},
				[150712] = {
					"Трикси Искрожгучка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[17880] = {
					"Темпорус", -- [1]
					"Открытие Темного портала", -- [2]
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
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[153527] = {
					"Акир - вожак роя", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[24559] = {
					"Полководец Саларис", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24664] = {
					"Кель'тас Солнечный Скиталец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24715] = {
					"Крайне взрывоопасная овца", -- [1]
					"Терраса Магистров", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[24696] = {
					"Ведьма из клана Змеиных Колец", -- [1]
					"Терраса Магистров", -- [2]
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
				[24745] = {
					"Чистая энергия", -- [1]
					"Терраса Магистров", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[24744] = {
					"Вексалиус", -- [1]
					"Терраса Магистров", -- [2]
				},
				[17961] = {
					"Чародейка резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[18344] = {
					"Принц Шаффар", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[157349] = {
					"Вепрь Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[24684] = {
					"Рыцарь крови Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[24777] = {
					"Часовой Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24556] = {
					"Зелфан", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24561] = {
					"Яззай", -- [1]
					"Терраса Магистров", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17465] = {
					"Центурион клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[24698] = {
					"Контрабандист Эфириума", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24560] = {
					"Жрица Делрисса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24674] = {
					"Феникс", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24690] = {
					"Презренный-полутруп", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24686] = {
					"Чернокнижник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24722] = {
					"Кристалл Скверны", -- [1]
					"Терраса Магистров", -- [2]
				},
				[153531] = {
					"Акир-костекрушитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[17879] = {
					"Повелитель времени Дежа", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[18983] = {
					"Чернозубый тарантул", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[20208] = {
					"Исцеляющий идол Менну", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[17941] = {
					"Менну Предатель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17940] = {
					"Техник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[21818] = {
					"Дракончик из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20870] = {
					"Зерекет Бездонный", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[20902] = {
					"Саргеронский призыватель огня", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17958] = {
					"Защитник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17960] = {
					"Ворожея резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17881] = {
					"Эонус", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[17938] = {
					"Наблюдатель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[21128] = {
					"Скат резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[17957] = {
					"Воитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17959] = {
					"Укротитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[21126] = {
					"Целительница чешуи резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[17816] = {
					"Крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17817] = {
					"Большой крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[16808] = {
					"Вождь Каргат Острорук", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[17671] = {
					"Воитель клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[157608] = {
					"Безликий сокрушитель воли", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[17695] = {
					"Убийца из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[158140] = {
					"Бешеная крыса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[134739] = {
					"Голем-чистильщик", -- [1]
					"Гробница королей", -- [2]
				},
				[18313] = {
					"Эфириал-колдун", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[21140] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[20908] = {
					"Аккирис Штормоход", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[160699] = {
					"Рассерженный почтоменталь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[20897] = {
					"Заклинатель волн Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[24675] = {
					"Яйцо феникса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[16507] = {
					"Караульный из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[16523] = {
					"Дикарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[24723] = {
					"Селин Огненное Сердце", -- [1]
					"Терраса Магистров", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20885] = {
					"Даллия Глашатай Судьбы", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[21702] = {
					"Заклинатель жизни из Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[161502] = {
					"Голодный пожиратель плоти", -- [1]
					"Вольная Гавань", -- [2]
				},
				[20883] = {
					"Сердитая искусительница", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20879] = {
					"Эредарский пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[16699] = {
					"Разоритель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[20880] = {
					"Смертоносный эредар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[20923] = {
					"Кровавый страж Порунг", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[20864] = {
					"Изначальный кошмар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20866] = {
					"Пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140593] = {
					"Restless Horror", -- [1]
					"The Underrot", -- [2]
				},
				[161198] = {
					"Исказитель пространства Душар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[21148] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[156089] = {
					"Акир - повелитель ядов", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[21138] = {
					"Палач из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17962] = {
					"Работяга резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[18982] = {
					"Черный ягуар", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[156653] = {
					"Сгустившийся ужас", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[21127] = {
					"Шквальник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17952] = {
					"Темноводный кроколиск", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[160704] = {
					"Капля Бездны в письме", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17083] = {
					"Новообращенный орк Скверны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[129776] = {
					"Faithless Spireguard", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[16809] = {
					"О'мрогг Завоеватель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[136664] = {
					"Sepisko", -- [1]
					"Око Бури", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Гробница королей", -- [2]
				},
				[40446] = {
					"Скар'тис Призыватель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[55659] = {
					"Дикий бес", -- [1]
					"Гробница королей", -- [2]
				},
				[18314] = {
					"Ловчий нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[17669] = {
					"Бешеный бойцовый пес", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[18394] = {
					"Эфириал-призрак", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[100526] = {
					"Истерзанный кровопийца", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[18311] = {
					"Эфириал - осквернитель гробниц", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[100539] = {
					"Скверносерд-стрелок", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[17252] = {
					"HaaKrill", -- [1]
					"Гробница королей", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[101991] = {
					"Обитатель Кошмара", -- [1]
					"Чаща Темного Сердца", -- [2]
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
				[20886] = {
					"Провидец Гнева Соккорат", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[101679] = {
					"Грозный отравитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[103344] = {
					"Дубосерд", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[152396] = {
					"Защитник Азерот", -- [1]
					"Око Бури", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[17835] = {
					"Убийца из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[16700] = {
					"Легионер клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Гробница королей", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[130832] = {
					"Strawberry", -- [1]
					"Око Бури", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[20904] = {
					"Начальник тюрьмы Мелличар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[21104] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[105419] = {
					"Ужасный василиск", -- [1]
					"Око Бури", -- [2]
				},
				[17963] = {
					"Раб-бродяга пустошей", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[155656] = {
					"Миша", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[153532] = {
					"Акир - подчинитель разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158411] = {
					"Нестабильный слуга", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[158157] = {
					"Владыка Матиас Шоу", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[151634] = {
					"Моторилла", -- [1]
					"Храм Котмогу", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[19306] = {
					"Маносос", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[18315] = {
					"Эфириал-чудесник", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[18331] = {
					"Эфириал-черный маг", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[95766] = {
					"Обезумевший остроклюв", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[17420] = {
					"Язычник из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[20906] = {
					"Фазовая прыгуана", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[25740] = {
					"Ахун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[101074] = {
					"Порожденный ненавистью дракончик", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[155090] = {
					"Анодированный разрядниконосец", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[106317] = {
					"Тотем бури", -- [1]
					"Храм Котмогу", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
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
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[157137] = {
					"Terror Tendril", -- [1]
					"Halls of Origination", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20873] = {
					"Мастер искажения Негатона", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[151639] = {
					"Crazed Gyreworm", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[17964] = {
					"Рабочий-бродяга пустошей", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[151640] = {
					"Неисправный хламобот", -- [1]
					"Храм Котмогу", -- [2]
				},
				[95771] = {
					"Грозный разрушитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[100820] = {
					"Ящер-элементаль", -- [1]
					"Гробница королей", -- [2]
				},
				[95769] = {
					"Бешеная визгунья", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158035] = {
					"Магистр Умбрий", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155094] = {
					"Мехагонский солдат", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[106319] = {
					"Тотем огнезола", -- [1]
					"Храм Котмогу", -- [2]
				},
				[131821] = {
					"Безликая дева", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[63508] = {
					"Сюэнь", -- [1]
					"Око Бури", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[19307] = {
					"Ужасень Нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
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
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[123093] = {
					"Scalehide", -- [1]
					"Око Бури", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[157268] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155098] = {
					"Рексар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[106321] = {
					"Тотем попутного ветра", -- [1]
					"Храм Котмогу", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[17693] = {
					"Разведчик из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
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
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[20857] = {
					"Защитник Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[95772] = {
					"Разъяренный коготь ночи", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
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
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[160061] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[161241] = {
					"Мал'тир - маг Бездны", -- [1]
					"Вольная Гавань", -- [2]
				},
				[155657] = {
					"Хаффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[18317] = {
					"Эфириал-жрец", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[137805] = {
					"Black Blood", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[21466] = {
					"Предвестник Скайрисс", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[5925] = {
					"Тотем заземления", -- [1]
					"Храм Котмогу", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161243] = {
					"Сам'рек Призыватель Хаоса", -- [1]
					"Вольная Гавань", -- [2]
				},
				[17670] = {
					"Псарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[99192] = {
					"Тень Ксавия", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[25756] = {
					"Холодная волна Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[161244] = {
					"Кровь Заразителя", -- [1]
					"Вольная Гавань", -- [2]
				},
				[95072] = {
					"Большой элементаль земли", -- [1]
					"Храм Котмогу", -- [2]
				},
				[17839] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17694] = {
					"Темный маг из клана Призрачной Луны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[151654] = {
					"Дьюс Мехалоск", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20859] = {
					"Тюремщик Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20875] = {
					"Крикун Негатона", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20865] = {
					"Амебовидный ужас", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[20867] = {
					"Дозорный Смерти", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[21346] = {
					"Незрячий глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Око Бури", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[164188] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[20898] = {
					"Чудовищный магматический инфернал", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20900] = {
					"Освобожденный Носитель Рока", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[102392] = {
					"Тотем резонанса", -- [1]
					"Храм Котмогу", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[151657] = {
					"Бомботанк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[99358] = {
					"Гнилосердная дриада", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[164189] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[18341] = {
					"Пандемоний", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Око Бури", -- [2]
				},
				[125828] = {
					"Ozric", -- [1]
					"Atal'Dazar", -- [2]
				},
				[18312] = {
					"Эфириал-чароплет", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36694] = {
					["source"] = "Энтропический глаз",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20868,
				},
				[306474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Инифер-Галакронд",
					["npcID"] = 0,
				},
				[280375] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Квадракуб-Борейскаятундра",
					["npcID"] = 0,
				},
				[324898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Салинген-Дракономор",
					["npcID"] = 0,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаршмакх-Дракономор",
					["npcID"] = 0,
				},
				[303405] = {
					["source"] = "Ундана Ледяной Шип",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153304,
				},
				[298288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Палайф-Голдринн",
					["npcID"] = 0,
				},
				[315176] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294195] = {
					["source"] = "\"Оборонобот II\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144298,
				},
				[299313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Смурффа-Азурегос",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29166] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255909] = {
					["source"] = "Тэблита",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313643] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Витдол-Борейскаятундра",
					["npcID"] = 0,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Виилма-Борейскаятундра",
					["npcID"] = 0,
				},
				[119415] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вседеловомне-Галакронд",
					["npcID"] = 0,
				},
				[294198] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сахарок-Борейскаятундра",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стармист-Голдринн",
					["npcID"] = 0,
				},
				[31821] = {
					["source"] = "Бразери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314671] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[240559] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125557] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зловещийшп",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Ельпал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[299320] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сефинрот-Дракономор",
					["npcID"] = 0,
				},
				[299321] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бромдяга-Дракономор",
					["npcID"] = 0,
				},
				[46035] = {
					["source"] = "Магистр Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24685,
				},
				[299322] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасмэн",
					["npcID"] = 0,
				},
				[6552] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32365] = {
					["npcID"] = 18344,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Принц Шаффар",
					["encounterID"] = 1899,
				},
				[80396] = {
					["source"] = "Бразери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гексаэдр-Дракономор",
					["npcID"] = 0,
				},
				[200389] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299324] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чернуха-Дракономор",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["source"] = "Анунаъх",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38807] = {
					["source"] = "Тюремщик Аркатраца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20859,
				},
				[335148] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228537] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Аркерас-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270670] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15531] = {
					["source"] = "Раб-бродяга пустошей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17963,
				},
				[221885] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Амадо-Галакронд",
					["npcID"] = 0,
				},
				[33690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Частити-Голдринн",
					["npcID"] = 0,
				},
				[46036] = {
					["source"] = "Магистр Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24685,
				},
				[118779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[46164] = {
					["encounterID"] = 1894,
					["source"] = "Кель'тас Солнечный Скиталец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24664,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Девочкамоя-Галакронд",
					["npcID"] = 0,
				},
				[315195] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайконг-Борейскаятундра",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Этерей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[1719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балатран-Азурегос",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Префикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Лекарстон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36697] = {
					["source"] = "Энтропический глаз",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20868,
				},
				[38808] = {
					["source"] = "Тюремщик Аркатраца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20859,
				},
				[288075] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Долехем-Азурегос",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Алэз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313663] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[34970] = {
					["type"] = "BUFF",
					["source"] = "Рокмар Трескун",
					["encounterID"] = 1941,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17991,
				},
				[238264] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеймстикир-Дракономор",
					["npcID"] = 0,
				},
				[298823] = {
					["source"] = "Мильпопс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[23922] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайконг-Борейскаятундра",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Сильфур",
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
				[228287] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nekaps-Stormscale",
					["npcID"] = 0,
				},
				[202188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лукрец",
					["npcID"] = 0,
				},
				[34331] = {
					["source"] = "Крикун Негатона",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20875,
				},
				[3561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Блейса-Галакронд",
					["npcID"] = 0,
				},
				[256434] = {
					["source"] = "Энташелар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nekaps-Stormscale",
					["npcID"] = 0,
				},
				[286547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Санатка-Борейскаятундра",
					["npcID"] = 0,
				},
				[30639] = {
					["source"] = "Бешеный бойцовый пес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17669,
				},
				[30735] = {
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[295248] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156132] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лисицанова",
					["npcID"] = 0,
				},
				[278873] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джэйран",
					["npcID"] = 0,
				},
				[305996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медоносец-роевик",
					["npcID"] = 154113,
				},
				[257715] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаршмакх-Дракономор",
					["npcID"] = 0,
				},
				[287062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вэйдун-Азурегос",
					["npcID"] = 0,
				},
				[316744] = {
					["source"] = "Сатис",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Аревэль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278876] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[280412] = {
					["source"] = "Гуля-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44503] = {
					["source"] = "Презренный-полутруп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24690,
				},
				[298836] = {
					["source"] = "Рилченса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Файт",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Дэтрия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285020] = {
					["encounterID"] = 2257,
					["source"] = "\"Платиновый лупцеватор\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144244,
				},
				[226757] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Породистая-Галакронд",
					["npcID"] = 0,
				},
				[302933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Железнобокий-Дракономор",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрната-Азурегос",
					["npcID"] = 0,
				},
				[257719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[155625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нейтер-Дракономор",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Alzhyr-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293724] = {
					["source"] = "Генератор защитного поля",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151579,
				},
				[317265] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44120] = {
					["type"] = "DEBUFF",
					["source"] = "Эрамас Сияющее Пламя",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24554,
				},
				[102793] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[475] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Диджитал-Дракономор",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Артексис-Гордунни",
					["encounterID"] = 1898,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[44504] = {
					["source"] = "Презренный-полутруп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24690,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вэлвир",
					["npcID"] = 0,
				},
				[126462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алесеич",
					["npcID"] = 0,
				},
				[193753] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Филинхос",
					["npcID"] = 0,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["encounterID"] = 1899,
				},
				[36828] = {
					["source"] = "Саргеронский лучник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20901,
				},
				[251837] = {
					["source"] = "Рибозза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[98444] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Бренелия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30832] = {
					["source"] = "Убийца из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17835,
				},
				[125439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аё",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бейжафлор",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мяукала-Дракономор",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холелеле-ЧерныйШрам",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Гунгнар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295269] = {
					["source"] = "Харликинка-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44505] = {
					["type"] = "BUFF",
					["source"] = "Тихий презренный",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24688,
				},
				[265077] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Луриция-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рукопашный",
					["npcID"] = 0,
				},
				[38940] = {
					["source"] = "Саргеронский лучник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20901,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[226510] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[193759] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ариданна-Дракономор",
					["npcID"] = 0,
				},
				[210391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изерус-Голдринн",
					["npcID"] = 0,
				},
				[16172] = {
					["source"] = "Укротитель резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17959,
				},
				[8096] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Цукентаг",
					["npcID"] = 0,
				},
				[44314] = {
					["encounterID"] = 1897,
					["source"] = "Селин Огненное Сердце",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24723,
				},
				[226512] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34335] = {
					["source"] = "Крикун Негатона",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20875,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Аркерас-Гордунни",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38813] = {
					["source"] = "Пожиратель душ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20866,
				},
				[16380] = {
					["source"] = "Таящаяся ведьма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20882,
				},
				[39005] = {
					["encounterID"] = 1916,
					["source"] = "Зерекет Бездонный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20870,
				},
				[6201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кхэдли-Галакронд",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулбой",
					["npcID"] = 0,
				},
				[37470] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-чароплет",
					["npcID"] = 18312,
				},
				[256452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исмори",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201695] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Карэлайн-Азурегос",
					["npcID"] = 0,
				},
				[527] = {
					["encounterID"] = 1920,
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[12542] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21104,
				},
				[274814] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шимитус-Дракономор",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153848] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Милистелла",
					["npcID"] = 0,
				},
				[297845] = {
					["source"] = "Бобэс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73630] = {
					["source"] = "Инраэль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фамимник-Галакронд",
					["npcID"] = 0,
				},
				[39006] = {
					["encounterID"] = 1915,
					["source"] = "Провидец Гнева Соккорат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20886,
				},
				[256455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кассадин-Азурегос",
					["npcID"] = 0,
				},
				[272260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Засмущаю",
					["npcID"] = 0,
				},
				[31985] = {
					["encounterID"] = 1939,
					["source"] = "Менну Предатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17941,
				},
				[205025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрната-Азурегос",
					["npcID"] = 0,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрната-Азурегос",
					["npcID"] = 0,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Араквазин",
					["npcID"] = 17252,
				},
				[273286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hijex-Blackhand",
					["npcID"] = 0,
				},
				[46043] = {
					["source"] = "Чернокнижник Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24686,
				},
				[102417] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32369] = {
					["npcID"] = 18430,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-ученик",
					["encounterID"] = 1899,
				},
				[315763] = {
					["source"] = "Веристраз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чакураа",
					["npcID"] = 0,
				},
				[308599] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёмкин-Борейскаятундра",
					["npcID"] = 0,
				},
				[131627] = {
					["type"] = "BUFF",
					["source"] = "Наваждение ша",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 66423,
				},
				[46747] = {
					["source"] = "Псина-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[130778] = {
					["source"] = "Салли \"Рассольный\" Маклири",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 66501,
				},
				[270219] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хмелевар Линь",
					["npcID"] = 148744,
				},
				[273845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буревестница Морка",
					["npcID"] = 148759,
				},
				[297854] = {
					["source"] = "Пламя горнила",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151930,
				},
				[210657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лукрец",
					["npcID"] = 0,
				},
				[124216] = {
					["type"] = "BUFF",
					["source"] = "Драйскай",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Пилика",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Нексуз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12550] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18482,
				},
				[242642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрилия-Галакронд",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ззлойрокк",
					["npcID"] = 0,
				},
				[38538] = {
					["encounterID"] = 1920,
					["source"] = "Повелитель времени Дежа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17879,
				},
				[585] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Непостижимая-Гордунни",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44226] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1894,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вакурочка-Галакронд",
					["npcID"] = 0,
				},
				[191212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мариякюри",
					["npcID"] = 0,
				},
				[37664] = {
					["source"] = "Чародейка резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17961,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Араквазин",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Жря",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46044] = {
					["source"] = "Бес Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24815,
				},
				[44224] = {
					["encounterID"] = 1894,
					["source"] = "Кель'тас Солнечный Скиталец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24664,
				},
				[16953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[596] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44199] = {
					["type"] = "BUFF",
					["source"] = "Феникс",
					["encounterID"] = 1894,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24674,
				},
				[46163] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1894,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302917] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[203534] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300419] = {
					["source"] = "Кик'сжул Голос Глубин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153312,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Миссисли-Ревущийфьорд",
					["npcID"] = 0,
				},
				[50842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[27619] = {
					["type"] = "BUFF",
					["source"] = "Яззай",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24561,
				},
				[46194] = {
					["encounterID"] = 1895,
					["source"] = "Яззай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24561,
				},
				[276880] = {
					["source"] = "Пробудившийся мертвец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136490,
				},
				[38816] = {
					["source"] = "Дозорный Смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20867,
				},
				[277904] = {
					["source"] = "Засерулькин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44177] = {
					["encounterID"] = 1895,
					["source"] = "Яззай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24561,
				},
				[34914] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Левониус-СтражСмерти",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14514] = {
					["type"] = "BUFF",
					["source"] = "Яззай",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24561,
				},
				[272276] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61781] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Озарко",
					["npcID"] = 0,
				},
				[132620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Притаившийся",
					["npcID"] = 0,
				},
				[300423] = {
					["source"] = "Кик'сжул Голос Глубин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153312,
				},
				[15503] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[38384] = {
					["encounterID"] = 1895,
					["source"] = "Яззай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24561,
				},
				[27610] = {
					["encounterID"] = 1895,
					["source"] = "Жрица Делрисса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24560,
				},
				[15654] = {
					["encounterID"] = 1895,
					["source"] = "Жрица Делрисса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24560,
				},
				[37665] = {
					["source"] = "Чародейка резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17961,
				},
				[272790] = {
					["source"] = "Гамаюн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гросколд",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сенатяночка-Гордунни",
					["npcID"] = 0,
				},
				[44291] = {
					["type"] = "BUFF",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24560,
				},
				[297117] = {
					["source"] = "Доруе",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Даззлс-СвежевательДуш",
					["npcID"] = 0,
				},
				[46188] = {
					["type"] = "DEBUFF",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24556,
				},
				[210152] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46187] = {
					["encounterID"] = 1895,
					["source"] = "Зелфан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24556,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мизак-Дракономор",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Даркбёрд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Суок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36514] = {
					["source"] = "Чародейский взрыв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21290,
				},
				[288146] = {
					["source"] = "Вэлвир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46183] = {
					["encounterID"] = 1895,
					["source"] = "Эрамас Сияющее Пламя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24554,
				},
				[27584] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[38817] = {
					["source"] = "Дозорный Смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20867,
				},
				[227041] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Райнок-Гордунни",
					["npcID"] = 0,
				},
				[39009] = {
					["encounterID"] = 1913,
					["source"] = "Даллия Глашатай Судьбы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20885,
				},
				[313113] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46185] = {
					["type"] = "BUFF",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24556,
				},
				[46184] = {
					["encounterID"] = 1895,
					["source"] = "Зелфан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24556,
				},
				[17843] = {
					["encounterID"] = 1895,
					["source"] = "Жрица Делрисса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24560,
				},
				[269214] = {
					["source"] = "Аланнари",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294290] = {
					["source"] = "Переработчик отходов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144293,
				},
				[46182] = {
					["encounterID"] = 1895,
					["source"] = "Эрамас Сияющее Пламя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24554,
				},
				[196840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[293779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гуайре-Дракономор",
					["npcID"] = 0,
				},
				[33508] = {
					["source"] = "Темный маг из клана Призрачной Луны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17694,
				},
				[37666] = {
					["source"] = "Наблюдатель резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17938,
				},
				[27581] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[15530] = {
					["encounterID"] = 1895,
					["source"] = "Яззай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24561,
				},
				[46046] = {
					["type"] = "BUFF",
					["source"] = "Врач Солнечного Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24687,
				},
				[19714] = {
					["source"] = "Аккирис Штормоход",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20908,
				},
				[303504] = {
					["source"] = "Ширакесс - исказительница Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153843,
				},
				[46193] = {
					["encounterID"] = 1895,
					["source"] = "Жрица Делрисса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24560,
				},
				[217832] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29332] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дерикус-Дракономор",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шильда-Галакронд",
					["npcID"] = 0,
				},
				[305249] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 1935,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23600] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[131347] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20615] = {
					["type"] = "DEBUFF",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24559,
				},
				[27577] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[275857] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[12544] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35001,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Груммелей-Борейскаятундра",
					["npcID"] = 0,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диджитал-Дракономор",
					["npcID"] = 0,
				},
				[203123] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Локдорк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34980] = {
					["encounterID"] = 1939,
					["source"] = "Менну Предатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17941,
				},
				[316814] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311185] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Френззи",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Ельпал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283551] = {
					["type"] = "BUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[19705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мариякюри",
					["npcID"] = 0,
				},
				[311186] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дётти-Азурегос",
					["npcID"] = 0,
				},
				[44538] = {
					["source"] = "Контрабандист Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24698,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Вэлвир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасмэн",
					["npcID"] = 0,
				},
				[307220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шичуан",
					["npcID"] = 0,
				},
				[87840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Перфораторик",
					["npcID"] = 0,
				},
				[46047] = {
					["type"] = "DEBUFF",
					["source"] = "Врач Солнечного Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24687,
				},
				[46150] = {
					["source"] = "Ведьма из клана Змеиных Колец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24696,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эпсилона-Галакронд",
					["npcID"] = 0,
				},
				[271272] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шериф дома Штормсонгов",
					["npcID"] = 130008,
				},
				[287045] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Прототип бомбардировщика Поззика",
					["npcID"] = 147945,
				},
				[44320] = {
					["type"] = "BUFF",
					["source"] = "Кристалл Скверны",
					["encounterID"] = 1897,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24722,
				},
				[264620] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2782] = {
					["source"] = "Иомочка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[697] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гулсан",
					["npcID"] = 0,
				},
				[698] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Приминик",
					["npcID"] = 0,
				},
				[44640] = {
					["source"] = "Сестра Мучений",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24697,
				},
				[115834] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114018] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36644] = {
					["source"] = "Пожиратель душ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20866,
				},
				[32691] = {
					["source"] = "Аккирис Штормоход",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20908,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[46367] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26579,
				},
				[280400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[162313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэйлиар-Азурегос",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 1898,
					["source"] = "Артексис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44335] = {
					["type"] = "DEBUFF",
					["source"] = "Тэблита",
					["encounterID"] = 1898,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[14914] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[295842] = {
					["source"] = "Гэймовер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46153] = {
					["encounterID"] = 1897,
					["source"] = "Селин Огненное Сердце",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24723,
				},
				[37668] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-чароплет",
					["npcID"] = 18312,
				},
				[16827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Локе'нахак",
					["npcID"] = 32517,
				},
				[5211] = {
					["encounterID"] = 1897,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208628] = {
					["source"] = "Мелиодар-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200174] = {
					["encounterID"] = 1897,
					["source"] = "Непостижимая-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44534] = {
					["source"] = "Презренный-костолом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24689,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Грибсон-Азурегос",
					["npcID"] = 0,
				},
				[316826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Искаженный отросток",
					["npcID"] = 162764,
				},
				[29333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Амадо-Галакронд",
					["npcID"] = 0,
				},
				[44533] = {
					["source"] = "Тихий презренный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24688,
				},
				[44605] = {
					["type"] = "BUFF",
					["source"] = "Магистр Солнечного Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24685,
				},
				[271843] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46033] = {
					["source"] = "Рыцарь крови Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24684,
				},
				[272817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мумимаг",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[292264] = {
					["encounterID"] = 2260,
					["source"] = "\"Омега-крушитель\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144249,
				},
				[46030] = {
					["type"] = "BUFF",
					["source"] = "Рыцарь крови Солнечного Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24684,
				},
				[46029] = {
					["source"] = "Рыцарь крови Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24684,
				},
				[283565] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[273842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[44475] = {
					["source"] = "Маг-стражник Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24683,
				},
				[46042] = {
					["source"] = "Чернокнижник Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24686,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Непостижимая-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Непостижимая-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сибириана-Голдринн",
					["npcID"] = 0,
				},
				[310690] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311202] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Непостижимая-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[37605] = {
					["type"] = "BUFF",
					["source"] = "Эонус",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17881,
				},
				[311203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Смяшной",
					["npcID"] = 0,
				},
				[295339] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мояко",
					["npcID"] = 0,
				},
				[93985] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46028] = {
					["source"] = "Маг-стражник Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24683,
				},
				[44517] = {
					["source"] = "Чернокнижник Солнечного Клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24686,
				},
				[139546] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44194] = {
					["encounterID"] = 1894,
					["source"] = "Кель'тас Солнечный Скиталец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24664,
				},
				[8097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаэтано",
					["npcID"] = 0,
				},
				[44520] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24686,
				},
				[46302] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267410] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298412] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арнинггар",
					["npcID"] = 0,
				},
				[30485] = {
					["source"] = "Язычник из клана Изувеченной Длани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17420,
				},
				[317859] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2257,
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[316985] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лайтенерд",
					["npcID"] = 0,
				},
				[295343] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298414] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Экзистенция-Голдринн",
					["npcID"] = 0,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алькамалька-Голдринн",
					["npcID"] = 0,
				},
				[39013] = {
					["encounterID"] = 1913,
					["source"] = "Даллия Глашатай Судьбы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20885,
				},
				[772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ålka-Hyjal",
					["npcID"] = 0,
				},
				[298415] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бромдяга-Дракономор",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207230] = {
					["source"] = "Аркерас-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34321] = {
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47585] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воимяальянса-Азурегос",
					["npcID"] = 0,
				},
				[295048] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223732] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зеленый защитник",
					["npcID"] = 148491,
				},
				[781] = {
					["source"] = "Пилика",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298929] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эверлайнс",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Каленлар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261602] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ерсак-Голдринн",
					["npcID"] = 0,
				},
				[304559] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрната-Азурегос",
					["npcID"] = 0,
				},
				[295047] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35943] = {
					["source"] = "Послушник из клана Призрачной Луны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16594,
				},
				[297087] = {
					["source"] = "Саландра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Лайфли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29334] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дерикус-Дракономор",
					["npcID"] = 0,
				},
				[193796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[275391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[145152] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таргош-Дракономор",
					["npcID"] = 0,
				},
				[178444] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джев",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волхова",
					["npcID"] = 0,
				},
				[311215] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джесуслкии-Азурегос",
					["npcID"] = 0,
				},
				[299445] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Николаис-Азурегос",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36839] = {
					["source"] = "Душегуб Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20896,
				},
				[311216] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Светлыйжнец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34984] = {
					["source"] = "Скат резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21128,
				},
				[115098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йервальд",
					["npcID"] = 0,
				},
				[311217] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арксан",
					["npcID"] = 0,
				},
				[301312] = {
					["source"] = "Кассиндра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эмприла-Галакронд",
					["npcID"] = 0,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[33377] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34906] = {
					["source"] = "Натуралист Кус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17893,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[192081] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274373] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фархеим-Галакронд",
					["npcID"] = 0,
				},
				[319919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шифанг-Борейскаятундра",
					["npcID"] = 0,
				},
				[200196] = {
					["source"] = "Виндикто-ТкачСмерти",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[33833] = {
					["encounterID"] = 1914,
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[35944] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-жрец",
					["npcID"] = 18317,
				},
				[304056] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39340] = {
					["encounterID"] = 1940,
					["source"] = "Зыбун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17942,
				},
				[30479] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 16594,
				},
				[36974] = {
					["source"] = "Убийца из клана Изувеченной Длани",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17695,
				},
				[32055] = {
					["encounterID"] = 1940,
					["source"] = "Зыбун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17942,
				},
				[32173] = {
					["source"] = "Чародейка резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17961,
				},
				[299302] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лонариэль-Голдринн",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кручустрелу-Ревущийфьорд",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Alzhyr-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50977] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нидол-Борейскаятундра",
					["npcID"] = 0,
				},
				[38759] = {
					["type"] = "BUFF",
					["source"] = "Пандемоний",
					["npcID"] = 18341,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1900,
				},
				[38801] = {
					["encounterID"] = 1941,
					["source"] = "Рокмар Трескун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17991,
				},
				[31948] = {
					["encounterID"] = 1941,
					["source"] = "Рокмар Трескун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17991,
				},
				[35008] = {
					["encounterID"] = 1941,
					["source"] = "Рокмар Трескун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17991,
				},
				[31554] = {
					["type"] = "BUFF",
					["source"] = "Защитник резервуара Кривого Клыка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17958,
				},
				[15407] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298431] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[39376] = {
					["source"] = "Техник резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17940,
				},
				[53600] = {
					["source"] = "Таллери-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22766] = {
					["source"] = "Черный ягуар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18982,
				},
				[15487] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тоторин-Галакронд",
					["npcID"] = 0,
				},
				[22842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[318391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Великий потусторонний червь",
					["npcID"] = 152550,
				},
				[6754] = {
					["source"] = "Укротитель резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17959,
				},
				[298945] = {
					["source"] = "Кил'каррокский командир",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145346,
				},
				[15583] = {
					["source"] = "Убийца из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21137,
				},
				[49252] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сидорова",
					["npcID"] = 0,
				},
				[29175] = {
					["source"] = "Турборука-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294852] = {
					["source"] = "Голос-в-Глубинах",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151719,
				},
				[157981] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106785] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Ельпал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рируля-Дракономор",
					["npcID"] = 0,
				},
				[297412] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35010] = {
					["encounterID"] = 1939,
					["source"] = "Менну Предатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17941,
				},
				[165658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 131890,
				},
				[298948] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Елена-Дракономор",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15791] = {
					["source"] = "Ворожея резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17960,
				},
				[102359] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[294855] = {
					["encounterID"] = 2259,
					["source"] = "Непримечательное растение",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152033,
				},
				[295367] = {
					["source"] = "Virass-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38824] = {
					["source"] = "Энтропический глаз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20868,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298950] = {
					["source"] = "Алэз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30923] = {
					["source"] = "Ворожея резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17960,
				},
				[31555] = {
					["source"] = "Ворожея резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17960,
				},
				[13877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Найтвингр-Азурегос",
					["npcID"] = 0,
				},
				[871] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29544] = {
					["type"] = "DEBUFF",
					["source"] = "Воитель резервуара Кривого Клыка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17957,
				},
				[19134] = {
					["source"] = "Воитель резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17957,
				},
				[176151] = {
					["source"] = "Даркбёрд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33649] = {
					["source"] = "Лироойдженки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49020] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102165] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нерекаемый",
					["npcID"] = 0,
				},
				[156071] = {
					["source"] = "Валпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шизафреничка-Дракономор",
					["npcID"] = 0,
				},
				[4987] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокнекритует-Дракономор",
					["npcID"] = 0,
				},
				[298710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Павиф-Галакронд",
					["npcID"] = 0,
				},
				[194575] = {
					["source"] = "Дронуш-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рейлган-Борейскаятундра",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294349] = {
					["source"] = "Живые отходы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144301,
				},
				[212792] = {
					["type"] = "DEBUFF",
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[37662] = {
					["source"] = "Рабочий-бродяга пустошей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17964,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[194576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мирисида-Гордунни",
					["npcID"] = 0,
				},
				[287049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Прототип бомбардировщика Поззика",
					["npcID"] = 147945,
				},
				[8042] = {
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289308] = {
					["type"] = "DEBUFF",
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294863] = {
					["type"] = "BUFF",
					["source"] = "Непримечательное растение",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152033,
				},
				[38761] = {
					["npcID"] = 18343,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таварок",
					["encounterID"] = 1901,
				},
				[261616] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кэти Штемпельпупс",
					["npcID"] = 132969,
				},
				[171804] = {
					["source"] = "Магошке-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[39017] = {
					["encounterID"] = 1914,
					["source"] = "Предвестник Скайрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20912,
				},
				[203277] = {
					["source"] = "Кэллия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31551] = {
					["source"] = "Крабстер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17816,
				},
				[33132] = {
					["encounterID"] = 1939,
					["source"] = "Оскверненный тотем вспышки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18179,
				},
				[204301] = {
					["source"] = "Таллери-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Лейасиль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22907] = {
					["source"] = "Тюремщик Аркатраца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20859,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[216328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[224772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дрешама-Дракономор",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Лейасиль-Азурегос",
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
				[297939] = {
					["source"] = "Кил'каррокский провидец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152411,
				},
				[188443] = {
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196941] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Вещииолег-Азурегос",
					["npcID"] = 0,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нааса",
					["npcID"] = 0,
				},
				[39037] = {
					["source"] = "Сумеречный драконаар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20910,
				},
				[297941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Френззи",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хмелевар Линь",
					["npcID"] = 148744,
				},
				[132403] = {
					["source"] = "Таллери-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27609] = {
					["encounterID"] = 1895,
					["source"] = "Жрица Делрисса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24560,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алисразор-Дракономор",
					["npcID"] = 0,
				},
				[280543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сидорова",
					["npcID"] = 0,
				},
				[295384] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296539] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Искаженный отросток",
					["npcID"] = 162764,
				},
				[28502] = {
					["source"] = "Ронгарек-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Озарко",
					["npcID"] = 0,
				},
				[31991] = {
					["encounterID"] = 1939,
					["source"] = "Менну Предатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17941,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Истериика-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38815] = {
					["source"] = "Незрячий глаз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21346,
				},
				[203538] = {
					["source"] = "Валпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[285152] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[275429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Приминик",
					["npcID"] = 0,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35948] = {
					["source"] = "Язычник из клана Изувеченной Длани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17420,
				},
				[155158] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Валпал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[274919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[293854] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[15232] = {
					["source"] = "Темный маг из клана Призрачной Луны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17694,
				},
				[264173] = {
					["source"] = "Гринхилл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Лейасиль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[818] = {
					["source"] = "Саландра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298461] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34605] = {
					["type"] = "BUFF",
					["source"] = "Принц Шаффар",
					["npcID"] = 18344,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1899,
				},
				[36716] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 21761,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[304603] = {
					["source"] = "Варрак",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36908] = {
					["source"] = "Фазовая прыгуана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20906,
				},
				[34925] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасень Нексуса",
					["npcID"] = 19307,
				},
				[194249] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36054] = {
					["source"] = "Дикарь из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16523,
				},
				[88625] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[312793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аирунч-Галакронд",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Префикс",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308188] = {
					["source"] = "Алэз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нидол-Борейскаятундра",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шамогон-Борейскаятундра",
					["npcID"] = 0,
				},
				[300095] = {
					["source"] = "Нестабильный волноход",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150371,
				},
				[308189] = {
					["source"] = "Брийя",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[290790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Елена-Дракономор",
					["npcID"] = 0,
				},
				[35949] = {
					["source"] = "Язычник из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17420,
				},
				[293861] = {
					["source"] = "Противопехотная белка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151613,
				},
				[100780] = {
					["source"] = "Лейасиль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[183585] = {
					["source"] = "Присягнувший Свету анахорет",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 109751,
				},
				[44457] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[178119] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мирослава-Азурегос",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Веристраз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273298] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[313310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[27578] = {
					["type"] = "BUFF",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24559,
				},
				[200218] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скверноботик",
					["npcID"] = 101462,
				},
				[145205] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36909] = {
					["source"] = "Фазовая прыгуана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20906,
				},
				[39020] = {
					["encounterID"] = 1914,
					["source"] = "Предвестник Скайрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20912,
				},
				[77472] = {
					["source"] = "Мильпопс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304612] = {
					["source"] = "Варрак",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кадавр",
					["npcID"] = 130727,
				},
				[34940] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ловчий нексуса",
					["npcID"] = 18314,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэлдорн-Дракономор",
					["npcID"] = 0,
				},
				[272721] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115750] = {
					["source"] = "Таллери-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36119] = {
					["encounterID"] = 1916,
					["source"] = "Зерекет Бездонный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20870,
				},
				[105771] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47568] = {
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["encounterID"] = 1916,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элантугор-Дракономор",
					["npcID"] = 0,
				},
				[303080] = {
					["source"] = "Ветара-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Веселыепятки",
					["npcID"] = 0,
				},
				[279503] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236299] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307175] = {
					["source"] = "Нексуз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[297964] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Синклит-Дракономор",
					["npcID"] = 0,
				},
				[59658] = {
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арксан",
					["npcID"] = 0,
				},
				[313148] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Балбесонька-ЧерныйШрам",
					["encounterID"] = 1899,
				},
				[207386] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300524] = {
					["source"] = "Кик'сжул Голос Глубин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153312,
				},
				[1022] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холелеле-ЧерныйШрам",
					["npcID"] = 0,
				},
				[287731] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тхааида",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алисразор-Дракономор",
					["npcID"] = 0,
				},
				[39021] = {
					["encounterID"] = 1914,
					["source"] = "Предвестник Скайрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21466,
				},
				[108843] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Готка-Борейскаятундра",
					["npcID"] = 0,
				},
				[288756] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Веселыепятки",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202425] = {
					["source"] = "Иомочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39533] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283640] = {
					["type"] = "DEBUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 1860,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вейронити-Дракономор",
					["npcID"] = 0,
				},
				[66] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297970] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ельгато",
					["npcID"] = 0,
				},
				[300110] = {
					["source"] = "Яростный элементаль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152164,
				},
				[293671] = {
					["source"] = "Ладиол",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алькамалька-Голдринн",
					["npcID"] = 0,
				},
				[297971] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шаолень-Голдринн",
					["npcID"] = 0,
				},
				[193316] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Найтвингр-Азурегос",
					["npcID"] = 0,
				},
				[165144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волнолом Сян",
					["npcID"] = 147250,
				},
				[2139] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[305469] = {
					["source"] = "Глубинный кольчатый змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145343,
				},
				[202168] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25821] = {
					["encounterID"] = 1938,
					["source"] = "Вождь Каргат Острорук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16808,
				},
				[254471] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317420] = {
					["source"] = "Фредрикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8676] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38830] = {
					["source"] = "Часовой Аркатраца",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20869,
				},
				[58506] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54933,
				},
				[29722] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[299510] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ноксарана-Дракономор",
					["npcID"] = 0,
				},
				[254472] = {
					["type"] = "BUFF",
					["source"] = "Саирна",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Энташелар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12611] = {
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[132653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 147369,
				},
				[232698] = {
					["source"] = "Светлыйжнец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Белокрылый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морошко-Борейскаятундра",
					["npcID"] = 0,
				},
				[30989] = {
					["source"] = "Ревнитель из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17462,
				},
				[148541] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299513] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Палайф-Голдринн",
					["npcID"] = 0,
				},
				[35760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Большой крабстер",
					["npcID"] = 17817,
				},
				[326419] = {
					["source"] = "Рыжжулька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155853] = {
					["source"] = "Дрюкар-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Палайф-Голдринн",
					["npcID"] = 0,
				},
				[44268] = {
					["encounterID"] = 1895,
					["source"] = "Полководец Саларис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24559,
				},
				[36142] = {
					["type"] = "BUFF",
					["source"] = "Даллия Глашатай Судьбы",
					["encounterID"] = 1913,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20885,
				},
				[152279] = {
					["type"] = "BUFF",
					["source"] = "Аверсэн-Ревущийфьорд",
					["encounterID"] = 1936,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Авикейчик-Дракономор",
					["npcID"] = 0,
				},
				[210660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лукрец",
					["npcID"] = 0,
				},
				[30478] = {
					["source"] = "Новообращенный орк Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17083,
				},
				[3391] = {
					["source"] = "Буян из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16593,
				},
				[116011] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93622] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кэлинна",
					["npcID"] = 0,
				},
				[303611] = {
					["source"] = "Ширакесс-разоритель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152827,
				},
				[36784] = {
					["source"] = "Эредарский пожиратель душ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20879,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[36912] = {
					["source"] = "Аккирис Штормоход",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20908,
				},
				[289283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Моргаур-Подземье",
					["npcID"] = 0,
				},
				[1160] = {
					["encounterID"] = 2257,
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282119] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[132168] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283143] = {
					["type"] = "BUFF",
					["source"] = "Магнитохват",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145560,
				},
				[291843] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35945] = {
					["source"] = "Меткий стрелок из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16704,
				},
				[184367] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303614] = {
					["source"] = "Ширакесс-разоритель",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152827,
				},
				[13323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-чудесник",
					["npcID"] = 18315,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[296962] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[285500] = {
					["source"] = "Шерайа-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6795] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35953] = {
					["encounterID"] = 1936,
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[2383] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278134] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280404] = {
					["source"] = "Байгрей",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32587] = {
					["source"] = "Воитель клана Изувеченной Длани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17671,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Занавеска-Азурегос",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шифанг-Борейскаятундра",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297989] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алистрен-Дракономор",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Доктордруу-Дракономор",
					["npcID"] = 0,
				},
				[278543] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Шерайа-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аё",
					["npcID"] = 0,
				},
				[85948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фидгар-Борейскаятундра",
					["npcID"] = 0,
				},
				[34930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-черный маг",
					["npcID"] = 18331,
				},
				[297991] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шигонский",
					["npcID"] = 0,
				},
				[267798] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["encounterID"] = 1900,
				},
				[291974] = {
					["encounterID"] = 2260,
					["source"] = "Король Мехагон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150397,
				},
				[299527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нефритити",
					["npcID"] = 0,
				},
				[273428] = {
					["source"] = "Ромути",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51690] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107570] = {
					["source"] = "Байгрей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207400] = {
					["source"] = "Мильпопс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Проснись-Дракономор",
					["npcID"] = 0,
				},
				[14034] = {
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36052] = {
					["source"] = "Послушник из клана Призрачной Луны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16594,
				},
				[48108] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["source"] = "Велебор",
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
					["source"] = "Водка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280084] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[264220] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[188370] = {
					["source"] = "Ельпал-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[294926] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хируна-Дракономор",
					["npcID"] = 0,
				},
				[236060] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[43198] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Озбор",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Озмо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291613] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150396,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Веселыепятки",
					["npcID"] = 0,
				},
				[36914] = {
					["source"] = "Аккирис Штормоход",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20908,
				},
				[30584] = {
					["encounterID"] = 1937,
					["source"] = "О'мрогг Завоеватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16809,
				},
				[305796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хируна-Дракономор",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Мильпопс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294929] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[160981] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нучтонеждали",
					["npcID"] = 0,
				},
				[294027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[298512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вещииолег-Азурегос",
					["npcID"] = 0,
				},
				[244808] = {
					["source"] = "Песчаный краб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145337,
				},
				[298347] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152676,
				},
				[285719] = {
					["source"] = "Хьёна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22911] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал - осквернитель гробниц",
					["npcID"] = 18311,
				},
				[246809] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жесткийалкаш-Гордунни",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285720] = {
					["source"] = "Тревискольт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[299538] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лертана-Галакронд",
					["npcID"] = 0,
				},
				[285721] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[311309] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джесуслкии-Азурегос",
					["npcID"] = 0,
				},
				[299539] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Даркра-Галакронд",
					["npcID"] = 0,
				},
				[204335] = {
					["source"] = "Донолег",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12675] = {
					["source"] = "Раб-бродяга пустошей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17963,
				},
				[311310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[299540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нефритити",
					["npcID"] = 0,
				},
				[40625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Выкат-Азурегос",
					["npcID"] = 0,
				},
				[193333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэрэстри-Борейскаятундра",
					["npcID"] = 0,
				},
				[311311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шичуан",
					["npcID"] = 0,
				},
				[299541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рейнари-Азурегос",
					["npcID"] = 0,
				},
				[291865] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[126892] = {
					["source"] = "Майстар-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Левиофанта",
					["npcID"] = 0,
				},
				[80451] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[59752] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дотраэль-Азурегос",
					["npcID"] = 0,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[107574] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298115] = {
					["source"] = "Шар сокрушающего прилива",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153500,
				},
				[205369] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194574] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кирнайт-Борейскаятундра",
					["npcID"] = 0,
				},
				[272934] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оласт-Галакронд",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал - осквернитель гробниц",
					["npcID"] = 18311,
				},
				[36020] = {
					["source"] = "Буян из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16593,
				},
				[221887] = {
					["source"] = "Зера-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288800] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Байгрей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36276] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21104,
				},
				[263725] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шаман Служителей Земли",
					["npcID"] = 135671,
				},
				[303566] = {
					["source"] = "Зоатроид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152812,
				},
				[191034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гелинион-Галакронд",
					["npcID"] = 0,
				},
				[292363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джимрен-Ясеневыйлес",
					["npcID"] = 0,
				},
				[314678] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[38835] = {
					["source"] = "Крикун Негатона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20875,
				},
				[293142] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280615] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тотембро",
					["npcID"] = 0,
				},
				[299550] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Каладар-Галакронд",
					["npcID"] = 0,
				},
				[291874] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[306715] = {
					["source"] = "Холимоули-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299239] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дехашница",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сапожъник-Голдринн",
					["npcID"] = 0,
				},
				[2641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Перчила-Голдринн",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11428] = {
					["source"] = "Повелитель временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17839,
				},
				[273453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Веселыепятки",
					["npcID"] = 0,
				},
				[304606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фунчоз-Борейскаятундра",
					["npcID"] = 0,
				},
				[199736] = {
					["source"] = "Гиббли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296211] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5302] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Этерей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46192] = {
					["type"] = "BUFF",
					["source"] = "Врач Солнечного Клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24687,
				},
				[273455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дедсаб",
					["npcID"] = 0,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Федир",
					["npcID"] = 0,
				},
				[303593] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153738,
				},
				[36213] = {
					["npcID"] = 95072,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Большой элементаль земли",
					["encounterID"] = 1899,
				},
				[135700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271672] = {
					["encounterID"] = 1914,
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Карикун-Азурегос",
					["npcID"] = 0,
				},
				[268604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[39034] = {
					["source"] = "Сумеречный драконаар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20910,
				},
				[8269] = {
					["source"] = "Повелитель временного разлома",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17839,
				},
				[152262] = {
					["source"] = "Таллери-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205228] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[38900] = {
					["source"] = "Заклинатель жизни из Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21702,
				},
				[39036] = {
					["source"] = "Сумеречный драконаар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20910,
				},
				[34934] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-призрак",
					["npcID"] = 18394,
				},
				[2565] = {
					["encounterID"] = 2257,
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271924] = {
					["type"] = "DEBUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1899,
				},
				[299047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зелнайт-Дракономор",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Констеллэйшн-Ревущийфьорд",
					["npcID"] = 0,
				},
				[293930] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[1490] = {
					["source"] = "Virass-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Пранкерша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Анунаъх",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[11972] = {
					["source"] = "Воитель клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17671,
				},
				[204019] = {
					["source"] = "Таллери-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287279] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джинсей",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[273974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элантугор-Дракономор",
					["npcID"] = 0,
				},
				[2378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ингрид-Дракономор",
					["npcID"] = 0,
				},
				[32316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-чароплет",
					["npcID"] = 18312,
				},
				[33975] = {
					["encounterID"] = 1914,
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[44274] = {
					["encounterID"] = 1895,
					["source"] = "Зелфан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24556,
				},
				[272440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэлдорн-Дракономор",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паладинус-Дракономор",
					["npcID"] = 0,
				},
				[77764] = {
					["source"] = "Омализумаб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22273] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-колдун",
					["npcID"] = 18313,
				},
				[115767] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260384] = {
					["source"] = "Дэтрия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273465] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[318211] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39028] = {
					["source"] = "Аккирис Штормоход",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20908,
				},
				[130736] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[38901] = {
					["source"] = "Чудовищный магматический инфернал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20898,
				},
				[22561] = {
					["source"] = "Сумеречный драконаар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20910,
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
				[276026] = {
					["source"] = "Роксорз-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элантугор-Дракономор",
					["npcID"] = 0,
				},
				[38914] = {
					["source"] = "Саргеронский лучник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20901,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[36831] = {
					["source"] = "Саргеронский призыватель огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20902,
				},
				[89157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хдышь-Галакронд",
					["npcID"] = 0,
				},
				[264769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дантерсмонха",
					["npcID"] = 0,
				},
				[35511] = {
					["source"] = "Меткий стрелок из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16704,
				},
				[115008] = {
					["source"] = "Монтос-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298909] = {
					["source"] = "Кил'каррокский командир",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145346,
				},
				[118455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Манабулкин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дангалар",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[302150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Железнобокий-Дракономор",
					["npcID"] = 0,
				},
				[32693] = {
					["source"] = "Заклинатель волн Эфириума",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20897,
				},
				[194223] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[297961] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вакурочка-Галакронд",
					["npcID"] = 0,
				},
				[294966] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Улетная",
					["npcID"] = 0,
				},
				[124213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мумимаг",
					["npcID"] = 0,
				},
				[36512] = {
					["type"] = "BUFF",
					["source"] = "Провидец Гнева Соккорат",
					["encounterID"] = 1915,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20886,
				},
				[187464] = {
					["source"] = "Тьмавсарае",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дангалар",
					["npcID"] = 0,
				},
				[304611] = {
					["source"] = "Варрак",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[324860] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пухмех-Галакронд",
					["npcID"] = 0,
				},
				[293945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фрэнс-Дракономор",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36862] = {
					["source"] = "Таящаяся ведьма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20882,
				},
				[273794] = {
					["source"] = "Иомочка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304723] = {
					["source"] = "Глубинный кольчатый удав",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152551,
				},
				[38896] = {
					["source"] = "Заклинатель волн Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20897,
				},
				[303158] = {
					["source"] = "Занш'ир - чешуйчатый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152881,
				},
				[47528] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30991] = {
					["type"] = "BUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["encounterID"] = 1938,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17695,
				},
				[36782] = {
					["source"] = "Эредарский пожиратель душ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20879,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[272685] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[673] = {
					["type"] = "BUFF",
					["source"] = "Борджик-ЧерныйШрам",
					["encounterID"] = 1916,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36699] = {
					["source"] = "Энтропический глаз",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20868,
				},
				[303160] = {
					["source"] = "Занш'ир - чешуйчатый страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152881,
				},
				[46195] = {
					["encounterID"] = 1895,
					["source"] = "Яззай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24561,
				},
				[30451] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44276] = {
					["encounterID"] = 1895,
					["source"] = "Зелфан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24556,
				},
				[6572] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61671] = {
					["source"] = "Лироойдженки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127797] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гремимунд",
					["npcID"] = 0,
				},
				[194632] = {
					["type"] = "BUFF",
					["source"] = "Шерайа-Гордунни",
					["encounterID"] = 1936,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255035] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[273481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бруталкопыто-Дракономор",
					["npcID"] = 0,
				},
				[302651] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жрецыыще",
					["npcID"] = 0,
				},
				[36634] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32612] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфинка-Дракономор",
					["npcID"] = 0,
				},
				[38903] = {
					["source"] = "Чудовищный магматический инфернал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20898,
				},
				[15667] = {
					["source"] = "Убийца из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21137,
				},
				[268877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[30496] = {
					["encounterID"] = 1936,
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[79849] = {
					["source"] = "Алин Блэк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61834,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулбой",
					["npcID"] = 0,
				},
				[268878] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бронтир-Азурегос",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Войк-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39415] = {
					["encounterID"] = 1914,
					["source"] = "Предвестник Скайрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20912,
				},
				[303438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шайконг-Борейскаятундра",
					["npcID"] = 0,
				},
				[299896] = {
					["source"] = "Илаари-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62124] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кастерли-Азурегос",
					["npcID"] = 0,
				},
				[296971] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15587] = {
					["source"] = "Послушник из клана Призрачной Луны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16594,
				},
				[296003] = {
					["source"] = "Аггария",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тенеткач",
					["npcID"] = 0,
				},
				[11541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таллири",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31326] = {
					["source"] = "Убийца из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17835,
				},
				[1706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миссисли-Ревущийфьорд",
					["npcID"] = 0,
				},
				[86603] = {
					["source"] = "Гавин Малсбери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61838,
				},
				[31422] = {
					["encounterID"] = 1919,
					["source"] = "Эонус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17881,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гросколд",
					["npcID"] = 0,
				},
				[206662] = {
					["source"] = "Холимоули-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34366] = {
					["source"] = "Чернозубый тарантул",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18983,
				},
				[38520] = {
					["type"] = "DEBUFF",
					["source"] = "Убийца из рода Бесконечности",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17835,
				},
				[287809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 1920,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шиннфейн",
					["npcID"] = 0,
				},
				[49143] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194879] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262232] = {
					["source"] = "Лироойдженки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[280187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Файнестхорд",
					["npcID"] = 0,
				},
				[193358] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30986] = {
					["source"] = "Убийца из клана Изувеченной Длани",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17695,
				},
				[261769] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шильда-Галакронд",
					["npcID"] = 0,
				},
				[59545] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194638] = {
					["source"] = "Таллери-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Hitziblitzi-Blackmoore",
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
				[193359] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Лортарион",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэляфэр-Дракономор",
					["npcID"] = 0,
				},
				[295310] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайконг-Борейскаятундра",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Псина-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Каленлар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68054] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дживс",
					["npcID"] = 35642,
				},
				[40248] = {
					["source"] = "Псарь из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17670,
				},
				[44406] = {
					["source"] = "Яркочешуйчатый змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24761,
				},
				[287825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кударь-Голдринн",
					["npcID"] = 0,
				},
				[280149] = {
					["source"] = "Монолитовец-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275032] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рийск-Дракономор",
					["npcID"] = 0,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 66668,
				},
				[38811] = {
					["source"] = "Изначальный кошмар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20864,
				},
				[34933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маносос",
					["npcID"] = 19306,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ерсак-Голдринн",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2259,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зловещий охотник",
					["npcID"] = 98035,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291922] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[236298] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мяукала-Дракономор",
					["npcID"] = 0,
				},
				[271115] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[5143] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314689] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Синклит-Дракономор",
					["npcID"] = 0,
				},
				[53390] = {
					["source"] = "Книгатеней",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-жрец",
					["npcID"] = 18317,
				},
				[5221] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58160] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Энгорд-Азурегос",
					["npcID"] = 0,
				},
				[1822] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279302] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68992] = {
					["source"] = "Тагзар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35963] = {
					["source"] = "Тюремщик Аркатраца",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20859,
				},
				[30474] = {
					["encounterID"] = 1938,
					["source"] = "Страж-язычник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17621,
				},
				[38806] = {
					["source"] = "Защитник Аркатраца",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20857,
				},
				[39007] = {
					["source"] = "Провидец Гнева Соккорат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20886,
				},
				[268898] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[44535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кударь-Голдринн",
					["npcID"] = 0,
				},
				[8599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эфириал - осквернитель гробниц",
					["npcID"] = 18311,
				},
				[34428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[291928] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[1850] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25602] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маносос",
					["npcID"] = 19306,
				},
				[23881] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225606] = {
					["source"] = "Крошкабутуз-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296024] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[313424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Павиф-Галакронд",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Ельпал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38828] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20869,
				},
				[295029] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152067,
				},
				[299770] = {
					["source"] = "Кельпин-разведчица",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151300,
				},
				[3755] = {
					["source"] = "Леялери",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298343] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Мелодиум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арксан",
					["npcID"] = 0,
				},
				[118] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[95988] = {
					["source"] = "Майстар-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джесуслкии-Азурегос",
					["npcID"] = 0,
				},
				[314685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Синклит-Дракономор",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Клирикк-Галакронд",
					["npcID"] = 0,
				},
				[48103] = {
					["source"] = "Хентур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[48438] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Олдрев-Борейскаятундра",
					["npcID"] = 0,
				},
				[303852] = {
					["source"] = "Кик'сжул Голос Глубин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153312,
				},
				[280165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шейнафа",
					["npcID"] = 0,
				},
				[134847] = {
					["source"] = "\"Блескотрон-4000\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 43929,
				},
				[15284] = {
					["source"] = "Воитель резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17957,
				},
				[285472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диадора-Дракономор",
					["npcID"] = 0,
				},
				[120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Майтрэйн-Дракономор",
					["npcID"] = 0,
				},
				[36796] = {
					["source"] = "Амебовидное порождение",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21395,
				},
				[273349] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277250] = {
					["source"] = "Глер'тьогг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152968,
				},
				[34941] = {
					["source"] = "Заклинатель жизни из Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21702,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изерус-Голдринн",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Брэнмур-Дракономор",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293986] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[7457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Парохх",
					["npcID"] = 0,
				},
				[57755] = {
					["encounterID"] = 2257,
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32182] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312922] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217694] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Роммару-Дракономор",
					["npcID"] = 0,
				},
				[312411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[275054] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрунда-Азурегос",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Найтвингр-Азурегос",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лийан-Галакронд",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Лейасиль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[287338] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15087] = {
					["source"] = "Душегуб Эфириума",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20896,
				},
				[317020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рейнд-Азурегос",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Гамаюн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134522] = {
					["source"] = "Лайфли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38844] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20880,
				},
				[25603] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-колдун",
					["npcID"] = 18313,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тхааида",
					["npcID"] = 0,
				},
				[34942] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-черный маг",
					["npcID"] = 18331,
				},
				[291946] = {
					["type"] = "BUFF",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144246,
				},
				[299764] = {
					["source"] = "Шаман из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154304,
				},
				[255040] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[301299] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["encounterID"] = 2257,
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Ярлинг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Якраксэ",
					["npcID"] = 58960,
				},
				[31224] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298601] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Злюча-Галакронд",
					["npcID"] = 0,
				},
				[70243] = {
					["source"] = "Хедда-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэна",
					["npcID"] = 0,
				},
				[36175] = {
					["encounterID"] = 1913,
					["source"] = "Даллия Глашатай Судьбы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20885,
				},
				[16145] = {
					["source"] = "Повелитель временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21140,
				},
				[186257] = {
					["source"] = "Калация",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[197214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[298603] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Френззи",
					["npcID"] = 0,
				},
				[299762] = {
					["source"] = "Анкоа - мастер клинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[196770] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Звездулятор-Азурегос",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Дубохил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41635] = {
					["source"] = "Виндикто-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13341] = {
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[298605] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гросколд",
					["npcID"] = 0,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эфе-Голдринн",
					["npcID"] = 0,
				},
				[291878] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[247191] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берескан-Дракономор",
					["npcID"] = 0,
				},
				[298606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Железнобокий-Дракономор",
					["npcID"] = 0,
				},
				[299760] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[2060] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300142] = {
					["encounterID"] = 2257,
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kamaradeus-TwistingNether",
					["npcID"] = 0,
				},
				[316007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[33917] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105421] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[163505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[147833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[299759] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[298609] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Макгрим-Азурегос",
					["npcID"] = 0,
				},
				[264448] = {
					["encounterID"] = 1914,
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251463] = {
					["encounterID"] = 1914,
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Плюющаяся кобра",
					["npcID"] = 104493,
				},
				[2120] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Истериика-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Гамаюн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Тургас",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297077] = {
					["source"] = "Саландра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31553] = {
					["source"] = "Караульный из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16507,
				},
				[79865] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155761,
				},
				[286331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эсидрейн-Галакронд",
					["npcID"] = 0,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тхааида",
					["npcID"] = 0,
				},
				[136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шенрира-Дракономор",
					["npcID"] = 0,
				},
				[38846] = {
					["source"] = "Смертоносный эредар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20880,
				},
				[102352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рироина",
					["npcID"] = 0,
				},
				[277633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зебэст Вечноживущий",
					["npcID"] = 141905,
				},
				[211805] = {
					["source"] = "Аверсэн-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244813] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[299757] = {
					["source"] = "Кельпин-разведчица",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[299663] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23601] = {
					["source"] = "Саргеронский лучник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20901,
				},
				[139] = {
					["source"] = "Виндикто-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-6000\"",
					["npcID"] = 101527,
				},
				[278147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[118345] = {
					["source"] = "Изначальный элементаль земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61056,
				},
				[8936] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Локдорк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[30505] = {
					["encounterID"] = 1936,
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[287360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайфовая-Дракономор",
					["npcID"] = 0,
				},
				[267402] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1919,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Лекарстон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[9080] = {
					["source"] = "Повелитель временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17839,
				},
				[298620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хилинс-Голдринн",
					["npcID"] = 0,
				},
				[44604] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24685,
				},
				[34433] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294015] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[298621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ягунчик",
					["npcID"] = 0,
				},
				[55095] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kbrallan-Kazzak",
					["npcID"] = 0,
				},
				[131474] = {
					["source"] = "Рилченса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Вардило",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38911] = {
					["source"] = "Освобожденный Носитель Рока",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20900,
				},
				[268429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 113694,
				},
				[298111] = {
					["source"] = "Шар сокрушающего прилива",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153500,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Локе'нахак",
					["npcID"] = 32517,
				},
				[257099] = {
					["source"] = "Грумт-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38843] = {
					["source"] = "Эредарский пожиратель душ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20879,
				},
				[216425] = {
					["source"] = "Херкуль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286342] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[313571] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["source"] = "Бразери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Перерожденный сектант",
					["npcID"] = 130098,
				},
				[73313] = {
					["source"] = "Сосулько",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[220510] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неподвластна-СтражСмерти",
					["npcID"] = 0,
				},
				[291973] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thebash-DunModr",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Бобэс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[36033] = {
					["source"] = "Буян из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16593,
				},
				[280204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диадора-Дракономор",
					["npcID"] = 0,
				},
				[270481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Демонический тиран",
					["npcID"] = 135002,
				},
				[130] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31458] = {
					["type"] = "BUFF",
					["source"] = "Темпорус",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17880,
				},
				[280205] = {
					["source"] = "Мильпопс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34370] = {
					["source"] = "Темноводный кроколиск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17952,
				},
				[293511] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[318587] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[267924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Леусварский-Дракономор",
					["npcID"] = 0,
				},
				[199786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38848] = {
					["source"] = "Смертоносный эредар",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20880,
				},
				[190319] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["source"] = "Хируна-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[298286] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изгремнур-Азурегос",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Олдрев-Борейскаятундра",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Холелеле-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Амневсепо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198764] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чи-Цзи",
					["npcID"] = 100868,
				},
				[36886] = {
					["source"] = "Сердитая искусительница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20883,
				},
				[195182] = {
					["source"] = "Луриция-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38892] = {
					["source"] = "Сердитая искусительница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20883,
				},
				[114255] = {
					["type"] = "BUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["encounterID"] = 1920,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Йервальд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264440] = {
					["encounterID"] = 1914,
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жесткийалкаш-Гордунни",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37669] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-жрец",
					["npcID"] = 18317,
				},
				[207472] = {
					["source"] = "Аяса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чи-Цзи",
					["npcID"] = 100868,
				},
				[93402] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38593] = {
					["encounterID"] = 1921,
					["source"] = "Темпорус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17880,
				},
				[39332] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ловчий нексуса",
					["npcID"] = 18314,
				},
				[300761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38849] = {
					["source"] = "Освобожденный уничтожитель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20881,
				},
				[36866] = {
					["source"] = "Сердитая искусительница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20883,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Адскийгость-Голдринн",
					["npcID"] = 0,
				},
				[278767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алькамалька-Голдринн",
					["npcID"] = 0,
				},
				[43199] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Баблдрим-Азурегос",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Hitziblitzi-Blackmoore",
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
				[305804] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лиртейн",
					["npcID"] = 0,
				},
				[278124] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38818] = {
					["source"] = "Дозорный Смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20867,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[299664] = {
					["source"] = "Сино",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38540] = {
					["encounterID"] = 1920,
					["source"] = "Повелитель времени Дежа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17879,
				},
				[324889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арифуриет",
					["npcID"] = 0,
				},
				[38064] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-чудесник",
					["npcID"] = 18315,
				},
				[247129] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берескан-Дракономор",
					["npcID"] = 0,
				},
				[31464] = {
					["encounterID"] = 1921,
					["source"] = "Темпорус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17880,
				},
				[317065] = {
					["source"] = "Дэтрия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282943] = {
					["type"] = "DEBUFF",
					["source"] = "Таранный поршень",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153202,
				},
				[201072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борецсвета",
					["npcID"] = 0,
				},
				[318187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[80610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Начальник лагеря Брэк",
					["npcID"] = 48255,
				},
				[224869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дангалар",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эмпетусс",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nekaps-Stormscale",
					["npcID"] = 0,
				},
				[209261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тигруан",
					["npcID"] = 0,
				},
				[318227] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38810] = {
					["source"] = "Изначальный кошмар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20864,
				},
				[318378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вайтор",
					["npcID"] = 0,
				},
				[296059] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[7421] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[300693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[102560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слвф",
					["npcID"] = 0,
				},
				[131476] = {
					["source"] = "Рилченса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Халозил",
					["npcID"] = 0,
				},
				[35076] = {
					["type"] = "BUFF",
					["source"] = "А'дал",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18481,
				},
				[53563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Каленлар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Минстрав-Дракономор",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[15615] = {
					["source"] = "Легионер клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16700,
				},
				[238177] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Светнарь-Гром",
					["npcID"] = 0,
				},
				[274085] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ярость бури",
					["npcID"] = 148761,
				},
				[255065] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285344] = {
					["encounterID"] = 2257,
					["source"] = "\"Платиновый лупцеватор\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144244,
				},
				[279715] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[17962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thebash-DunModr",
					["npcID"] = 0,
				},
				[106839] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274087] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ярость бури",
					["npcID"] = 148761,
				},
				[297126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаршмакх-Дракономор",
					["npcID"] = 0,
				},
				[295137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[305252] = {
					["encounterID"] = 1935,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диджитал-Дракономор",
					["npcID"] = 0,
				},
				[15254] = {
					["npcID"] = 18431,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириальный маяк",
					["encounterID"] = 1899,
				},
				[105688] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263854] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кадавр",
					["npcID"] = 130727,
				},
				[291972] = {
					["type"] = "DEBUFF",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144246,
				},
				[207203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пакмэн-Галакронд",
					["npcID"] = 0,
				},
				[16856] = {
					["source"] = "Гладиатор из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17464,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59052] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201334] = {
					["type"] = "BUFF",
					["source"] = "Демонджс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Иомочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30980] = {
					["source"] = "Убийца из клана Изувеченной Длани",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17695,
				},
				[11416] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гноманя-Дракономор",
					["npcID"] = 0,
				},
				[276111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Радорм",
					["npcID"] = 0,
				},
				[263346] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сейлуаль-Азурегос",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Адскийгость-Голдринн",
					["npcID"] = 0,
				},
				[49376] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294052] = {
					["source"] = "Илаари-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30472] = {
					["source"] = "Легионер клана Изувеченной Длани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 16700,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Авикейчик-Дракономор",
					["npcID"] = 0,
				},
				[250208] = {
					["source"] = "Солекаменная черепаха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130160,
				},
				[285362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вульфкнайт-Дракономор",
					["npcID"] = 0,
				},
				[298659] = {
					["source"] = "Гамаюн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44353] = {
					["type"] = "DEBUFF",
					["source"] = "Вексалиус",
					["encounterID"] = 1898,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24744,
				},
				[2908] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188031] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лэкси-Галакронд",
					["npcID"] = 0,
				},
				[272723] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Борджик-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32370] = {
					["npcID"] = 18430,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-ученик",
					["encounterID"] = 1899,
				},
				[33958] = {
					["source"] = "Пожиратель душ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20866,
				},
				[298661] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36677] = {
					["source"] = "Энтропический глаз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20868,
				},
				[279194] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38852] = {
					["source"] = "Таящаяся ведьма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20882,
				},
				[2948] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[88163] = {
					["source"] = "Борджик-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[180612] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288074] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранеса-Дракономор",
					["npcID"] = 0,
				},
				[284275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алистрен-Дракономор",
					["npcID"] = 0,
				},
				[297128] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[57723] = {
					["source"] = "Alzhyr-DunModr",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гремимунд",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[238189] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеймстикир-Дракономор",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[1066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282801] = {
					["source"] = "\"Платиновый лупцеватор\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144244,
				},
				[198013] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60299] = {
					["type"] = "BUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1900,
				},
				[30213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[79976] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50023,
				},
				[58867] = {
					["npcID"] = 100820,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дух волка",
					["encounterID"] = 1899,
				},
				[294061] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[131490] = {
					["source"] = "Херкуль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Файнестхорд",
					["npcID"] = 0,
				},
				[200061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Моровка-Азурегос",
					["npcID"] = 0,
				},
				[34922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасень Нексуса",
					["npcID"] = 19307,
				},
				[58875] = {
					["source"] = "Даза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297133] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[81256] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[256735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рийск-Дракономор",
					["npcID"] = 0,
				},
				[216441] = {
					["source"] = "Херкуль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294064] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[38917] = {
					["source"] = "Саргеронский призыватель огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20902,
				},
				[38065] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасень Нексуса",
					["npcID"] = 19307,
				},
				[299514] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Девочкамоя-Галакронд",
					["npcID"] = 0,
				},
				[238188] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеймстикир-Дракономор",
					["npcID"] = 0,
				},
				[276154] = {
					["source"] = "Кусьна",
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
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Айварка-Борейскаятундра",
					["npcID"] = 0,
				},
				[61882] = {
					["source"] = "Владкон-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Люсиль",
					["npcID"] = 134296,
				},
				[53822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нидол-Борейскаятундра",
					["npcID"] = 0,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ринтуцуки",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38592] = {
					["type"] = "BUFF",
					["source"] = "Темпорус",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17880,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[36778] = {
					["source"] = "Эредарский пожиратель душ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20879,
				},
				[165777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Гелиосир-Гордунни",
					["npcID"] = 0,
				},
				[294103] = {
					["source"] = "Ракетный танк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151659,
				},
				[277181] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44227] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1894,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буревестница Морка",
					["npcID"] = 148759,
				},
				[291918] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[3164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хрюл-Азурегос",
					["npcID"] = 0,
				},
				[265412] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мерзопакость-Дракономор",
					["npcID"] = 0,
				},
				[44547] = {
					["source"] = "Сестра Мучений",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24697,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тенеткач",
					["npcID"] = 0,
				},
				[38534] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21148,
				},
				[31589] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267972] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Демонический тиран",
					["npcID"] = 135002,
				},
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[186258] = {
					["source"] = "Калация",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51886] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["encounterID"] = 1900,
				},
				[38918] = {
					["source"] = "Саргеронский призыватель огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20902,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вередиэль",
					["npcID"] = 0,
				},
				[30502] = {
					["type"] = "BUFF",
					["source"] = "Главный чернокнижник Пустоклят",
					["encounterID"] = 1936,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 16807,
				},
				[259430] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нучтонеждали",
					["npcID"] = 0,
				},
				[281178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тхааида",
					["npcID"] = 0,
				},
				[265954] = {
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Квадракуб-Борейскаятундра",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Среброкрылая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298927] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эверлайнс",
					["npcID"] = 0,
				},
				[271071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122583] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сидорова",
					["npcID"] = 0,
				},
				[255593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бухтовый крепкозуб",
					["npcID"] = 123226,
				},
				[124121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Готка-Борейскаятундра",
					["npcID"] = 0,
				},
				[33865] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-падальщик",
					["npcID"] = 18309,
				},
				[67826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Павиф-Галакронд",
					["npcID"] = 0,
				},
				[281795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сфинта",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Virass-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стекломакс-Азурегос",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Методд-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Белокрылый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30470] = {
					["source"] = "Дикарь из клана Изувеченной Длани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 16523,
				},
				[280773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Стекломакс-Азурегос",
					["npcID"] = 0,
				},
				[38535] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21148,
				},
				[36910] = {
					["source"] = "Фазовая прыгуана",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20906,
				},
				[39367] = {
					["encounterID"] = 1916,
					["source"] = "Зерекет Бездонный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20870,
				},
				[257130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэлдорн-Дракономор",
					["npcID"] = 0,
				},
				[33076] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Верховный маг Накада",
					["npcID"] = 82564,
				},
				[36872] = {
					["source"] = "Шквальник резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21127,
				},
				[22570] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285381] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257408] = {
					["source"] = "Харучка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39049] = {
					["encounterID"] = 1919,
					["source"] = "Эонус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17881,
				},
				[280776] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45444] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[277706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Минстрав-Дракономор",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шутоку",
					["npcID"] = 0,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дух огня",
					["npcID"] = 69791,
				},
				[258883] = {
					["source"] = "Virass-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Истериика-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297993] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Николясмус",
					["npcID"] = 0,
				},
				[85739] = {
					["source"] = "Лироойдженки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулим-Дракономор",
					["npcID"] = 0,
				},
				[126935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[270544] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пронзатель из племени Черного Копья",
					["npcID"] = 149007,
				},
				[15655] = {
					["source"] = "Защитник резервуара Кривого Клыка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17958,
				},
				[3408] = {
					["source"] = "Риат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224125] = {
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1899,
				},
				[205191] = {
					["source"] = "Ветара-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Лироойдженки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[30471] = {
					["source"] = "Разоритель из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16699,
				},
				[48707] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38536] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21148,
				},
				[81262] = {
					["source"] = "Период цветения",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[281413] = {
					["source"] = "Йолька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303299] = {
					["source"] = "Азш'ари-заклинательница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145326,
				},
				[285388] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[293827] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Этьенн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224127] = {
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1899,
				},
				[303604] = {
					["source"] = "Ширакесс-поработитель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152724,
				},
				[183752] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[51714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kbrallan-Kazzak",
					["npcID"] = 0,
				},
				[264667] = {
					["source"] = "Волк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 91250,
				},
				[291532] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волнолом Сян",
					["npcID"] = 147250,
				},
				[296138] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Ёлк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297162] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[291930] = {
					["encounterID"] = 2258,
					["source"] = "Куб металлолома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150520,
				},
				[226943] = {
					["source"] = "Тьмавсарае",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Карательный-Борейскаятундра",
					["npcID"] = 0,
				},
				[15230] = {
					["encounterID"] = 1920,
					["source"] = "Хрономант из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17892,
				},
				[263897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зубастый бобр",
					["npcID"] = 134359,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38153] = {
					["type"] = "BUFF",
					["source"] = "Зыбун",
					["encounterID"] = 1940,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17942,
				},
				[275909] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["source"] = "Солфшп-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298700] = {
					["source"] = "Аласдейр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[38537] = {
					["source"] = "Повелитель временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21140,
				},
				[275672] = {
					["source"] = "Макстмс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[35054] = {
					["source"] = "Повелитель временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17839,
				},
				[289524] = {
					["source"] = "Солфшп-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Колдран",
					["npcID"] = 0,
				},
				[290819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шенрира-Дракономор",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лонариэль-Голдринн",
					["npcID"] = 0,
				},
				[281303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[301088] = {
					["source"] = "Бомботанк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151657,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[297168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[2061] = {
					["source"] = "Виндикто-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271581] = {
					["source"] = "Ветара-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300751] = {
					["source"] = "Тибблдорф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303310] = {
					["source"] = "Азш'ари-призывательница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145327,
				},
				[238265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джеймстикир-Дракономор",
					["npcID"] = 0,
				},
				[5215] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298705] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Перчила-Голдринн",
					["npcID"] = 0,
				},
				[122589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сидорова",
					["npcID"] = 0,
				},
				[277724] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Никотрабл-Азурегос",
					["npcID"] = 0,
				},
				[295124] = {
					["source"] = "Йервальд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156070] = {
					["source"] = "Жрючка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krimpa-C'Thun",
					["npcID"] = 0,
				},
				[38533] = {
					["source"] = "Хранительница временного разлома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21104,
				},
				[196742] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Денжаминус-Галакронд",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[87023] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торар-Дракономор",
					["npcID"] = 0,
				},
				[256374] = {
					["source"] = "Виндикто-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298197] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294073] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[31687] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нюраха-Голдринн",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Йолька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Якраксэ",
					["npcID"] = 58960,
				},
				[270564] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тельморан-Азурегос",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Фюрериска",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["encounterID"] = 1895,
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фархеим-Галакронд",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Фарет",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изерус-Голдринн",
					["npcID"] = 0,
				},
				[8680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thebash-DunModr",
					["npcID"] = 0,
				},
				[87024] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295130] = {
					["source"] = "Детектобот",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151812,
				},
				[156073] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сивыймерен",
					["npcID"] = 0,
				},
				[294107] = {
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151773,
				},
				[190456] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йотхе",
					["npcID"] = 0,
				},
				[69369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[30981] = {
					["source"] = "Убийца из рода Бесконечности",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 21137,
				},
				[278244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хлоя-Азурегос",
					["npcID"] = 0,
				},
				[46151] = {
					["type"] = "BUFF",
					["source"] = "Ведьма из клана Змеиных Колец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24696,
				},
				[298068] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Павиф-Галакронд",
					["npcID"] = 0,
				},
				[46968] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[285443] = {
					["encounterID"] = 2259,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Drakier-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мендаан-Азурегос",
					["npcID"] = 0,
				},
				[38539] = {
					["encounterID"] = 1920,
					["source"] = "Повелитель времени Дежа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17879,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сонаку",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Даркнекогами",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271083] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лоялист дома Штормсонгов",
					["npcID"] = 130006,
				},
				[275689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стекломакс-Азурегос",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диадора-Дракономор",
					["npcID"] = 0,
				},
				[298152] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299742] = {
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154297,
				},
				[38897] = {
					["source"] = "Заклинатель волн Эфириума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20897,
				},
				[39033] = {
					["source"] = "Сумеречный драконаар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20910,
				},
				[154797] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16591] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Демонвоплоти-Дракономор",
					["npcID"] = 0,
				},
				[288091] = {
					["source"] = "Байгрей",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15496] = {
					["source"] = "Палач из рода Бесконечности",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21138,
				},
				[286031] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ласскаа-Борейскаятундра",
					["npcID"] = 0,
				},
				[156077] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нучтонеждали",
					["npcID"] = 0,
				},
				[36593] = {
					["source"] = "Труп тюремщика",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21304,
				},
				[302932] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nekaps-Stormscale",
					["npcID"] = 0,
				},
				[255141] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Къаара",
					["npcID"] = 0,
				},
				[264353] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291856] = {
					["encounterID"] = 2260,
					["source"] = "Плазменная сфера",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150485,
				},
				[270576] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294117] = {
					["source"] = "Илаари-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302372] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёмкин-Борейскаятундра",
					["npcID"] = 0,
				},
				[3928] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Волхова",
					["npcID"] = 0,
				},
				[44425] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Линни",
					["npcID"] = 1863,
				},
				[36612] = {
					["source"] = "Амебовидный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20865,
				},
				[30500] = {
					["encounterID"] = 1936,
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[156079] = {
					["source"] = "Гринхилл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302307] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2257,
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299237] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бромдяга-Дракономор",
					["npcID"] = 0,
				},
				[279204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изерус-Голдринн",
					["npcID"] = 0,
				},
				[274598] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[36941] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Иловай-Азурегос",
					["npcID"] = 0,
				},
				[156080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Конь-Азурегос",
					["npcID"] = 0,
				},
				[213652] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268534] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[299751] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[279793] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Миммишка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jjivotnoto-Draenor",
					["npcID"] = 0,
				},
				[38850] = {
					["source"] = "Освобожденный уничтожитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20881,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[38760] = {
					["npcID"] = 18341,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пандемоний",
					["encounterID"] = 1900,
				},
				[267799] = {
					["type"] = "DEBUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1900,
				},
				[285424] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пошлюка",
					["npcID"] = 0,
				},
				[34920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-падальщик",
					["npcID"] = 18309,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дангалар",
					["npcID"] = 0,
				},
				[33871] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эфириал-падальщик",
					["npcID"] = 18309,
				},
				[299754] = {
					["source"] = "Охотник из клана Клинков Волн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150202,
				},
				[281843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элантугор-Дракономор",
					["npcID"] = 0,
				},
				[313060] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роннда-Дракономор",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyrenas-Outland",
					["npcID"] = 0,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рязакка",
					["npcID"] = 0,
				},
				[262398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роммару-Дракономор",
					["npcID"] = 0,
				},
				[38912] = {
					["source"] = "Саргеронский лучник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20901,
				},
				[6673] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36622] = {
					["source"] = "Изначальный кошмар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20864,
				},
				[30633] = {
					["encounterID"] = 1937,
					["source"] = "О'мрогг Завоеватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16809,
				},
				[257410] = {
					["source"] = "Белокрылый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300174] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 133980,
				},
				[51271] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Энгорд-Азурегос",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287379] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262401] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роммару-Дракономор",
					["npcID"] = 0,
				},
				[16592] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 18331,
				},
				[198304] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40504] = {
					["encounterID"] = 1919,
					["source"] = "Эонус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17881,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Даркбёрд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гремимунд",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Вэлвир",
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
				[100784] = {
					["source"] = "Лейасиль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297840] = {
					["source"] = "Бобэс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1543] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лисицанова",
					["npcID"] = 0,
				},
				[303344] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ансаро-Галакронд",
					["npcID"] = 0,
				},
				[39019] = {
					["encounterID"] = 1914,
					["source"] = "Предвестник Скайрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20912,
				},
				[195692] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Елена-Дракономор",
					["npcID"] = 0,
				},
				[303345] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каракача-Дракономор",
					["npcID"] = 0,
				},
				[12051] = {
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["encounterID"] = 1914,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[1079] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275712] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Люсиль",
					["npcID"] = 134296,
				},
				[215572] = {
					["source"] = "Байгрей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тенеткач",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298623] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Палайф-Голдринн",
					["npcID"] = 0,
				},
				[36879] = {
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[116841] = {
					["source"] = "Мэлдо-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299766] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151300,
				},
				[303563] = {
					["source"] = "Зоатроид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152812,
				},
				[248473] = {
					["source"] = "Суок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268550] = {
					["source"] = "Тьмавсарае",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Яэтоджанк-Дракономор",
					["npcID"] = 0,
				},
				[31403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эфириал - осквернитель гробниц",
					["npcID"] = 18311,
				},
				[288509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нефритити",
					["npcID"] = 0,
				},
				[89798] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Лорд Виктор Нефарий",
					["npcID"] = 49799,
				},
				[298848] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таликса",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Витдол-Борейскаятундра",
					["npcID"] = 0,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зиновочка-Дракономор",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Укупкинский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285440] = {
					["encounterID"] = 2259,
					["source"] = "Главный машинист Искроточец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144248,
				},
				[299661] = {
					["source"] = "Тибблдорф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297969] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саворлина-Борейскаятундра",
					["npcID"] = 0,
				},
				[46155] = {
					["encounterID"] = 1897,
					["source"] = "Селин Огненное Сердце",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24723,
				},
				[114923] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[194812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слайтеракс-Галакронд",
					["npcID"] = 0,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дикий бес",
					["npcID"] = 55659,
				},
				[132621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Слайтеракс-Галакронд",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Умризараза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шэлти-Азурегос",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Астрианна-Дракономор",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "DEBUFF",
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
				[288803] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279303] = {
					["source"] = "Нецер-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[36880] = {
					["source"] = "Миллхаус Манашторм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20977,
				},
				[298604] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Танюшко-Азурегос",
					["npcID"] = 0,
				},
				[63619] = {
					["source"] = "Исчадие Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[292362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рейнари-Азурегос",
					["npcID"] = 0,
				},
				[33919] = {
					["npcID"] = 18343,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таварок",
					["encounterID"] = 1901,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Квадракуб-Борейскаятундра",
					["npcID"] = 0,
				},
				[15633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Волхова",
					["npcID"] = 0,
				},
				[324851] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулджазим-Галакронд",
					["npcID"] = 0,
				},
				[15497] = {
					["source"] = "Миллхаус Манашторм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20977,
				},
				[295170] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[195901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ариданна-Дракономор",
					["npcID"] = 0,
				},
				[116014] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300800] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роммару-Дракономор",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тенеткач",
					["npcID"] = 0,
				},
				[267537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайфовая-Дракономор",
					["npcID"] = 0,
				},
				[300801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[122] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6807] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35942] = {
					["source"] = "Бешеный бойцовый пес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17669,
				},
				[273836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мактурион-Гордунни",
					["npcID"] = 0,
				},
				[23214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Парохх",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Ельпал-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88084] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дяня",
					["npcID"] = 47243,
				},
				[210824] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дяня",
					["npcID"] = 0,
				},
				[291937] = {
					["encounterID"] = 2258,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15785] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маносос",
					["npcID"] = 19306,
				},
				[68996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Найтвингр-Азурегос",
					["npcID"] = 0,
				},
				[183218] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["encounterID"] = 1900,
				},
				[206930] = {
					["source"] = "Луриция-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Гэймовер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каэрвиль-Азурегос",
					["npcID"] = 0,
				},
				[199753] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187650] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Карикун-Азурегос",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Камицу-Ясеневыйлес",
					["npcID"] = 0,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1940,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Халозил",
					["npcID"] = 0,
				},
				[297965] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вервуля-Азурегос",
					["npcID"] = 0,
				},
				[285454] = {
					["encounterID"] = 2259,
					["source"] = "Главный машинист Искроточец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144248,
				},
				[310530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[298760] = {
					["source"] = "Ширакесс - исказительница Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153843,
				},
				[61295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Окттавия-ЧерныйШрам",
					["npcID"] = 0,
				},
				[307281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккнология-Дракономор",
					["npcID"] = 0,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Авикейчик-Дракономор",
					["npcID"] = 0,
				},
				[58984] = {
					["source"] = "Hitziblitzi-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулим-Дракономор",
					["npcID"] = 0,
				},
				[324861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Павиф-Галакронд",
					["npcID"] = 0,
				},
				[91800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Корнеголов",
					["npcID"] = 26125,
				},
				[196782] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[63560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бархан-Борейскаятундра",
					["npcID"] = 0,
				},
				[324862] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Икугу-Галакронд",
					["npcID"] = 0,
				},
				[193456] = {
					["source"] = "Хьельсунн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайфовая-Дракономор",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Риат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30475] = {
					["type"] = "BUFF",
					["source"] = "Страж-язычник",
					["encounterID"] = 1938,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17621,
				},
				[3567] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрната-Азурегос",
					["npcID"] = 0,
				},
				[299788] = {
					["source"] = "Гунгнар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулбой",
					["npcID"] = 0,
				},
				[274426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295183] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[285460] = {
					["type"] = "DEBUFF",
					["source"] = "Главный машинист Искроточец",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144248,
				},
				[57288] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гремимунд",
					["npcID"] = 0,
				},
				[278296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лукрец",
					["npcID"] = 0,
				},
				[303409] = {
					["source"] = "Ундана Ледяной Шип",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153304,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дебальтон-Галакронд",
					["npcID"] = 0,
				},
				[314631] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Паленкова-Дракономор",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рироина",
					["npcID"] = 0,
				},
				[5176] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 1921,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302908] = {
					["source"] = "Шейдапори-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295186] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[324868] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тильриу-Азурегос",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[28509] = {
					["source"] = "Ронгарек-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Браим-Дракономор",
					["npcID"] = 0,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[266018] = {
					["source"] = "Бразери",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300971] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Палокраш-Галакронд",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зулджазим-Галакронд",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Мильпопс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 32517,
				},
				[114108] = {
					["source"] = "Йотхе",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31467] = {
					["encounterID"] = 1920,
					["source"] = "Повелитель времени Дежа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17879,
				},
				[212799] = {
					["source"] = "Пчпэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайфовая-Дракономор",
					["npcID"] = 0,
				},
				[318219] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Федир",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Тьмавсарае",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чут Шри Ну",
					["npcID"] = 65927,
				},
				[283421] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[29335] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дерикус-Дракономор",
					["npcID"] = 0,
				},
				[58448] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Букшелф-Голдринн",
					["npcID"] = 0,
				},
				[116849] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миликсианг",
					["npcID"] = 0,
				},
				[283422] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мерзопакость-Дракономор",
					["npcID"] = 0,
				},
				[339] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Эфириал-падальщик",
					["npcID"] = 18309,
				},
				[160331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лиллоу-Азурегос",
					["npcID"] = 0,
				},
				[188089] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[306600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Техностраза-ЧерныйШрам",
					["npcID"] = 0,
				},
				[132169] = {
					["source"] = "Байгрей",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286171] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лорилер",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Алэз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160978] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нучтонеждали",
					["npcID"] = 0,
				},
				[253183] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Морот",
					["npcID"] = 0,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайфовая-Дракономор",
					["npcID"] = 0,
				},
				[160979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нучтонеждали",
					["npcID"] = 0,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рироина",
					["npcID"] = 0,
				},
				[256153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эсидрейн-Галакронд",
					["npcID"] = 0,
				},
				[294324] = {
					["source"] = "Переработчик отходов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144293,
				},
				[32363] = {
					["npcID"] = 18344,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Принц Шаффар",
					["encounterID"] = 1899,
				},
				[162759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хмелевар Линь",
					["npcID"] = 148744,
				},
				[317861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Донэскобар",
					["npcID"] = 0,
				},
				[348] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Сэмдин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15628] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Волхова",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Энташелар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240034] = {
					["source"] = "Митсури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Местия",
					["npcID"] = 0,
				},
				[292267] = {
					["type"] = "DEBUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[11540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таллири",
					["npcID"] = 0,
				},
				[293664] = {
					["source"] = "Этерей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Альбедис-Голдринн",
					["npcID"] = 0,
				},
				[266030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Страд-Дракономор",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[264057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оксурирьё",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Луару",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[355] = {
					["encounterID"] = 2257,
					["source"] = "Daïsu-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51533] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["encounterID"] = 1899,
				},
				[2823] = {
					["source"] = "Рыжжулька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298272] = {
					["source"] = "Крорг",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153662,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299296] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Халозил",
					["npcID"] = 0,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["npcID"] = 0,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Пенабуки-Азурегос",
					["npcID"] = 0,
				},
				[315161] = {
					["source"] = "Liselotté-Arthas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Нецер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[294180] = {
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151773,
				},
				[273844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буревестница Морка",
					["npcID"] = 148759,
				},
				[299298] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Набрал-Галакронд",
					["npcID"] = 0,
				},
				[16979] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1449] = {
					["source"] = "Элиэн-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даранти-Дракономор",
					["npcID"] = 0,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вещииолег-Азурегос",
					["npcID"] = 0,
				},
				[293670] = {
					["source"] = "Защитник мастерской",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144299,
				},
				[308742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вэйдун-Азурегос",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Liselotté-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299300] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лертана-Галакронд",
					["npcID"] = 0,
				},
				[197051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Supahotfia-TwistingNether",
					["npcID"] = 0,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сантамуертэ-Борейскаятундра",
					["npcID"] = 0,
				},
				[278999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ринтуцуки",
					["npcID"] = 0,
				},
				[138768] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Блестящий дикорог",
					["npcID"] = 127824,
				},
				[35950] = {
					["source"] = "Псарь из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17670,
				},
				[273714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Балбесонька-ЧерныйШрам",
					["npcID"] = 0,
				},
				[81340] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бьёрнольф-Азурегос",
					["npcID"] = 0,
				},
				[190655] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[291626] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150396,
				},
				[277308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зебэст Вечноживущий",
					["npcID"] = 141905,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270330] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глыба азерита",
					["npcID"] = 141971,
				},
				[255392] = {
					["source"] = "Тсилина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316703] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Слезаогня-Дракономор",
					["npcID"] = 0,
				},
				[299304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ужасмэн",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Лироойдженки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["source"] = "Daïsu-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242599] = {
					["source"] = "Эрче-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Калинтай",
					["npcID"] = 0,
				},
				[223731] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зеленый защитник",
					["npcID"] = 148491,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Virass-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Траиси",
					["npcID"] = 0,
				},
				[32364] = {
					["npcID"] = 18344,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Принц Шаффар",
					["encounterID"] = 1899,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаршмакх-Дракономор",
					["npcID"] = 0,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кицун-Дракономор",
					["npcID"] = 0,
				},
				[293729] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[256739] = {
					["source"] = "Йолька",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Лейасиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ярлинг",
					["npcID"] = 0,
				},
				[32588] = {
					["source"] = "Воитель клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17671,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Алькамалька-Голдринн",
					["npcID"] = 0,
				},
				[122633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сидорова",
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
			["login_counter"] = 761,
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
