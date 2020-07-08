
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
		["Шанами - Вечная Песня"] = "Default",
		["Thalassa - Lightning's Blade"] = "Default",
		["Ньярли - Вечная Песня"] = "Default",
		["Ingward - Lightning's Blade"] = "Default",
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
				[40600] = {
					"Безликий осквернитель", -- [1]
					"Грим Батол", -- [2]
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
				[119052] = {
					"Боевое знамя", -- [1]
					"Храм Котмогу", -- [2]
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
				[154347] = {
					"Искаженный Бездной осквернитель", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
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
				[30419] = {
					"Укрощенный элементаль воды", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
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
				[40634] = {
					"Ведьма бурь Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[53006] = {
					"Тотем духовной связи", -- [1]
					"Око Бури", -- [2]
				},
				[28581] = {
					"Тактик клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
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
				[28965] = {
					"Титановый грозоносец", -- [1]
					"Чертоги Молний", -- [2]
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
				[40923] = {
					"Нестабильная порча", -- [1]
					"Трон Приливов", -- [2]
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
				[48756] = {
					"Сеть с крючьями", -- [1]
					"Грим Батол", -- [2]
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
				[28582] = {
					"Лекарь клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
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
				[26696] = {
					"Имирьярский берсерк", -- [1]
					"Вершина Утгард", -- [2]
				},
				[150142] = {
					"Хламометатель из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[29829] = {
					"Землетряс Драккари", -- [1]
					"Гундрак", -- [2]
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
				[40484] = {
					"Эрудакс", -- [1]
					"Грим Батол", -- [2]
				},
				[131858] = {
					"Шипастый страж", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
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
				[40290] = {
					"Багровый провидец", -- [1]
					"Грим Батол", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[102246] = {
					"Ануб'ессет", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[40357] = {
					"Пробужденный пламенный дух", -- [1]
					"Грим Батол", -- [2]
				},
				[39962] = {
					"Сумеречный рассекатель туч", -- [1]
					"Грим Батол", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[156795] = {
					"Осведомитель ШРУ", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[40177] = {
					"Начальник кузни Тронг", -- [1]
					"Грим Батол", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150146] = {
					"Шаман из племени Хламоедов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[40166] = {
					"Порабощенный гронн", -- [1]
					"Грим Батол", -- [2]
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
				[24815] = {
					"Бес Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[45467] = {
					"Пещерный трогг", -- [1]
					"Грим Батол", -- [2]
				},
				[18177] = {
					"Нечистый тотем каменной кожи", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[136976] = {
					"Т'зала", -- [1]
					"Гробница королей", -- [2]
				},
				[39984] = {
					"Зловредный трогг", -- [1]
					"Грим Батол", -- [2]
				},
				[39390] = {
					"Сумеречный дракон", -- [1]
					"Грим Батол", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[39625] = {
					"Генерал Умбрисс", -- [1]
					"Грим Батол", -- [2]
				},
				[161273] = {
					"Abyssal Spawn", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[40319] = {
					"Драгх Горячий Мрак", -- [1]
					"Грим Батол", -- [2]
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
				[26553] = {
					"Фанатик из клана Укротителей драконов", -- [1]
					"Вершина Утгард", -- [2]
				},
				[152834] = {
					"Азеритовый ползун", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
				},
				[39873] = {
					"Сумеречный призыватель драконов", -- [1]
					"Грим Батол", -- [2]
				},
				[131607] = {
					"Соусье Самуэль", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[40272] = {
					"Перерожденный камнелом", -- [1]
					"Грим Батол", -- [2]
				},
				[131863] = {
					"Раал Прожорливый", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[17252] = {
					"HaaKrill", -- [1]
					"Гробница королей", -- [2]
				},
				[40269] = {
					"Порабощенный дух грома", -- [1]
					"Грим Батол", -- [2]
				},
				[151812] = {
					"Детектобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[102431] = {
					"Кровавая принцесса Тал'ена", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[24683] = {
					"Маг-стражник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[17835] = {
					"Убийца из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[152324] = {
					"Aldwin Laughlin", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156089] = {
					"Акир - повелитель ядов", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[39909] = {
					"Рожденный в лазури полководец", -- [1]
					"Грим Батол", -- [2]
				},
				[152836] = {
					"Азеритовый бурильщик", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
				},
				[40291] = {
					"Рожденный в лазури провидец", -- [1]
					"Грим Батол", -- [2]
				},
				[156161] = {
					"Инквизитор Гншал", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[39392] = {
					"Безликий осквернитель", -- [1]
					"Грим Батол", -- [2]
				},
				[40448] = {
					"Сумеречный головорез", -- [1]
					"Грим Батол", -- [2]
				},
				[17879] = {
					"Повелитель времени Дежа", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[39414] = {
					"Перерожденный ветроступ", -- [1]
					"Грим Батол", -- [2]
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
				[39616] = {
					"Захватчик Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[39415] = {
					"Перерожденный поджигатель", -- [1]
					"Грим Батол", -- [2]
				},
				[157441] = {
					"Void Wraith", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[30287] = {
					"Бесчинствующий упырь", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
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
				[39870] = {
					"Сумеречный ловец огня", -- [1]
					"Грим Батол", -- [2]
				},
				[131611] = {
					"Ротиссье Ронда", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[151872] = {
					"Ужасное щупальце", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
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
				[40953] = {
					"Хаафом", -- [1]
					"Грим Батол", -- [2]
				},
				[30278] = {
					"Ан'кахарский метатель заклинаний", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[39954] = {
					"Сумеречный ткач тени", -- [1]
					"Грим Батол", -- [2]
				},
				[150154] = {
					"Завролиск-костеглод", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[39381] = {
					"Багровый страж", -- [1]
					"Грим Батол", -- [2]
				},
				[39961] = {
					"Порабощенный дух воды", -- [1]
					"Грим Батол", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154758] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[40320] = {
					"Валиона", -- [1]
					"Грим Батол", -- [2]
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
				[39854] = {
					"Рожденный в лазури страж", -- [1]
					"Грим Батол", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135322] = {
					"Золотой Змей", -- [1]
					"Гробница королей", -- [2]
				},
				[39405] = {
					"Багровый провидец", -- [1]
					"Грим Батол", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[39900] = {
					"Порабощенный элементаль камня", -- [1]
					"Грим Батол", -- [2]
				},
				[39450] = {
					"Пещерный трогг", -- [1]
					"Грим Батол", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[26554] = {
					"Ясновидица клана Укротителей драконов", -- [1]
					"Вершина Утгард", -- [2]
				},
				[44841] = {
					"Гнилевый монстр", -- [1]
					"Трон Приливов", -- [2]
				},
				[44566] = {
					"Озумат", -- [1]
					"Трон Приливов", -- [2]
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
				[102380] = {
					"Чернокнижник из Совета Теней", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[20880] = {
					"Смертоносный эредар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[25755] = {
					"Градина Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134174] = {
					"Тенеликий колдун", -- [1]
					"Гробница королей", -- [2]
				},
				[44658] = {
					"Глубинный мурлок - захватчик", -- [1]
					"Трон Приливов", -- [2]
				},
				[40925] = {
					"Опороченный часовой", -- [1]
					"Трон Приливов", -- [2]
				},
				[30385] = {
					"Сумеречный доброволец", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[150159] = {
					"Король Гоббамак", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[40765] = {
					"Командир Улток", -- [1]
					"Трон Приливов", -- [2]
				},
				[40633] = {
					"Отважный страж Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[44404] = {
					"Ведьма бурь Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[100527] = {
					"Бес ужасающего огня", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[40586] = {
					"Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[40579] = {
					"Глубинный мурлок - охотник", -- [1]
					"Трон Приливов", -- [2]
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
				[39960] = {
					"Глубинный мурлок - рабочий", -- [1]
					"Трон Приливов", -- [2]
				},
				[31260] = {
					"Имирьярский небоступ", -- [1]
					"Яма Сарона", -- [2]
				},
				[40584] = {
					"Захватчик Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[2630] = {
					"Тотем оков земли", -- [1]
					"Око Бури", -- [2]
				},
				[40577] = {
					"Часовой Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
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
				[30279] = {
					"Глубинный ползун", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[136735] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[29304] = {
					"Слад'ран", -- [1]
					"Гундрак", -- [2]
				},
				[21136] = {
					"Хрономант из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[102302] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[45620] = {
					"Солдат Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[135329] = {
					"Матрона Бриндл", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[98035] = {
					"Зловещий охотник", -- [1]
					"Гробница королей", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[28584] = {
					"Необузданный огненный шторм", -- [1]
					"Чертоги Молний", -- [2]
				},
				[32517] = {
					"Локе'нахак", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
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
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[157709] = {
					"Dreliana", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[24664] = {
					"Кель'тас Солнечный Скиталец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[24557] = {
					"Кагани Ночной Удар", -- [1]
					"Терраса Магистров", -- [2]
				},
				[150165] = {
					"Жижементаль", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135204] = {
					"Призрачный жрец-проклинатель", -- [1]
					"Гробница королей", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[29768] = {
					"Непреклонный душитель", -- [1]
					"Гундрак", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[24685] = {
					"Магистр Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[82308] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[29832] = {
					"Голем Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[136100] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[30338] = {
					"Ан'кахарский паук", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[26694] = {
					"Имирьярский шаман заката", -- [1]
					"Вершина Утгард", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[26683] = {
					"Бесноватый ворген", -- [1]
					"Вершина Утгард", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150295] = {
					"\"Танкоборец-1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[29830] = {
					"Живое колдунство", -- [1]
					"Гундрак", -- [2]
				},
				[26550] = {
					"Смертелюб из клана Укротителей драконов", -- [1]
					"Вершина Утгард", -- [2]
				},
				[163978] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[100531] = {
					"Оскверненная кровью ярость", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[152833] = {
					"Азеритовый гигант", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
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
				[161502] = {
					"Голодный пожиратель плоти", -- [1]
					"Вольная Гавань", -- [2]
				},
				[26555] = {
					"Увалень из Плети", -- [1]
					"Вершина Утгард", -- [2]
				},
				[17892] = {
					"Хрономант из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
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
				[30418] = {
					"Укрощенный элементаль воздуха", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[24553] = {
					"Апоко", -- [1]
					"Терраса Магистров", -- [2]
				},
				[20923] = {
					"Кровавый страж Порунг", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[30114] = {
					"Сумеречный посвященный", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[30276] = {
					"Ан'кахарский веретенщик", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[29305] = {
					"Мураби", -- [1]
					"Гундрак", -- [2]
				},
				[21137] = {
					"Убийца из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[159633] = {
					"Сектантка-палач", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[30277] = {
					"Ан'кахарский измельчитель", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[156820] = {
					"Дод", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[112738] = {
					"Послушник Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[28920] = {
					"Великан из клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[28583] = {
					"Волдырный парозлоб", -- [1]
					"Чертоги Молний", -- [2]
				},
				[102387] = {
					"Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[21818] = {
					"Дракончик из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[156949] = {
					"Мастер клинка Теренсон", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[28837] = {
					"Часовой клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
				},
				[28580] = {
					"Небоход из закаленной стали", -- [1]
					"Чертоги Молний", -- [2]
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
				[28838] = {
					"Титановый воин", -- [1]
					"Чертоги Молний", -- [2]
				},
				[153881] = {
					"Conversion Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[28825] = {
					"Смерч", -- [1]
					"Чертоги Молний", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[28826] = {
					"Загробник ярости бурь", -- [1]
					"Чертоги Молний", -- [2]
				},
				[29874] = {
					"Поджигатель Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[26668] = {
					"Свала Вечноскорбящая", -- [1]
					"Вершина Утгард", -- [2]
				},
				[26684] = {
					"Прожорливый фурболг", -- [1]
					"Вершина Утгард", -- [2]
				},
				[151836] = {
					"Ужас Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[24686] = {
					"Чернокнижник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
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
				[28835] = {
					"Создание клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
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
				[36893] = {
					"Имирьярский носитель пламени", -- [1]
					"Яма Сарона", -- [2]
				},
				[135470] = {
					"Ака'али Завоевательница", -- [1]
					"Гробница королей", -- [2]
				},
				[28695] = {
					"Оплавленный голем", -- [1]
					"Чертоги Молний", -- [2]
				},
				[24745] = {
					"Чистая энергия", -- [1]
					"Терраса Магистров", -- [2]
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
				[29637] = {
					"Коварный змей", -- [1]
					"Гундрак", -- [2]
				},
				[36892] = {
					"Имирьярский носитель смерти", -- [1]
					"Яма Сарона", -- [2]
				},
				[26693] = {
					"Скади Безжалостный", -- [1]
					"Вершина Утгард", -- [2]
				},
				[26125] = {
					"Крысобив", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[36841] = {
					"Павший воин", -- [1]
					"Яма Сарона", -- [2]
				},
				[17941] = {
					"Менну Предатель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[29306] = {
					"Гал'дара", -- [1]
					"Гундрак", -- [2]
				},
				[21138] = {
					"Палач из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[135472] = {
					"Заназал Мудрый", -- [1]
					"Гробница королей", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[30329] = {
					"Дикий пещерный зверь", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
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
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[24684] = {
					"Рыцарь крови Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[25756] = {
					"Холодная волна Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[24777] = {
					"Часовой Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[30625] = {
					"Маклиам", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
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
				[152866] = {
					"Затвердевший азерит", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
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
				[28587] = {
					"Волхан", -- [1]
					"Чертоги Молний", -- [2]
				},
				[28547] = {
					"Бушующий вихрь", -- [1]
					"Чертоги Молний", -- [2]
				},
				[135475] = {
					"Кула Живодерка", -- [1]
					"Гробница королей", -- [2]
				},
				[17462] = {
					"Ревнитель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[36842] = {
					"Грозный хладный дух", -- [1]
					"Яма Сарона", -- [2]
				},
				[36874] = {
					"Потревоженный ледниковый загробник", -- [1]
					"Яма Сарона", -- [2]
				},
				[144299] = {
					"Защитник мастерской", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[26669] = {
					"Имирьярский дикарь", -- [1]
					"Вершина Утгард", -- [2]
				},
				[26685] = {
					"Огромный йормунгар", -- [1]
					"Вершина Утгард", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[24744] = {
					"Вексалиус", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24687] = {
					"Врач Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[40167] = {
					"Сумеречный обманщик", -- [1]
					"Грим Батол", -- [2]
				},
				[29834] = {
					"Бешенка Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[144300] = {
					"Жительница Мехагона", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[28923] = {
					"Локен", -- [1]
					"Чертоги Молний", -- [2]
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
				[26861] = {
					"Король Имирон", -- [1]
					"Вершина Утгард", -- [2]
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
				[20208] = {
					"Исцеляющий идол Менну", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[36830] = {
					"Грозный работник", -- [1]
					"Яма Сарона", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[24559] = {
					"Полководец Саларис", -- [1]
					"Терраса Магистров", -- [2]
				},
				[22897] = {
					"Призванный Тотем неистовства ветра", -- [1]
					"Терраса Магистров", -- [2]
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
				[151147] = {
					"Nofear", -- [1]
					"Храм Котмогу", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[36907] = {
					"Грозный осадный кузнец", -- [1]
					"Яма Сарона", -- [2]
				},
				[40935] = {
					"Жаблин-охотник", -- [1]
					"Трон Приливов", -- [2]
				},
				[17942] = {
					"Зыбун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[144303] = {
					"СТРАЖ", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[17940] = {
					"Техник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[41095] = {
					"Сумеречный дракон", -- [1]
					"Грим Батол", -- [2]
				},
				[96512] = {
					"Верховный друид Глайдалис", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[29307] = {
					"Колосс Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[157603] = {
					"Капля Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[99358] = {
					"Гнилосердная дриада", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[130655] = {
					"Бобби Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[17958] = {
					"Защитник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[159266] = {
					"Повелитель порталов", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[158371] = {
					"Зардет Черный Коготь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
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
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[62131] = {
					"Cat", -- [1]
					"Око Бури", -- [2]
				},
				[157349] = {
					"Вепрь Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[152874] = {
					"Вез'окк Беспросветный", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[24560] = {
					"Жрица Делрисса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[158373] = {
					"Роберто Пуплливербос", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[20897] = {
					"Заклинатель волн Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[26670] = {
					"Имирьярский плотоед", -- [1]
					"Вершина Утгард", -- [2]
				},
				[26686] = {
					"Яростный люторог", -- [1]
					"Вершина Утгард", -- [2]
				},
				[41096] = {
					"Врачеватель душ Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[150190] = {
					"Воздушный подавитель ОУ-8", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[24688] = {
					"Тихий презренный", -- [1]
					"Терраса Магистров", -- [2]
				},
				[29819] = {
					"Пикейщик Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[95772] = {
					"Разъяренный коготь ночи", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[157607] = {
					"Безликий призыватель теней", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[103344] = {
					"Дубосерд", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[21346] = {
					"Незрячий глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17623] = {
					"Стражник-разоритель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[102269] = {
					"Ловец Скверны - разоритель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[29931] = {
					"Люторог Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[99200] = {
					"Дресарон", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[157608] = {
					"Безликий сокрушитель воли", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[102397] = {
					"Могучий повелитель гнева", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[18341] = {
					"Пандемоний", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[38487] = {
					"Павший воин", -- [1]
					"Яма Сарона", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[39626] = {
					"Багровый полководец", -- [1]
					"Грим Батол", -- [2]
				},
				[20868] = {
					"Энтропический глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[157609] = {
					"К'тир резчик разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[135231] = {
					"Призрачный громила", -- [1]
					"Гробница королей", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[20883] = {
					"Сердитая искусительница", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[102270] = {
					"Эредарская завоевательница", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[36877] = {
					"Грозный скелет", -- [1]
					"Яма Сарона", -- [2]
				},
				[157610] = {
					"К'тир-поработитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[20879] = {
					"Эредарский пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17991] = {
					"Рокмар Трескун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[30283] = {
					"Чумоброд", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[102392] = {
					"Тотем резонанса", -- [1]
					"Храм Котмогу", -- [2]
				},
				[21108] = {
					"Kernhund", -- [1]
					"Храм Котмогу", -- [2]
				},
				[29308] = {
					"Принц Талдарам", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[21140] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[95771] = {
					"Грозный разрушитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[149555] = {
					"Поганище", -- [1]
					"Храм Котмогу", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[17957] = {
					"Воитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[17959] = {
					"Укротитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[157356] = {
					"Extractor Thelsara", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[102335] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Око Бури", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[36494] = {
					"Начальник кузни Гархлад", -- [1]
					"Яма Сарона", -- [2]
				},
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[159275] = {
					"Хранительница портала", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[154161] = {
					"Nogg", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[18343] = {
					"Таварок", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[135235] = {
					"Призрачная повелительница животных", -- [1]
					"Гробница королей", -- [2]
				},
				[26687] = {
					"Горток Бледное Копыто", -- [1]
					"Вершина Утгард", -- [2]
				},
				[155951] = {
					"Раффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131527] = {
					"Лорд Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[24561] = {
					"Яззай", -- [1]
					"Терраса Магистров", -- [2]
				},
				[102272] = {
					"Страж Скверны - разрушитель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102336] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102400] = {
					"Эредарский сумеречный целитель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[29820] = {
					"Охотник бога Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[29836] = {
					"Боевой наездник Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[155656] = {
					"Миша", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[102273] = {
					"Страж ужаса - разведчик", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102337] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[17952] = {
					"Темноводный кроколиск", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17816] = {
					"Крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[20885] = {
					"Даллия Глашатай Судьбы", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[18983] = {
					"Чернозубый тарантул", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17960] = {
					"Ворожея резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[36879] = {
					"Порожденный чумой ужас", -- [1]
					"Яма Сарона", -- [2]
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
				[30284] = {
					"Костомол", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[99192] = {
					"Тень Ксавия", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[28578] = {
					"Разоритель из закаленной стали", -- [1]
					"Чертоги Молний", -- [2]
				},
				[29309] = {
					"Старейшина Надокс", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[153527] = {
					"Акир - вожак роя", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[40268] = {
					"Сумеречный боевой маг", -- [1]
					"Грим Батол", -- [2]
				},
				[18982] = {
					"Черный ягуар", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17695] = {
					"Убийца из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
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
				[44648] = {
					"Непреклонное чудовище", -- [1]
					"Трон Приливов", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[63508] = {
					"Сюэнь", -- [1]
					"Око Бури", -- [2]
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
				[37711] = {
					"Ненасытный вурдалак", -- [1]
					"Яма Сарона", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[106319] = {
					"Тотем огнезола", -- [1]
					"Храм Котмогу", -- [2]
				},
				[17465] = {
					"Центурион клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[26672] = {
					"Кровожадный тундровый волк", -- [1]
					"Вершина Утгард", -- [2]
				},
				[30416] = {
					"Укрощенный элементаль огня", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[24674] = {
					"Феникс", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24690] = {
					"Презренный-полутруп", -- [1]
					"Терраса Магистров", -- [2]
				},
				[157368] = {
					"Velinaria", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[24722] = {
					"Кристалл Скверны", -- [1]
					"Терраса Магистров", -- [2]
				},
				[153531] = {
					"Акир-костекрушитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[95769] = {
					"Бешеная визгунья", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[28926] = {
					"Искра Ионар", -- [1]
					"Чертоги Молний", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[153532] = {
					"Акир - подчинитель разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151742] = {
					"Искаженный Бездной захватчик", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[36881] = {
					"Скелет-раб", -- [1]
					"Яма Сарона", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20870] = {
					"Зерекет Бездонный", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17817] = {
					"Большой крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[20902] = {
					"Саргеронский призыватель огня", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
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
				[151640] = {
					"Неисправный хламобот", -- [1]
					"Храм Котмогу", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17961] = {
					"Чародейка резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[101991] = {
					"Обитатель Кошмара", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[30285] = {
					"Глаз Талдарама", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20906] = {
					"Фазовая прыгуана", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[29310] = {
					"Джедога Искательница Теней", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[100539] = {
					"Скверносерд-стрелок", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[40270] = {
					"Сумеречный призыватель грома", -- [1]
					"Грим Батол", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[101679] = {
					"Грозный отравитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20900] = {
					"Освобожденный Носитель Рока", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
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
				[36658] = {
					"Повелитель Плети Тираний", -- [1]
					"Яма Сарона", -- [2]
				},
				[37713] = {
					"Мучитель из свиты Леди", -- [1]
					"Яма Сарона", -- [2]
				},
				[29630] = {
					"Клыкастая глубинная гадюка", -- [1]
					"Гундрак", -- [2]
				},
				[16507] = {
					"Караульный из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[29822] = {
					"Огнепряд Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[24723] = {
					"Селин Огненное Сердце", -- [1]
					"Терраса Магистров", -- [2]
				},
				[160699] = {
					"Рассерженный почтоменталь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[28961] = {
					"Титановый осадник", -- [1]
					"Чертоги Молний", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[29774] = {
					"Плюющаяся кобра", -- [1]
					"Гундрак", -- [2]
				},
				[24675] = {
					"Яйцо феникса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[5925] = {
					"Тотем заземления", -- [1]
					"Храм Котмогу", -- [2]
				},
				[16523] = {
					"Дикарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[29838] = {
					"Люторог Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160061] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
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
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[29982] = {
					"Мародер Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[16699] = {
					"Разоритель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[20864] = {
					"Изначальный кошмар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[44715] = {
					"Злобный бичеватель разума", -- [1]
					"Трон Приливов", -- [2]
				},
				[123093] = {
					"Scalehide", -- [1]
					"Око Бури", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156653] = {
					"Сгустившийся ужас", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[137805] = {
					"Black Blood", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152135] = {
					"Искаженный Бездной чародей", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[102282] = {
					"Лорд Малгат", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[17962] = {
					"Работяга резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[151752] = {
					"Мелкое порождение Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[30286] = {
					"Стужень", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[21127] = {
					"Шквальник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[27281] = {
					"Восставший чаротворец", -- [1]
					"Вершина Утгард", -- [2]
				},
				[160704] = {
					"Капля Бездны в письме", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17083] = {
					"Новообращенный орк Скверны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[28368] = {
					"Имирьярский некромант", -- [1]
					"Вершина Утгард", -- [2]
				},
				[30414] = {
					"Позабытый", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[136664] = {
					"Sepisko", -- [1]
					"Око Бури", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Гробница королей", -- [2]
				},
				[40446] = {
					"Скар'тис Призыватель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151754] = {
					"Блуждающее порождение Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[29680] = {
					"Слад'ранская гадюка", -- [1]
					"Гундрак", -- [2]
				},
				[18314] = {
					"Ловчий нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[151755] = {
					"Темная гончая", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[18394] = {
					"Эфириал-призрак", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[36788] = {
					"Некролит из свиты Леди", -- [1]
					"Яма Сарона", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[25740] = {
					"Ахун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[41040] = {
					"Странное видение", -- [1]
					"Грим Батол", -- [2]
				},
				[26690] = {
					"Имирьярский воин", -- [1]
					"Вершина Утгард", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[152396] = {
					"Защитник Азерот", -- [1]
					"Око Бури", -- [2]
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
				[40273] = {
					"Перерожденный водоплеск", -- [1]
					"Грим Батол", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17669] = {
					"Бешеный бойцовый пес", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[21104] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[20866] = {
					"Пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[16700] = {
					"Легионер клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[158035] = {
					"Магистр Умбрий", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[30111] = {
					"Сумеречный верующий", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[36661] = {
					"Иней", -- [1]
					"Яма Сарона", -- [2]
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
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[21126] = {
					"Целительница чешуи резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[39890] = {
					"Сумеречный демиург", -- [1]
					"Грим Батол", -- [2]
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
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[41073] = {
					"Сумеречный мечник", -- [1]
					"Грим Батол", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[30319] = {
					"Сумеречный черный маг", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[21128] = {
					"Скат резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[40306] = {
					"Сумеречный мечник", -- [1]
					"Грим Батол", -- [2]
				},
				[144293] = {
					"Переработчик отходов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158411] = {
					"Нестабильный слуга", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17839] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[151634] = {
					"Моторилла", -- [1]
					"Храм Котмогу", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[36840] = {
					"Имирьярский вестник зла", -- [1]
					"Яма Сарона", -- [2]
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
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[17356] = {
					"Ползучий слизнюк", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[158157] = {
					"Владыка Матиас Шоу", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[17420] = {
					"Язычник из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[36886] = {
					"Упырь-душитель", -- [1]
					"Яма Сарона", -- [2]
				},
				[129776] = {
					"Faithless Spireguard", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[26691] = {
					"Имирьярский знахарь", -- [1]
					"Вершина Утгард", -- [2]
				},
				[29311] = {
					"Глашатай Волаж", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[18311] = {
					"Эфириал - осквернитель гробниц", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
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
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[157137] = {
					"Terror Tendril", -- [1]
					"Halls of Origination", -- [2]
				},
				[20857] = {
					"Защитник Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20873] = {
					"Мастер искажения Негатона", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Гробница королей", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[151639] = {
					"Crazed Gyreworm", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[30176] = {
					"Ан'кахарский страж", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[39892] = {
					"Порабощенный горящий уголь", -- [1]
					"Грим Батол", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[39956] = {
					"Сумеречный головорез", -- [1]
					"Грим Батол", -- [2]
				},
				[17964] = {
					"Рабочий-бродяга пустошей", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[41139] = {
					"Врачеватель душ Леди Наз'жар", -- [1]
					"Трон Приливов", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20886] = {
					"Провидец Гнева Соккорат", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[100820] = {
					"Ящер-элементаль", -- [1]
					"Гробница королей", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
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
				[18312] = {
					"Эфириал-чароплет", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[16809] = {
					"О'мрогг Завоеватель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[17671] = {
					"Воитель клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[19307] = {
					"Ужасень Нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[44752] = {
					"Безликий подавитель", -- [1]
					"Трон Приливов", -- [2]
				},
				[28546] = {
					"Ионар", -- [1]
					"Чертоги Молний", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[24715] = {
					"Крайне взрывоопасная овца", -- [1]
					"Терраса Магистров", -- [2]
				},
				[17357] = {
					"Ползучий слизнюченыш", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161198] = {
					"Исказитель пространства Душар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[29713] = {
					"Слад'ранский душитель", -- [1]
					"Гундрак", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151476] = {
					"\"Взрывотрон Х-80\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[26692] = {
					"Имирьярский гарпунщик", -- [1]
					"Вершина Утгард", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Око Бури", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[20865] = {
					"Амебовидный ужас", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[157483] = {
					"Ysedra the Darkener", -- [1]
					"Halls of Origination", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[102398] = {
					"Пылающий инфернал", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[16808] = {
					"Вождь Каргат Острорук", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[163746] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[31104] = {
					"Наблюдатель Ан'кахара", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[28585] = {
					"Шлак", -- [1]
					"Чертоги Молний", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[102372] = {
					"Гончая Скверны - убийца магов", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20898] = {
					"Чудовищный магматический инфернал", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[55659] = {
					"Дикий бес", -- [1]
					"Гробница королей", -- [2]
				},
				[20867] = {
					"Дозорный Смерти", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[24556] = {
					"Зелфан", -- [1]
					"Терраса Магистров", -- [2]
				},
				[102370] = {
					"Эредарский завоеватель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
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
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[24698] = {
					"Контрабандист Эфириума", -- [1]
					"Терраса Магистров", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[152479] = {
					"Искаженный Бездной дракончик", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[140593] = {
					"Restless Horror", -- [1]
					"The Underrot", -- [2]
				},
				[21148] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[17670] = {
					"Псарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[161241] = {
					"Мал'тир - маг Бездны", -- [1]
					"Вольная Гавань", -- [2]
				},
				[152162] = {
					"Искаженный Бездной небесный боец", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[18317] = {
					"Эфириал-жрец", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[20908] = {
					"Аккирис Штормоход", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[28579] = {
					"Берсерк из закаленной стали", -- [1]
					"Чертоги Молний", -- [2]
				},
				[36476] = {
					"Ик", -- [1]
					"Яма Сарона", -- [2]
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
				[18429] = {
					"Волшебное исчадие", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[29573] = {
					"Элементаль Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
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
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[29826] = {
					"Целитель Драккари", -- [1]
					"Гундрак", -- [2]
				},
				[28586] = {
					"Генерал Бьярнгрим", -- [1]
					"Чертоги Молний", -- [2]
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
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[161244] = {
					"Кровь Заразителя", -- [1]
					"Вольная Гавань", -- [2]
				},
				[95072] = {
					"Большой элементаль земли", -- [1]
					"Храм Котмогу", -- [2]
				},
				[29240] = {
					"Лейтенант клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
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
				[28836] = {
					"Рунодел клана Закаленных Бурей", -- [1]
					"Чертоги Молний", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
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
				[112732] = {
					"Дитя Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[30179] = {
					"Сумеречный апостол", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[155657] = {
					"Хаффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[30178] = {
					"Ан'кахарский паук", -- [1]
					"Ан'кахет: Старое Королевство", -- [2]
				},
				[112733] = {
					"Ядошкурый тенеткач", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[36891] = {
					"Рожденный во льдах протодракон", -- [1]
					"Яма Сарона", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152835] = {
					"Кристаллизированный азерит", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[164188] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[24696] = {
					"Ведьма из клана Змеиных Колец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[100526] = {
					"Истерзанный кровопийца", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[26536] = {
					"Безмозглый слуга", -- [1]
					"Вершина Утгард", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[151657] = {
					"Бомботанк", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151785] = {
					"Искаженный Бездной убийца драконов", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[164189] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[130832] = {
					"Strawberry", -- [1]
					"Око Бури", -- [2]
				},
				[151798] = {
					"Вексиона", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[125828] = {
					"Ozric", -- [1]
					"Atal'Dazar", -- [2]
				},
				[17938] = {
					"Наблюдатель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
			["aura_width"] = 20.53935241699219,
			["aura_show_crowdcontrol"] = true,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
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
			["aura_alpha"] = 0.8045477867126465,
			["first_run3"] = true,
			["transparency_behavior"] = 3,
			["ui_parent_scale_tune"] = 1.538461594891974,
			["aura_show_enrage"] = true,
			["health_statusbar_texture"] = "Minimalist",
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Hide Neutral Units"] = 1,
				["Aura Reorder"] = 1,
				["Combo Points"] = 3,
				["Extra Border"] = 2,
				["Attacking Specific Unit"] = 1,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
			},
			["captured_spells"] = {
				[204262] = {
					["source"] = "Шампампам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Сваровски-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283565] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[198121] = {
					["source"] = "Алинфиска-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126462] = {
					["source"] = "Ячсмитф-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Дия-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300971] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275378] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Nabaral-DieAldor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48267] = {
					["type"] = "DEBUFF",
					["source"] = "Свала Вечноскорбящая",
					["encounterID"] = 2030,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26668,
				},
				[125439] = {
					["source"] = "Фондя-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298926] = {
					["source"] = "Таймрулер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295855] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318378] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274357] = {
					["source"] = "Dutchhuntr-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295856] = {
					["source"] = "Защитник Азерот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152396,
				},
				[269239] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123904] = {
					["encounterID"] = 1978,
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Высвобожденная энергия шторма",
					["npcID"] = 141123,
				},
				[311214] = {
					["source"] = "Топкун-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Жепилл-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260062] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128472,
				},
				[311216] = {
					["source"] = "Дурбон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90633] = {
					["source"] = "Ядоваренье-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200174] = {
					["source"] = "Ыыс-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75789] = {
					["encounterID"] = 1049,
					["source"] = "Эрудакс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40484,
				},
				[318385] = {
					["type"] = "BUFF",
					["source"] = "Валира Сангвинар",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156837,
				},
				[76813] = {
					["source"] = "Врачеватель душ Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41096,
				},
				[24394] = {
					["source"] = "Слономыфь",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 16354,
				},
				[153595] = {
					["source"] = "Силивия-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хилус-Борейскаятундра",
					["npcID"] = 0,
				},
				[304056] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307128] = {
					["source"] = "Улдскул-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59146] = {
					["source"] = "Охотник бога Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29820,
				},
				[8680] = {
					["source"] = "Notørious-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Violetchachk-Balnazzar",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[279490] = {
					["source"] = "Médèlwr-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300989] = {
					["source"] = "Бельфий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273348] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76815] = {
					["source"] = "Врачеватель душ Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41096,
				},
				[273349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Одеялка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275398] = {
					["source"] = "Пасхал-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[75792] = {
					["type"] = "DEBUFF",
					["source"] = "Эрудакс",
					["encounterID"] = 1049,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40484,
				},
				[2379] = {
					["source"] = "Засмущаю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293827] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[303041] = {
					["source"] = "Сеева-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59019] = {
					["source"] = "Плюющаяся кобра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29774,
				},
				[302018] = {
					["source"] = "Гарнаут-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294852] = {
					["source"] = "Голос-в-Глубинах",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151719,
				},
				[314304] = {
					["source"] = "Великая императрица Шек'зара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154638,
				},
				[190456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[300996] = {
					["source"] = "\"Каратель KX-T57\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154153,
				},
				[281545] = {
					["source"] = "Федмакс-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316353] = {
					["source"] = "Воин из шайки Скитальцев Пустыни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154462,
				},
				[314306] = {
					["source"] = "Великая императрица Шек'зара",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154638,
				},
				[298950] = {
					["source"] = "Морнор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Куома-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314307] = {
					["source"] = "Великая императрица Шек'зара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154638,
				},
				[271310] = {
					["source"] = "Истребительница из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154434,
				},
				[293833] = {
					["source"] = "Проржавевший машинист",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153957,
				},
				[5221] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59020] = {
					["source"] = "Плюющаяся кобра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29774,
				},
				[673] = {
					["source"] = "Ырфыз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291789] = {
					["source"] = "Гарнаут-Галакронд",
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
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53390] = {
					["source"] = "Сваровски-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314316] = {
					["source"] = "Зара'тик - страж роя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161370,
				},
				[159238] = {
					["source"] = "Леарнила",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193534] = {
					["source"] = "Локситан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132621] = {
					["source"] = "Бросилдизайн-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202748] = {
					["source"] = "Suicun-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59021] = {
					["source"] = "Непреклонный душитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29768,
				},
				[236021] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314321] = {
					["source"] = "Зара'тик - янтарный кузнец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161371,
				},
				[274395] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ерамир",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Папафлоузи-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261616] = {
					["source"] = "Кэти Штемпельпупс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132969,
				},
				[196608] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Минаах",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313303] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217597] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ривэрия",
					["npcID"] = 0,
				},
				[3219] = {
					["source"] = "Лайкина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132626] = {
					["source"] = "Роббинбобин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293854] = {
					["source"] = "Мехагонский боевой механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144294,
				},
				[88084] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 47243,
				},
				[30283] = {
					["encounterID"] = 1980,
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анёлак-Дракономор",
					["npcID"] = 0,
				},
				[132627] = {
					["source"] = "Алисандр-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308188] = {
					["source"] = "Сораака-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вулс-Дракономор",
					["npcID"] = 0,
				},
				[314332] = {
					["source"] = "Великая императрица Шек'зара",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154638,
				},
				[290786] = {
					["source"] = "Garvanzo-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[845] = {
					["source"] = "Harvlifé-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314333] = {
					["source"] = "Великая императрица Шек'зара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154638,
				},
				[6789] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[135700] = {
					["source"] = "Belgwen-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2259,
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198149] = {
					["source"] = "Алинфиска-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59023] = {
					["source"] = "Непреклонный душитель",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29768,
				},
				[59407] = {
					["type"] = "BUFF",
					["source"] = "Восставший чаротворец",
					["encounterID"] = 2030,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27281,
				},
				[250873] = {
					["source"] = "Шмормовоой",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293861] = {
					["source"] = "Противопехотная белка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151613,
				},
				[190984] = {
					["encounterID"] = 2257,
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264173] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Нееленочка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нефтяная масса",
					["npcID"] = 150698,
				},
				[290792] = {
					["source"] = "Printhe-Antonidas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49170] = {
					["source"] = "Имирьярский шаман заката",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26694,
				},
				[201223] = {
					["source"] = "Электрофил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16591] = {
					["source"] = "Ларидаель-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124430] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200200] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264178] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54801] = {
					["encounterID"] = 1983,
					["source"] = "Элементаль Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29573,
				},
				[228354] = {
					["source"] = "Меранна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59408] = {
					["type"] = "DEBUFF",
					["source"] = "Восставший чаротворец",
					["encounterID"] = 2030,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27281,
				},
				[297964] = {
					["source"] = "Симайни-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холлиям",
					["npcID"] = 0,
				},
				[250878] = {
					["source"] = "Лосебау-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181775] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэтахилер",
					["npcID"] = 0,
				},
				[26573] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287731] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317420] = {
					["source"] = "Рокказ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269304] = {
					["source"] = "Нефтедобытчик Торговой компании",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137065,
				},
				[33943] = {
					["source"] = "Флоопи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288756] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Böh-Alleria",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59409] = {
					["encounterID"] = 2030,
					["source"] = "Свала Вечноскорбящая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26668,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274426] = {
					["source"] = "Belgwen-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Анхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48276] = {
					["type"] = "BUFF",
					["source"] = "Свала Вечноскорбящая",
					["encounterID"] = 2030,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26668,
				},
				[84507] = {
					["type"] = "DEBUFF",
					["source"] = "Захватчик Леди Наз'жар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39616,
				},
				[308212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Риорита",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Teunor-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49172] = {
					["source"] = "Имирьярский шаман заката",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26694,
				},
				[1066] = {
					["source"] = "Згодлайк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Анб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[177175] = {
					["type"] = "BUFF",
					["source"] = "Астериал-Гордунни",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294909] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1122] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Тоталлд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["source"] = "Пасхал-СтражСмерти",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294912] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45334] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269319] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[290819] = {
					["source"] = "Бьорвик",
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
				[118038] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280583] = {
					["source"] = "Трейдар-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["source"] = "Мьёлнирр-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Thevivaldi-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297989] = {
					["source"] = "Оверулл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[48278] = {
					["encounterID"] = 2030,
					["source"] = "Восставший чаротворец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 27281,
				},
				[259592] = {
					["source"] = "Фибу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283658] = {
					["source"] = "Валира Сангвинар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156837,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Халфрод",
					["npcID"] = 0,
				},
				[259593] = {
					["source"] = "Зубарк-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262161] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[283660] = {
					["source"] = "Валира Сангвинар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156837,
				},
				[297993] = {
					["source"] = "Керилченса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188443] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283661] = {
					["source"] = "Валира Сангвинар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156837,
				},
				[5302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Флайвос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297995] = {
					["source"] = "Стивушка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291853] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150497,
				},
				[17553] = {
					["source"] = "Лайкина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[178207] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87840] = {
					["source"] = "Продлжд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294926] = {
					["source"] = "Hunako-Twilight'sHammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201754] = {
					["source"] = "Медведь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 3810,
				},
				[76579] = {
					["source"] = "Сумеречный призыватель грома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40270,
				},
				[291856] = {
					["encounterID"] = 2260,
					["source"] = "Плазменная сфера",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150485,
				},
				[311308] = {
					["source"] = "Хитраякошка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Когалл-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["source"] = "Suicun-Dalaran",
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
				[267288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шаман Служителей Земли",
					["npcID"] = 135671,
				},
				[33691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[311310] = {
					["source"] = "Хваньхвинь-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5782] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298002] = {
					["source"] = "Киркиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Suicun-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275481] = {
					["source"] = "Максимушка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285719] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257040] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285720] = {
					["source"] = "Аянский-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[48280] = {
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153897,
				},
				[285721] = {
					["source"] = "Хатсунэмику-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
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
					["source"] = "Yingy-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 1978,
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233496] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278559] = {
					["source"] = "Атросион-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[42650] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elnarcz-Drak'thul",
					["npcID"] = 0,
				},
				[233497] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280608] = {
					["source"] = "Телиша-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["source"] = "Локситан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233498] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48281] = {
					["source"] = "\"Блескотрон-7000\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[288800] = {
					["source"] = "Ланселька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311323] = {
					["source"] = "Сектантка-палач",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159633,
				},
				[199203] = {
					["source"] = "Синегард-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233499] = {
					["source"] = "Истаниил-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291874] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[288803] = {
					["source"] = "Ланселька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мунаара",
					["npcID"] = 0,
				},
				[54680] = {
					["source"] = "Teethboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[236060] = {
					["source"] = "Thevivaldi-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280615] = {
					["source"] = "Сваровски-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167981] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106785] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291878] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[184362] = {
					["source"] = "Аганник-Разувий",
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
					["source"] = "Аркантош-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Мордакотя-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273453] = {
					["source"] = "Ведычь-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бэллентайн",
					["npcID"] = 0,
				},
				[193065] = {
					["source"] = "Каппучинко-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джастхард-Дракономор",
					["npcID"] = 0,
				},
				[1822] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278574] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Безумныйчерт-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Келвик",
					["npcID"] = 0,
				},
				[207400] = {
					["source"] = "Сваровски-СтражСмерти",
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
				[261148] = {
					["source"] = "Грабитель из банды Сталеруких",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150997,
				},
				[204330] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83242] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204331] = {
					["source"] = "Кондопрайд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204843] = {
					["source"] = "Killerfrost-Frostwhisper",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Войско мертвых",
					["npcID"] = 24207,
				},
				[132157] = {
					["source"] = "Одеялка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Абессалом",
					["npcID"] = 0,
				},
				[272441] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шипастый вурдалак",
					["npcID"] = 146843,
				},
				[273465] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83243] = {
					["source"] = "Коксофея-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294966] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Кларазеткин-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148539] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[268350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Порабощенная волна",
					["npcID"] = 134340,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293945] = {
					["source"] = "Агнелис-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83244] = {
					["source"] = "Вимбулу",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Кларазеткин-Азурегос",
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
					["source"] = "Кларазеткин-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17364] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[148542] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260643] = {
					["source"] = "Nabaral-DieAldor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76335] = {
					["type"] = "DEBUFF",
					["source"] = "Багровый провидец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39405,
				},
				[287809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мамакошка",
					["npcID"] = 0,
				},
				[57755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[115750] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[264265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "убийцавнутри",
					["npcID"] = 88708,
				},
				[193078] = {
					["source"] = "Поглощенная Тьмой агент ШРУ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156794,
				},
				[296003] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273481] = {
					["source"] = "Буфин-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Манабулкин",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Саурум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2484] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75569] = {
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39392,
				},
				[160832] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Perg-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5143] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Лекарстон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дирижабль-бомбардировщик",
					["npcID"] = 136958,
				},
				[280653] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297034] = {
					["source"] = "Левкофейа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Анб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273489] = {
					["source"] = "Эрни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138871,
				},
				[59548] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317511] = {
					["source"] = "Песчаниковый копатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158477,
				},
				[256044] = {
					["source"] = "Надзиратель Корги",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[260651] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Игол'ничек",
					["npcID"] = 139298,
				},
				[297037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гладислав-Галакронд",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269397] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287825] = {
					["source"] = "Донт-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297039] = {
					["source"] = "Клизмус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[297040] = {
					["source"] = "Жека-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311373] = {
					["source"] = "Поглощенная Тьмой агент ШРУ",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156794,
				},
				[291922] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[280661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 143985,
				},
				[23060] = {
					["source"] = "Укрепленный \"КПХ-35/МГ\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155288,
				},
				[88625] = {
					["source"] = "Одеялка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2908] = {
					["encounterID"] = 1045,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260654] = {
					["source"] = "Игол'ничек",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139298,
				},
				[288853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wrecean-Kazzak",
					["npcID"] = 0,
				},
				[2948] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308305] = {
					["source"] = "Алькс'ков Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152809,
				},
				[313424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[298068] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Айринис-Азурегос",
					["npcID"] = 0,
				},
				[116011] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158792] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wrecean-Kazzak",
					["npcID"] = 0,
				},
				[291928] = {
					["encounterID"] = 2260,
					["source"] = "Воздушное судно R-21/X",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150396,
				},
				[228920] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296024] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291930] = {
					["encounterID"] = 2258,
					["source"] = "Куб металлолома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150520,
				},
				[287836] = {
					["source"] = "Такэмикати-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[300122] = {
					["source"] = "Чахосо-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160331] = {
					["source"] = "Хантерук-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74551] = {
					["source"] = "Сумеречный ловец огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39870,
				},
				[194627] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288865] = {
					["source"] = "Защитница Ржавого Болта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151828,
				},
				[291937] = {
					["encounterID"] = 2258,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74552] = {
					["source"] = "Сумеречный демиург",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39890,
				},
				[116014] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293986] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[200772] = {
					["source"] = "Ученая из Лиги исследователей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161938,
				},
				[6807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[312415] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157792,
				},
				[187464] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208963] = {
					["source"] = "Тотем небесной ярости",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[271466] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Badassbadger-Wildhammer",
					["npcID"] = 0,
				},
				[273514] = {
					["source"] = "Мак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138866,
				},
				[203846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[148564] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мандарие-Дракономор",
					["npcID"] = 0,
				},
				[107570] = {
					["source"] = "Газкон-Ясеневыйлес",
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
				[203847] = {
					["source"] = "Гулиданн-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307303] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[176718] = {
					["source"] = "Следопыт из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154461,
				},
				[311399] = {
					["source"] = "Мастер клинка Теренсон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156949,
				},
				[281711] = {
					["source"] = "Аганник-Разувий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3716] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[303211] = {
					["source"] = "Аланхайд-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205385] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76603] = {
					["source"] = "Сумеречный демиург",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39890,
				},
				[215111] = {
					["source"] = "Зловещий охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[316522] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212040] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212552] = {
					["source"] = "Светокрадец-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["source"] = "Долланатра-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307311] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[264314] = {
					["source"] = "Pocoyo-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277623] = {
					["source"] = "Азеритовый кусака",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123713,
				},
				[203852] = {
					["source"] = "Мурлядь-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302194] = {
					["source"] = "Гарнаут-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255040] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нагел",
					["npcID"] = 0,
				},
				[198222] = {
					["source"] = "Вориишка-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279673] = {
					["source"] = "Гык-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257088] = {
					["source"] = "Наездник на радикулиске",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148292,
				},
				[281721] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["source"] = "Yitte-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[90170] = {
					["type"] = "BUFF",
					["source"] = "Зловредный трогг",
					["encounterID"] = 1051,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39984,
				},
				[246852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[124210] = {
					["source"] = "Головосрез",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269440] = {
					["source"] = "Поджигатель из Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138095,
				},
				[188499] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sekana-Uldaman",
					["npcID"] = 0,
				},
				[246853] = {
					["source"] = "Suicun-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пандаквин",
					["npcID"] = 0,
				},
				[296059] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кварцеона",
					["npcID"] = 0,
				},
				[246854] = {
					["source"] = "Suicun-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294015] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151476,
				},
				[162908] = {
					["source"] = "Газ'ралка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129954,
				},
				[279684] = {
					["source"] = "Böh-Alleria",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318587] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[206930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[75328] = {
					["type"] = "BUFF",
					["source"] = "Валиона",
					["encounterID"] = 1048,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40320,
				},
				[204883] = {
					["source"] = "Хилараила-Азурегос",
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
					["source"] = "Ыыс-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шар сокрушающего прилива",
					["npcID"] = 153500,
				},
				[291973] = {
					["encounterID"] = 2258,
					["source"] = "КУ-ДЖ0",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144246,
				},
				[74561] = {
					["source"] = "Сумеречный рассекатель туч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39962,
				},
				[115767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[291974] = {
					["encounterID"] = 2260,
					["source"] = "Король Мехагон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150397,
				},
				[280713] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308355] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[302213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рофланхолли-Гордунни",
					["npcID"] = 0,
				},
				[295047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ахке",
					["npcID"] = 0,
				},
				[5176] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308358] = {
					["source"] = "Заклятый слуга",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155959,
				},
				[244813] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[250956] = {
					["source"] = "Томирес-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гаабриэль",
					["npcID"] = 0,
				},
				[277648] = {
					["source"] = "Трухляк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141970,
				},
				[308361] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[281744] = {
					["source"] = "Хлебалочист-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51750] = {
					["encounterID"] = 2028,
					["source"] = "Король Имирон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26861,
				},
				[257100] = {
					["source"] = "Наездник на радикулиске",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148292,
				},
				[277650] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299149] = {
					["source"] = "Мьёлнирр-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256077] = {
					["source"] = "Прожорливый кабан",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133822,
				},
				[300174] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195676] = {
					["source"] = "Helodir-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317579] = {
					["source"] = "Акир-поработитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162164,
				},
				[291987] = {
					["source"] = "Дэдмайлайф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250960] = {
					["source"] = "Томирес-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[181346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Когтистый гризли",
					["npcID"] = 139793,
				},
				[23768] = {
					["source"] = "Воржей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14822,
				},
				[48168] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141121,
				},
				[296086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Badassbadger-Wildhammer",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312467] = {
					["source"] = "Зара'тик-солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157793,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Катаклизмерр",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264353] = {
					["source"] = "Helodir-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314517] = {
					["source"] = "Айсбит-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6360] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nimrida",
					["npcID"] = 120527,
				},
				[280735] = {
					["source"] = "Мегамегаогр-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273570] = {
					["source"] = "Пеплохвостый бандинот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142454,
				},
				[124219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Милареот",
					["npcID"] = 0,
				},
				[257620] = {
					["source"] = "Анвирус-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84037] = {
					["encounterID"] = 1047,
					["source"] = "Нептулон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40792,
				},
				[217694] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279715] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293024] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[298146] = {
					["source"] = "Флайвос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270505] = {
					["source"] = "Падший пронзатель сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158092,
				},
				[34477] = {
					["source"] = "Hià-Elune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314527] = {
					["source"] = "Вук'лаз Землелом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160970,
				},
				[34861] = {
					["source"] = "Ирчона-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213602] = {
					["source"] = "Неител-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23769] = {
					["source"] = "Воржей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14822,
				},
				[14030] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[200806] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297126] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181867] = {
					["encounterID"] = 1978,
					["source"] = "Астериал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308388] = {
					["source"] = "Капля анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155950,
				},
				[208997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пандаквин",
					["npcID"] = 0,
				},
				[297128] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[194153] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вардило",
					["npcID"] = 0,
				},
				[77130] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271538] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294061] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[270515] = {
					["source"] = "Усиленный азеритом элементаль",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137905,
				},
				[297133] = {
					["source"] = "\"Оборонобот II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144298,
				},
				[282801] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144244,
				},
				[76363] = {
					["source"] = "Нестабильная порча",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40923,
				},
				[260188] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134156,
				},
				[294064] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[202347] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аврорабореал",
					["npcID"] = 0,
				},
				[271543] = {
					["source"] = "Seliens-Aszune",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271544] = {
					["source"] = "Шильвари",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255071] = {
					["source"] = "Бондажница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76620] = {
					["source"] = "Рожденный в лазури полководец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39909,
				},
				[256607] = {
					["source"] = "Кровопускатель из культа Шадры",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122872,
				},
				[59305] = {
					["encounterID"] = 2028,
					["source"] = "Король Имирон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26861,
				},
				[196718] = {
					["source"] = "Doomyak-Genjuros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213610] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47788] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Дзенни-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[302262] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2061] = {
					["source"] = "Баздал-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[86603] = {
					["source"] = "Гавин Малсбери",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61838,
				},
				[294073] = {
					["source"] = "Танк-долгоног",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151658,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308406] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[315573] = {
					["source"] = "Speerk-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121411] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308408] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[94794] = {
					["source"] = "Сабинн-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мармеладень",
					["npcID"] = 0,
				},
				[12975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[281794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мармеладень",
					["npcID"] = 0,
				},
				[299198] = {
					["source"] = "Воздушный ликвидатор ХЗ-9",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154700,
				},
				[260708] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мармеладень",
					["npcID"] = 0,
				},
				[135299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Заполярник-Голдринн",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Улдскул-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271559] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Улдскул-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[277703] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Warrgamma-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277706] = {
					["source"] = "Аднгмар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["source"] = "Лесиор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232559] = {
					["source"] = "Tólò-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20572] = {
					["source"] = "Улдскул-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["source"] = "Vesna-Ysondre",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206966] = {
					["source"] = "Doomyak-Genjuros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Дельвия-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296138] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йогара-Дракономор",
					["npcID"] = 0,
				},
				[76626] = {
					["type"] = "BUFF",
					["source"] = "Рожденный в лазури полководец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39909,
				},
				[59052] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2257,
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40625] = {
					["source"] = "Дилэн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[297168] = {
					["source"] = "Меранна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["source"] = "Тоталлд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62124] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314573] = {
					["source"] = "Айсбит-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196733] = {
					["source"] = "Куома-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Найскрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Околит-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55342] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилус-Борейскаятундра",
					["npcID"] = 0,
				},
				[64044] = {
					["source"] = "Yitte-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162951] = {
					["source"] = "Акир-пронзатель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154367,
				},
				[188033] = {
					["source"] = "Оркинун-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75861] = {
					["type"] = "DEBUFF",
					["source"] = "Эрудакс",
					["encounterID"] = 1049,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40484,
				},
				[129352] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йула",
					["npcID"] = 0,
				},
				[294103] = {
					["source"] = "Ракетный танк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151659,
				},
				[264415] = {
					["source"] = "Президентюар-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277724] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[297176] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6201] = {
					["encounterID"] = 2029,
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295130] = {
					["source"] = "Детектобот",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151812,
				},
				[288988] = {
					["source"] = "Адлеррог",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294107] = {
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151773,
				},
				[264420] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[95826] = {
					["source"] = "Призрачный страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152166,
				},
				[294110] = {
					["source"] = "\"Зубодробитель\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151684,
				},
				[277731] = {
					["source"] = "Кларазеткин-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268519] = {
					["source"] = "Фтп-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6713] = {
					["source"] = "Пикейщик Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29819,
				},
				[295137] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66906] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лёхаволф-Дракономор",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294115] = {
					["source"] = "\"Зубодробитель\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151684,
				},
				[105809] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114255] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Elémentaire d’eau",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[196742] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Стэфания-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302307] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vánhelsing-Turalyon",
					["npcID"] = 0,
				},
				[299237] = {
					["source"] = "Рысьё-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ерамир",
					["npcID"] = 0,
				},
				[299238] = {
					["source"] = "Антроп-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3565] = {
					["source"] = "Киркиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313571] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299239] = {
					["source"] = "Блейф-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Фалротар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилус-Борейскаятундра",
					["npcID"] = 0,
				},
				[299240] = {
					["source"] = "Бедняяга-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183436] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300265] = {
					["source"] = "Дэдмайлайф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76634] = {
					["type"] = "BUFF",
					["source"] = "Опороченный часовой",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40925,
				},
				[198793] = {
					["source"] = "Архольд-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81753] = {
					["source"] = "Бригадир из шайки Скитальцев Пустыни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154425,
				},
				[205448] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185485] = {
					["source"] = "Драгдилэр-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59824] = {
					["type"] = "BUFF",
					["source"] = "Гал'дара",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29306,
				},
				[278769] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
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
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324839] = {
					["source"] = "Йоха-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305388] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268534] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Локситан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рофланхолли-Гордунни",
					["npcID"] = 0,
				},
				[281844] = {
					["source"] = "Алдун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300272] = {
					["source"] = "Зельман-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268536] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[303344] = {
					["source"] = "Стэфания-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305392] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[303345] = {
					["source"] = "Аднгмар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["source"] = "Nelsonson-TarrenMill",
					["type"] = "BUFF",
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
				[55218] = {
					["encounterID"] = 1981,
					["source"] = "Гал'дара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29306,
				},
				[301299] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59825] = {
					["type"] = "DEBUFF",
					["source"] = "Гал'дара",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29306,
				},
				[308466] = {
					["source"] = "Кричащая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157298,
				},
				[305395] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мандарие-Дракономор",
					["npcID"] = 0,
				},
				[300278] = {
					["source"] = "Генжи-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 150976,
				},
				[213644] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123986] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sekana-Uldaman",
					["npcID"] = 0,
				},
				[191634] = {
					["source"] = "Nelsonson-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[172183] = {
					["source"] = "Верховный маг Накада",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 82564,
				},
				[324851] = {
					["source"] = "Церуго-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280830] = {
					["source"] = "Чинч-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281854] = {
					["source"] = "Митиффа-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1079] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[172184] = {
					["source"] = "Верховный маг Накада",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 82564,
				},
				[106839] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Жмухич-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294142] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ибрагимоглы",
					["npcID"] = 0,
				},
				[48181] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[314618] = {
					["source"] = "Вук'лаз Землелом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160970,
				},
				[61362] = {
					["source"] = "Огнепряд Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29822,
				},
				[270598] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126685,
				},
				[324857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Юмиэль-Борейскаятундра",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295169] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[324858] = {
					["source"] = "Бобренок-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269576] = {
					["source"] = "Локситан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295170] = {
					["source"] = "\"Взрывотрон Х-80\"",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151476,
				},
				[23135] = {
					["source"] = "Артеимида-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276743] = {
					["source"] = "Helodir-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50613] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[300291] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[70242] = {
					["source"] = "Шантаэ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пангар-Галакронд",
					["npcID"] = 0,
				},
				[324862] = {
					["source"] = "Каппитошка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75361] = {
					["source"] = "Головорез из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138170,
				},
				[310530] = {
					["source"] = "Квакеру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Дэлири",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255625] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128474,
				},
				[268558] = {
					["source"] = "Алдун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Флайвос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324865] = {
					["source"] = "Отважка-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300296] = {
					["source"] = "Боггак Черепокол",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151308,
				},
				[261769] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэдисон-Гордунни",
					["npcID"] = 0,
				},
				[294155] = {
					["source"] = "Росбой",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324868] = {
					["source"] = "Фитадор-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55093] = {
					["encounterID"] = 1978,
					["source"] = "Слад'ранский душитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29713,
				},
				[59444] = {
					["encounterID"] = 1980,
					["source"] = "Мураби",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29305,
				},
				[59828] = {
					["type"] = "BUFF",
					["source"] = "Гал'дара",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29306,
				},
				[308490] = {
					["source"] = "Тэн Пробудившийся",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154600,
				},
				[172193] = {
					["source"] = "Зара'тик-солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157793,
				},
				[273685] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["source"] = "Загрейй",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295186] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страж улья",
					["npcID"] = 131377,
				},
				[80483] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wiretapped-Kazzak",
					["npcID"] = 0,
				},
				[206491] = {
					["source"] = "Tréacle-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296211] = {
					["source"] = "Стэфания-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280855] = {
					["source"] = "Væly-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59829] = {
					["encounterID"] = 1981,
					["source"] = "Гал'дара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29306,
				},
				[74853] = {
					["type"] = "BUFF",
					["source"] = "Генерал Умбрисс",
					["encounterID"] = 1051,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39625,
				},
				[293142] = {
					["source"] = "Флайвос",
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
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Риода",
					["npcID"] = 0,
				},
				[280858] = {
					["source"] = "Газкон-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32734] = {
					["source"] = "Огнедых из племени Хламоедов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151720,
				},
				[114780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[1543] = {
					["source"] = "Conradin-Vek'nilash",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198304] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[280861] = {
					["source"] = "Dønâ-MarécagedeZangar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аврорабореал",
					["npcID"] = 0,
				},
				[280862] = {
					["source"] = "Dønâ-MarécagedeZangar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[99] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["source"] = "Локситан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Такзар",
					["npcID"] = 0,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[196770] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Флайвос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Данатиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Böh-Alleria",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48697] = {
					["source"] = "Увалень из Плети",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26555,
				},
				[267558] = {
					["source"] = "Злаякапля",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73320] = {
					["source"] = "Олморни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188070] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[272678] = {
					["source"] = "Потекунчик-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299296] = {
					["source"] = "Покахонтаус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Иллихант",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Алинфиска-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299298] = {
					["source"] = "Даниктрис-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Закаса-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199845] = {
					["source"] = "Ментальный демон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101398,
				},
				[294180] = {
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151773,
				},
				[299299] = {
					["source"] = "Наигл-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316703] = {
					["source"] = "Дактиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299300] = {
					["source"] = "Катянтер-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302372] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[20066] = {
					["source"] = "Клачек-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255129] = {
					["source"] = "Чашкалатте-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256153] = {
					["source"] = "Тося-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[314659] = {
					["source"] = "Вук'лаз Землелом",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160970,
				},
				[299304] = {
					["source"] = "Антроп-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16739] = {
					["source"] = "Мчсдруид-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58168] = {
					["source"] = "Жуз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[163505] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299305] = {
					["source"] = "Леметр-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297258] = {
					["source"] = "Фрагмент сознания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153118,
				},
				[298282] = {
					["source"] = "Аора-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324900] = {
					["source"] = "Медогар-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59320] = {
					["type"] = "BUFF",
					["source"] = "Источник духа",
					["encounterID"] = 2028,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27339,
				},
				[297260] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273714] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324902] = {
					["source"] = "Лилитэль-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79466] = {
					["encounterID"] = 1049,
					["source"] = "Эрудакс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40484,
				},
				[118] = {
					["source"] = "Жмухич-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298286] = {
					["source"] = "Илерма-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313643] = {
					["source"] = "Дзенни-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Алинфиска-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274741] = {
					["source"] = "Perttu-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299312] = {
					["source"] = "Сандк-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79467] = {
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39392,
				},
				[122] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324907] = {
					["source"] = "Серпена-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255647] = {
					["encounterID"] = 2030,
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55098] = {
					["type"] = "BUFF",
					["source"] = "Мураби",
					["encounterID"] = 1980,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29305,
				},
				[314671] = {
					["source"] = "Дэсперэйт-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[294198] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315697] = {
					["source"] = "Зара'тик-солдат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157793,
				},
				[259232] = {
					["source"] = "Зет'джирский повелитель приливов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131085,
				},
				[8122] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299318] = {
					["source"] = "Мэривитц-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73326] = {
					["source"] = "Олморни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335150] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8212] = {
					["source"] = "Газкон-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Клачек-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Фиббоначи-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Ургелок-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[2094] = {
					["source"] = "Lilduck-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299321] = {
					["source"] = "Рысьё-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["encounterID"] = 2257,
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314678] = {
					["source"] = "Дэсперэйт-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаридор",
					["npcID"] = 0,
				},
				[59322] = {
					["type"] = "BUFF",
					["source"] = "Скади Безжалостный",
					["encounterID"] = 2029,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26693,
				},
				[282943] = {
					["type"] = "DEBUFF",
					["source"] = "Таранный поршень",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153203,
				},
				[234153] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299324] = {
					["source"] = "Наигл-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["source"] = "Ирчона-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255141] = {
					["source"] = "Гелминатор-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Лекарстон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81262] = {
					["source"] = "Период цветения",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[286019] = {
					["source"] = "Жизньготова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270663] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Разрушитель",
					["npcID"] = 137622,
				},
				[79471] = {
					["source"] = "Дженевин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[255143] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19236] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55100] = {
					["encounterID"] = 1980,
					["source"] = "Мураби",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29305,
				},
				[59451] = {
					["encounterID"] = 1983,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202933] = {
					["source"] = "Karoma",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50138,
				},
				[4987] = {
					["source"] = "Метатрон-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80240] = {
					["encounterID"] = 1983,
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[310595] = {
					["source"] = "Токуинду-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48702] = {
					["source"] = "Фанатик из клана Укротителей драконов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26553,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Танзаки-Корольлич",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гонзаг",
					["npcID"] = 0,
				},
				[270670] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288074] = {
					["source"] = "Домофон-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259241] = {
					["source"] = "Священница из культа Торкали",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122883,
				},
				[5211] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120679] = {
					["source"] = "Бамбодар-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17253] = {
					["source"] = "Слономыфь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16354,
				},
				[272721] = {
					["source"] = "Кьюджин-Дракономор",
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
				[90479] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1045,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286031] = {
					["source"] = "Золтан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эсену",
					["npcID"] = 0,
				},
				[316744] = {
					["source"] = "Сальвадорин-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272723] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[172] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116841] = {
					["source"] = "Каменнобород-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314698] = {
					["source"] = "Вук'лаз Землелом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160970,
				},
				[48703] = {
					["source"] = "Фанатик из клана Укротителей драконов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26553,
				},
				[114282] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274774] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[11540] = {
					["source"] = "Копытомна-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76404] = {
					["source"] = "Багровый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39381,
				},
				[287062] = {
					["source"] = "Атю-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201405] = {
					["source"] = "Астериал-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214202] = {
					["source"] = "Дядяванняя-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Кристинакри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125801] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейла Стаффорд",
					["npcID"] = 142073,
				},
				[223929] = {
					["source"] = "Путный-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216251] = {
					["source"] = "Ловерт-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пангар-Галакронд",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[288091] = {
					["source"] = "Аганник-Разувий",
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
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295258] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Дзенни-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54719] = {
					["encounterID"] = 1983,
					["source"] = "Колосс Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29307,
				},
				[305497] = {
					["source"] = "Liazer-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290143] = {
					["source"] = "Бамбодар-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221885] = {
					["source"] = "Redsyndrøm-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Мармазепа-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115310] = {
					["encounterID"] = 1978,
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Muneer-Draenor",
					["npcID"] = 0,
				},
				[221887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Талрион",
					["npcID"] = 0,
				},
				[273768] = {
					["source"] = "Целитель из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154499,
				},
				[55104] = {
					["encounterID"] = 1980,
					["source"] = "Мураби",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29305,
				},
				[273769] = {
					["source"] = "Целитель из шайки Скитальцев Пустыни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154499,
				},
				[59455] = {
					["type"] = "DEBUFF",
					["source"] = "Колосс Драккари",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29307,
				},
				[59839] = {
					["encounterID"] = 1978,
					["source"] = "Слад'ран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29304,
				},
				[19750] = {
					["source"] = "Квакеру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279913] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76409] = {
					["type"] = "DEBUFF",
					["source"] = "Багровый страж",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39381,
				},
				[298343] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Коровяк-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301418] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Механизированный паук",
					["npcID"] = 154448,
				},
				[55233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59840] = {
					["encounterID"] = 1978,
					["source"] = "Слад'ран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29304,
				},
				[314729] = {
					["source"] = "Акир-скарабей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161541,
				},
				[116849] = {
					["encounterID"] = 1981,
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[56641] = {
					["source"] = "Локситан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Лосебау-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49091] = {
					["source"] = "Имирьярский гарпунщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26692,
				},
				[15572] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Констебль Эстли",
					["npcID"] = 142371,
				},
				[11541] = {
					["source"] = "Молдилорд-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304496] = {
					["source"] = "Защитник экспедиции",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152158,
				},
				[265594] = {
					["source"] = "Темен'рикс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134717,
				},
				[54850] = {
					["encounterID"] = 1983,
					["source"] = "Колосс Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29307,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[55106] = {
					["encounterID"] = 1980,
					["source"] = "Мураби",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29305,
				},
				[115315] = {
					["source"] = "Ичиги-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203981] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["source"] = "Ланселька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32612] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49092] = {
					["source"] = "Имирьярский гарпунщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26692,
				},
				[315763] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213708] = {
					["source"] = "Hunako-Twilight'sHammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274814] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295290] = {
					["source"] = "Сайхопати",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308599] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лизаиветта-Дракономор",
					["npcID"] = 0,
				},
				[68992] = {
					["source"] = "Шурупавёрт-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59330] = {
					["encounterID"] = 2029,
					["source"] = "Скади Безжалостный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26693,
				},
				[214222] = {
					["source"] = "Фиббоначи-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59842] = {
					["encounterID"] = 1978,
					["source"] = "Слад'ран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29304,
				},
				[124275] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261827] = {
					["source"] = "Порабощенная проклятием стражница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131530,
				},
				[76415] = {
					["type"] = "BUFF",
					["source"] = "Сумеречный головорез",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40448,
				},
				[44614] = {
					["source"] = "Böh-Alleria",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261828] = {
					["source"] = "Порабощенная проклятием стражница",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131530,
				},
				[201427] = {
					["source"] = "Tréacle-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205523] = {
					["source"] = "Нэйлроу-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31589] = {
					["source"] = "Слонозебра-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257223] = {
					["source"] = "Древоклык-охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129624,
				},
				[59331] = {
					["encounterID"] = 2029,
					["source"] = "Скади Безжалостный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26693,
				},
				[13877] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265613] = {
					["source"] = "Темен'рикс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134717,
				},
				[316801] = {
					["source"] = "Mëntëfrïa-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Антисерж",
					["npcID"] = 0,
				},
				[257225] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Древоклык-охотник",
					["npcID"] = 129624,
				},
				[5116] = {
					["source"] = "Lefux-Varimathras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Violetchachk-Balnazzar",
					["npcID"] = 0,
				},
				[119415] = {
					["source"] = "Даэера-Гордунни",
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
				[76418] = {
					["source"] = "Сумеречный ткач тени",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39954,
				},
				[5308] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68996] = {
					["source"] = "Фляйвольф-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["source"] = "Трухляк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141970,
				},
				[277904] = {
					["source"] = "Мифруил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295310] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[348] = {
					["encounterID"] = 1978,
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Synystertea-Kazzak",
					["npcID"] = 0,
				},
				[36554] = {
					["source"] = "Schitatak-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Тотем конденсации",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аберрация-Ревущийфьорд",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Астериал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235219] = {
					["source"] = "Xuity-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Танзаки-Корольлич",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5740] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294290] = {
					["source"] = "Переработчик отходов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144293,
				},
				[116858] = {
					["encounterID"] = 1978,
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275863] = {
					["source"] = "Адлеррог",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["source"] = "Данатиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51271] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Кондопрайд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297365] = {
					["source"] = "Россвуд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[205021] = {
					["source"] = "Моритц",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313746] = {
					["source"] = "Акир-жнец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154365,
				},
				[313747] = {
					["source"] = "Акир-жнец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154365,
				},
				[192225] = {
					["source"] = "Эйнри-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45129] = {
					["source"] = "Дженевин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[86659] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306583] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129657] = {
					["source"] = "Ониксовый боевой змей",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153208,
				},
				[304537] = {
					["source"] = "Защитник экспедиции",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152158,
				},
				[59334] = {
					["encounterID"] = 2029,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196834] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["source"] = "Стэфания-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304539] = {
					["source"] = "Защитник Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151828,
				},
				[208608] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Rizku-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[76679] = {
					["source"] = "Багровый полководец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39626,
				},
				[316826] = {
					["encounterID"] = 2257,
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[212704] = {
					["source"] = "Бамбодар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6668] = {
					["source"] = "Обора",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259285] = {
					["source"] = "Væly-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Милаяевочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[421] = {
					["source"] = "Стэфания-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304544] = {
					["source"] = "Сандк-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59079] = {
					["source"] = "Смертелюб из клана Укротителей драконов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26550,
				},
				[19434] = {
					["source"] = "Локситан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232670] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310690] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309667] = {
					["source"] = "Ониксовый боевой змей",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153208,
				},
				[210660] = {
					["source"] = "Милаяевочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292264] = {
					["encounterID"] = 2260,
					["source"] = "\"Омега-крушитель\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144249,
				},
				[313763] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[299431] = {
					["source"] = "Неисправный утильхаунд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151301,
				},
				[316835] = {
					["type"] = "DEBUFF",
					["source"] = "Искаженный отросток",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74634] = {
					["encounterID"] = 1051,
					["source"] = "Генерал Умбрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39625,
				},
				[295337] = {
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80009] = {
					["source"] = "Разведчик из шайки Скитальцев Пустыни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154421,
				},
				[292267] = {
					["type"] = "DEBUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[317861] = {
					["source"] = "Гровиан-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295339] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272817] = {
					["source"] = "Аккуратность",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309673] = {
					["source"] = "Донт-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298412] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тейелкер-Галакронд",
					["npcID"] = 0,
				},
				[309674] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[278962] = {
					["source"] = "Риллт-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298414] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[295343] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mdmaster-Stormreaver",
					["npcID"] = 0,
				},
				[309676] = {
					["source"] = "Донт-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298415] = {
					["source"] = "Бедняяга-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22570] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298416] = {
					["source"] = "Сэртомасс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256222] = {
					["source"] = "Горный козел",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134349,
				},
				[11479] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нихууль-Дракономор",
					["npcID"] = 0,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[217832] = {
					["source"] = "Anorn-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[173299] = {
					["source"] = "Чумной сарыч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142435,
				},
				[277943] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59081] = {
					["source"] = "Ясновидица клана Укротителей драконов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26554,
				},
				[46924] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294324] = {
					["source"] = "Переработчик отходов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144293,
				},
				[63560] = {
					["source"] = "Душуужа-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[498] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["source"] = "Андариел",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Роббигуд-Дракономор",
					["npcID"] = 0,
				},
				[299445] = {
					["source"] = "Всепоо-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314802] = {
					["source"] = "Порабощенный Скиталец Пустыни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154369,
				},
				[295354] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117892] = {
					["source"] = "Соленоплавниковый пловец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126682,
				},
				[59082] = {
					["source"] = "Ясновидица клана Укротителей драконов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26554,
				},
				[236776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wiretapped-Kazzak",
					["npcID"] = 0,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Толаф",
					["npcID"] = 0,
				},
				[256228] = {
					["source"] = "Своенравный козел",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139796,
				},
				[556] = {
					["source"] = "Лсдкек-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212207] = {
					["source"] = "Порабощенный пеплолапый медведь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130085,
				},
				[298429] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бруталхард",
					["npcID"] = 0,
				},
				[145152] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295359] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151660,
				},
				[298431] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[90764] = {
					["type"] = "DEBUFF",
					["source"] = "Начальник кузни Тронг",
					["encounterID"] = 1050,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40177,
				},
				[161533] = {
					["source"] = "Газ'ралка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129954,
				},
				[586] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["source"] = "Ыыс-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204019] = {
					["source"] = "Окаяный-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2367] = {
					["source"] = "Лайкина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258278] = {
					["source"] = "Туттамхамло-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Данатиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fulguroth-Archimonde",
					["npcID"] = 0,
				},
				[308673] = {
					["type"] = "DEBUFF",
					["source"] = "Око хаоса",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158315,
				},
				[51533] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243435] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303556] = {
					["source"] = "Злотопызло-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295367] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256745] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьяр-Дракономор",
					["npcID"] = 0,
				},
				[253162] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Макс",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281036] = {
					["source"] = "Бамбодар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298440] = {
					["source"] = "Стивушка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315845] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5277] = {
					["source"] = "Lilduck-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101260] = {
					["source"] = "Гадалка ярмарки Новолуния",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 54334,
				},
				[54861] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вымогатель из банды Резчиков",
					["npcID"] = 144213,
				},
				[25771] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294349] = {
					["source"] = "Живые отходы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144301,
				},
				[295373] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[303564] = {
					["source"] = "Bradoc-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309708] = {
					["source"] = "Заступник из клана Барук",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153099,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аберрация-Ревущийфьорд",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27243] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[264667] = {
					["source"] = "Гончая недр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 46910,
				},
				[118922] = {
					["source"] = "Потекунчик-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31850] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47568] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вилкора-СвежевательДуш",
					["npcID"] = 0,
				},
				[275931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Galrond-TarrenMill",
					["npcID"] = 0,
				},
				[64844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Силедниз-СвежевательДуш",
					["npcID"] = 0,
				},
				[76693] = {
					["type"] = "BUFF",
					["source"] = "Усиливающее пламя",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 41045,
				},
				[187650] = {
					["source"] = "Suicun-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57294] = {
					["source"] = "Ачтовыдумали",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295384] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[772] = {
					["source"] = "Трейдар-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286171] = {
					["source"] = "Baszomaszad-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["source"] = "Böh-Alleria",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["source"] = "Глерол-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301531] = {
					["source"] = "Трития-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ярген",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[298461] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Киленда-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312794] = {
					["source"] = "Варизар-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фиранэль-Дракономор",
					["npcID"] = 0,
				},
				[312795] = {
					["source"] = "Карательный-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147728] = {
					["source"] = "Галёркатян",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156430] = {
					["type"] = "BUFF",
					["source"] = "Танзаки-Корольлич",
					["encounterID"] = 1978,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мунаара",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166669] = {
					["source"] = "Фармовщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ярген",
					["npcID"] = 0,
				},
				[304612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ярген",
					["npcID"] = 0,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Беттара-Голдринн",
					["npcID"] = 0,
				},
				[61391] = {
					["encounterID"] = 2029,
					["source"] = "Алдун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147732] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106898] = {
					["source"] = "Упырье-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Айринис-Азурегос",
					["npcID"] = 0,
				},
				[89751] = {
					["source"] = "Джузинул",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[55633] = {
					["type"] = "BUFF",
					["source"] = "Голем Драккари",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29832,
				},
				[304619] = {
					["source"] = "Норрон",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56785] = {
					["source"] = "Увалень из Плети",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26555,
				},
				[279028] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156438] = {
					["source"] = "Жырныйлис-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Алексамар-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50259] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лансейлот",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Джузинул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[261886] = {
					["source"] = "Ядокровый скорпид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162380,
				},
				[262652] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298485] = {
					["source"] = "Хламометатель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151660,
				},
				[213771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1022] = {
					["type"] = "BUFF",
					["source"] = "Аргол-Голдринн",
					["encounterID"] = 2028,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стэди",
					["npcID"] = 0,
				},
				[270846] = {
					["source"] = "Ядокровый скорпид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162380,
				},
				[1044] = {
					["source"] = "Метатрон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58450] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299514] = {
					["source"] = "Шкет-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Улдскул-Дракономор",
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
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157980] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292350] = {
					["source"] = "Владыка Матиас Шоу",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158157,
				},
				[257284] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Leatherhead-Stormrage",
					["npcID"] = 0,
				},
				[299517] = {
					["source"] = "Сэртомасс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76703] = {
					["type"] = "DEBUFF",
					["source"] = "Порабощенный гронн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40166,
				},
				[203538] = {
					["source"] = "Аэнкиэль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Аэнкиэль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289283] = {
					["source"] = "Коровяк-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[110744] = {
					["source"] = "Ирчона-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292359] = {
					["source"] = "Какой-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Калинтай",
					["npcID"] = 0,
				},
				[303621] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Inagan-Shadowsong",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Друскар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299527] = {
					["source"] = "Хваньхвинь-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Друдрудру-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278029] = {
					["source"] = "\"Антивредитель II\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137649,
				},
				[308742] = {
					["source"] = "Халфдан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вонсамбди",
					["npcID"] = 0,
				},
				[29358] = {
					["source"] = "Ячсмитф-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Джеркомуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309768] = {
					["source"] = "Капля анимы",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155950,
				},
				[199450] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75683] = {
					["type"] = "BUFF",
					["source"] = "Леди Наз'жар",
					["encounterID"] = 1045,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40586,
				},
				[298510] = {
					["source"] = "Акир-острожал",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154354,
				},
				[267798] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бруталхард",
					["npcID"] = 0,
				},
				[304654] = {
					["source"] = "Сандк-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197916] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nelzar-Magtheridon",
					["npcID"] = 0,
				},
				[315916] = {
					["source"] = "Повелитель улья Наззекс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162181,
				},
				[46168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лекарстон",
					["npcID"] = 0,
				},
				[298514] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299538] = {
					["source"] = "Нэддэн-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[309776] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[278040] = {
					["source"] = "\"Антивредитель II\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137649,
				},
				[315919] = {
					["source"] = "Повелитель улья Наззекс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162181,
				},
				[304658] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Репейчик",
					["npcID"] = 0,
				},
				[299540] = {
					["source"] = "Аньхао-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23920] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[299541] = {
					["source"] = "Аим-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Толпауточек-Гордунни",
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
				[304662] = {
					["source"] = "Айлейла-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пандаквин",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мунсун-Галакронд",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[289308] = {
					["source"] = "Меранна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58966] = {
					["source"] = "Боевой наездник Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29836,
				},
				[290333] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аврорабореал",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Головорез из братства Стальных Волн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138170,
				},
				[193315] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Luvoux-Draenor",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306715] = {
					["source"] = "Огнебородов-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76711] = {
					["source"] = "Сумеречный обманщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40167,
				},
				[157997] = {
					["source"] = "Силивия-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203554] = {
					["source"] = "Tólò-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бьянкаделрио",
					["npcID"] = 0,
				},
				[299551] = {
					["source"] = "Тощий-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272934] = {
					["source"] = "Дзенни-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1680] = {
					["source"] = "Nabaral-DieAldor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58967] = {
					["source"] = "Боевой наездник Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29836,
				},
				[254232] = {
					["source"] = "Yitte-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205604] = {
					["source"] = "Wildeman-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289318] = {
					["source"] = "Анафирэль-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263725] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[146739] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278058] = {
					["source"] = "\"Антивредитель II\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137649,
				},
				[272940] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Двигель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53209] = {
					["source"] = "Коксофея-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233759] = {
					["source"] = "Yingy-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145205] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272945] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268852] = {
					["source"] = "Керилченса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[271924] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76715] = {
					["source"] = "Сумеречный обманщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40167,
				},
				[268854] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Николяшечка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278069] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Хтограт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75692] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1049,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Belgwen-Mazrigos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208683] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Мавроде-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[208684] = {
					["source"] = "Dutchhuntr-Darkspear",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290360] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[260384] = {
					["source"] = "Фуся-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264767] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дроивер-Гордунни",
					["npcID"] = 0,
				},
				[32752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нуминоклус",
					["npcID"] = 0,
				},
				[8220] = {
					["source"] = "Зозз-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74670] = {
					["encounterID"] = 1051,
					["source"] = "Генерал Умбрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39625,
				},
				[275006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[75694] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1049,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2120] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306745] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157166,
				},
				[271938] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гнездо",
					["npcID"] = 138172,
				},
				[247078] = {
					["source"] = "Целитель из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154499,
				},
				[302651] = {
					["source"] = "Хеллися-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[316985] = {
					["source"] = "Ильбанчик-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[273988] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[146240] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Имиральди",
					["npcID"] = 0,
				},
				[193333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бэдкарма",
					["npcID"] = 0,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вамирио-СвежевательДуш",
					["npcID"] = 0,
				},
				[203059] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кэмплион-Дракономор",
					["npcID"] = 0,
				},
				[290371] = {
					["source"] = "Травокурчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["source"] = "Мелтер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290372] = {
					["source"] = "Вербейник-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kraent-Silvermoon",
					["npcID"] = 0,
				},
				[204596] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272970] = {
					["source"] = "Моритц",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300612] = {
					["source"] = "Меранна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[269900] = {
					["source"] = "Мик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138870,
				},
				[268877] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76721] = {
					["source"] = "Часовой Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40577,
				},
				[122278] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["source"] = "Ирчона-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204598] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303687] = {
					["source"] = "Боггак Черепокол",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151308,
				},
				[5215] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58972] = {
					["source"] = "Огнепряд Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29822,
				},
				[187708] = {
					["source"] = "Трейян-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269906] = {
					["source"] = "Эрни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138871,
				},
				[34914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Маккровь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[5487] = {
					["source"] = "Выцен-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sprutluderr-Quel'Thalas",
					["npcID"] = 0,
				},
				[313931] = {
					["source"] = "Голем анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158764,
				},
				[212792] = {
					["source"] = "Алинфиска-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Миталина-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60106] = {
					["type"] = "BUFF",
					["source"] = "Гаабриэл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75809] = {
					["encounterID"] = 1049,
					["source"] = "Эрудакс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40484,
				},
				[280149] = {
					["source"] = "Танкх-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Mellon-Quel'Thalas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33891] = {
					["source"] = "Tólò-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75520] = {
					["encounterID"] = 1049,
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40600,
				},
				[75664] = {
					["encounterID"] = 1049,
					["source"] = "Эрудакс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40484,
				},
				[75755] = {
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39392,
				},
				[54878] = {
					["encounterID"] = 1983,
					["source"] = "Элементаль Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29573,
				},
				[279187] = {
					["type"] = "BUFF",
					["source"] = "Энмис",
					["encounterID"] = 1048,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[196414] = {
					["type"] = "DEBUFF",
					["source"] = "Бездносветка-СвежевательДуш",
					["encounterID"] = 1978,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[304722] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90950] = {
					["encounterID"] = 1048,
					["source"] = "Валиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40320,
				},
				[306770] = {
					["source"] = "Порабощенный оружейник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156641,
				},
				[190784] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154953] = {
					["source"] = "Lilduck-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216890] = {
					["source"] = "Синегард-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75317] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1048,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75245] = {
					["encounterID"] = 1048,
					["source"] = "Драгх Горячий Мрак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40319,
				},
				[281178] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302677] = {
					["source"] = "Préarios-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76303] = {
					["type"] = "BUFF",
					["source"] = "Драгх Горячий Мрак",
					["encounterID"] = 1048,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40319,
				},
				[312915] = {
					["source"] = "Мелтер-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268894] = {
					["source"] = "Холимейс-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118699] = {
					["source"] = "Azgalor-BurningBlade",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76797] = {
					["source"] = "Перерожденный водоплеск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40273,
				},
				[49376] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76578] = {
					["source"] = "Сумеречный призыватель грома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40270,
				},
				[76766] = {
					["source"] = "Сумеречный ловец огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39870,
				},
				[76779] = {
					["source"] = "Перерожденный камнелом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40272,
				},
				[90846] = {
					["source"] = "Порабощенный горящий уголь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39892,
				},
				[76817] = {
					["source"] = "Сумеречный дракон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41095,
				},
				[76816] = {
					["source"] = "Сумеречный призыватель драконов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39873,
				},
				[90880] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76792] = {
					["source"] = "Перерожденный камнелом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40272,
				},
				[76794] = {
					["source"] = "Перерожденный водоплеск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40273,
				},
				[260402] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[76340] = {
					["type"] = "BUFF",
					["source"] = "Рожденный в лазури провидец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40291,
				},
				[268898] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76370] = {
					["source"] = "Рожденный в лазури провидец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40291,
				},
				[275041] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76411] = {
					["type"] = "BUFF",
					["source"] = "Сумеречный головорез",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40448,
				},
				[268899] = {
					["source"] = "Тоталлд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47585] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275042] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76369] = {
					["source"] = "Рожденный в лазури провидец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40291,
				},
				[74908] = {
					["type"] = "BUFF",
					["source"] = "Начальник кузни Тронг",
					["encounterID"] = 1050,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40177,
				},
				[212799] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74976] = {
					["encounterID"] = 1050,
					["source"] = "Начальник кузни Тронг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40177,
				},
				[312922] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268901] = {
					["source"] = "Алияатрейдес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75056] = {
					["encounterID"] = 1050,
					["source"] = "Начальник кузни Тронг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40177,
				},
				[75000] = {
					["encounterID"] = 1050,
					["source"] = "Начальник кузни Тронг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40177,
				},
				[212800] = {
					["source"] = "Doomyak-Genjuros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75007] = {
					["type"] = "BUFF",
					["source"] = "Начальник кузни Тронг",
					["encounterID"] = 1050,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40177,
				},
				[132404] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313948] = {
					["source"] = "Тэгуки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Попадопулос-Азурегос",
					["npcID"] = 0,
				},
				[252215] = {
					["source"] = "Кровавая сектантка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138274,
				},
				[317020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лиюлинь",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76685] = {
					["source"] = "Багровый полководец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39626,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Соратник-кузнец - Альянс",
					["npcID"] = 88403,
				},
				[3408] = {
					["source"] = "Фуффика-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2008] = {
					["source"] = "Энмис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Честерский",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74837] = {
					["type"] = "DEBUFF",
					["source"] = "Зловредный трогг",
					["encounterID"] = 1051,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39984,
				},
				[273104] = {
					["type"] = "BUFF",
					["source"] = "Рейтардиа-Гордунни",
					["encounterID"] = 1051,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126892] = {
					["source"] = "Визусинистра-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303714] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159821,
				},
				[19574] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268907] = {
					["source"] = "Ддося",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74846] = {
					["encounterID"] = 1051,
					["source"] = "Генерал Умбрисс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39625,
				},
				[74699] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 1051,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39984,
				},
				[207684] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74039] = {
					["source"] = "Старый красный дракон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39294,
				},
				[299513] = {
					["source"] = "Линтрия-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76729] = {
					["type"] = "BUFF",
					["source"] = "Сумеречный мечник",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 41073,
				},
				[280170] = {
					["source"] = "Suicun-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268909] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132951] = {
					["source"] = "Капля анимы",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155950,
				},
				[76720] = {
					["source"] = "Сумеречный рассекатель туч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39962,
				},
				[76596] = {
					["source"] = "Сумеречный демиург",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39890,
				},
				[76727] = {
					["source"] = "Сумеречный мечник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41073,
				},
				[278124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[287338] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Тотем оков земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[273006] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["source"] = "Огнебородов-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90490] = {
					["source"] = "Порабощенный дух воды",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39961,
				},
				[76314] = {
					["type"] = "BUFF",
					["source"] = "Багровый провидец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39405,
				},
				[313957] = {
					["source"] = "Повелитель улья Наззекс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162181,
				},
				[298601] = {
					["source"] = "Дастриада",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287340] = {
					["source"] = "Одеялка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80313] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76394] = {
					["source"] = "Рожденный в лазури страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39854,
				},
				[76332] = {
					["source"] = "Багровый провидец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39405,
				},
				[93622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[75096] = {
					["source"] = "Сумеречный призыватель грома",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40270,
				},
				[298603] = {
					["source"] = "Шалери-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кландсем-Дракономор",
					["npcID"] = 0,
				},
				[76151] = {
					["type"] = "BUFF",
					["source"] = "Сумеречный обманщик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40167,
				},
				[76507] = {
					["source"] = "Пещерный трогг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39450,
				},
				[298604] = {
					["source"] = "Баздал-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76133] = {
					["encounterID"] = 1047,
					["source"] = "Нептулон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40792,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лмд",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Фуффика-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Медодав",
					["npcID"] = 154154,
				},
				[279154] = {
					["type"] = "BUFF",
					["source"] = "Хахоо",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["source"] = "Жесткаридзе-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гулрогг-Дракономор",
					["npcID"] = 0,
				},
				[298606] = {
					["source"] = "Розалли-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83971] = {
					["type"] = "DEBUFF",
					["source"] = "Гнилевый монстр",
					["encounterID"] = 1047,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 44841,
				},
				[298607] = {
					["source"] = "Негошенька",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316011] = {
					["source"] = "Акир-поработитель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162164,
				},
				[284275] = {
					["source"] = "Августиния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66238] = {
					["source"] = "Пестония-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неранол",
					["npcID"] = 0,
				},
				[307822] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288371] = {
					["source"] = "Ldl-Quel'Thalas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83914] = {
					["encounterID"] = 1047,
					["source"] = "Злобный бичеватель разума",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 44715,
				},
				[278134] = {
					["source"] = "Найскрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76100] = {
					["type"] = "BUFF",
					["source"] = "Командир Улток",
					["encounterID"] = 1044,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40765,
				},
				[284277] = {
					["source"] = "Василкаэльф",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293491] = {
					["source"] = "Dønâ-MarécagedeZangar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76732] = {
					["encounterID"] = 2374,
					["source"] = "Келси Стализвон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156524,
				},
				[97463] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202425] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76094] = {
					["encounterID"] = 1044,
					["source"] = "Командир Улток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40765,
				},
				[298611] = {
					["source"] = "Зизигибс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[76047] = {
					["encounterID"] = 1044,
					["source"] = "Командир Улток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40765,
				},
				[205644] = {
					["source"] = "Древень",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103822,
				},
				[80564] = {
					["type"] = "DEBUFF",
					["source"] = "Леди Наз'жар",
					["encounterID"] = 1045,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40586,
				},
				[202573] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[170325] = {
					["source"] = "Сиравон Доминатрикс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136413,
				},
				[76001] = {
					["encounterID"] = 1045,
					["source"] = "Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40586,
				},
				[281209] = {
					["source"] = "Натрия-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75907] = {
					["encounterID"] = 1045,
					["source"] = "Отважный страж Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40633,
				},
				[205648] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75722] = {
					["encounterID"] = 1045,
					["source"] = "Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40586,
				},
				[318065] = {
					["source"] = "Хэнжик-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202574] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207693] = {
					["source"] = "Долланатра-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75992] = {
					["source"] = "Ведьма бурь Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40634,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Тотем исцеляющего потока",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3527,
				},
				[8222] = {
					["source"] = "Эмберштормс-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75813] = {
					["source"] = "Ведьма бурь Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40634,
				},
				[76820] = {
					["source"] = "Врачеватель душ Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 41096,
				},
				[316944] = {
					["source"] = "Фроствуд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77616] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elnarcz-Drak'thul",
					["npcID"] = 0,
				},
				[283106] = {
					["type"] = "BUFF",
					["source"] = "Валира Сангвинар",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156837,
				},
				[259500] = {
					["type"] = "DEBUFF",
					["source"] = "Повар из племени Грязного Камня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127150,
				},
				[259430] = {
					["source"] = "Колючаяя-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[253112] = {
					["source"] = "Стивр-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197625] = {
					["type"] = "BUFF",
					["source"] = "Теньтравы-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298618] = {
					["source"] = "Даркромантик-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58978] = {
					["source"] = "Пикейщик Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29819,
				},
				[298859] = {
					["source"] = "Дэтрия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281215] = {
					["source"] = "Судьйа-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[305945] = {
					["source"] = "Алекснож-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вамирио-СвежевательДуш",
					["npcID"] = 0,
				},
				[278145] = {
					["source"] = "Клачек-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274447] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Kátîè-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298621] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298620] = {
					["source"] = "Мухгор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304037] = {
					["source"] = "Бедняяга-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[316026] = {
					["source"] = "Могильщики",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162150,
				},
				[255103] = {
					["source"] = "Тиандра-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277124] = {
					["source"] = "Радипитя",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298623] = {
					["source"] = "Торадиэль-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73920] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299322] = {
					["source"] = "Мэгродор-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299539] = {
					["source"] = "Пахтусёнок-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278149] = {
					["source"] = "Пойменный мустанг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142455,
				},
				[89157] = {
					["source"] = "Хозтава-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74589] = {
					["source"] = "Стиилл-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["source"] = "Tréacle-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298287] = {
					["source"] = "Левкофейа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284293] = {
					["source"] = "Стоунболс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152262] = {
					["source"] = "Арналадон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Этикеша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205022] = {
					["source"] = "Синкривер-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297961] = {
					["source"] = "Песцо-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286342] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297965] = {
					["source"] = "Хваньхвинь-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279152] = {
					["source"] = "Клыкоф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воржей",
					["npcID"] = 14822,
				},
				[193357] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299516] = {
					["source"] = "Брокенхом-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167971] = {
					["source"] = "\"Блескотрон-7000\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[251143] = {
					["source"] = "Трейян-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264106] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311309] = {
					["source"] = "Брагентор-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[98444] = {
					["source"] = "Лордаирон-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[302460] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316034] = {
					["source"] = "Пожиратель трупов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162147,
				},
				[126389] = {
					["source"] = "Каменнобород-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77761] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308669] = {
					["type"] = "BUFF",
					["source"] = "Око хаоса",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158315,
				},
				[280204] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204490] = {
					["source"] = "Killerfrost-Frostwhisper",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рельда",
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
					["source"] = "Мунсун-Галакронд",
					["npcID"] = 0,
				},
				[305799] = {
					["source"] = "Келист-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308265] = {
					["source"] = "Алькс'ков Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152809,
				},
				[16953] = {
					["source"] = "Belgwen-Mazrigos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276111] = {
					["source"] = "Дакту",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Inagan-Shadowsong",
					["npcID"] = 0,
				},
				[102401] = {
					["source"] = "Томирес-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["source"] = "Карательный-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[77762] = {
					["source"] = "Стэфания-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298025] = {
					["source"] = "Осведомительница ШРУ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156795,
				},
				[230935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ёшико-Борейскаятундра",
					["npcID"] = 0,
				},
				[115385] = {
					["source"] = "Донный охотник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133285,
				},
				[286351] = {
					["source"] = "Baszomaszad-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316510] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311456] = {
					["source"] = "Мастер клинка Теренсон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156949,
				},
				[283655] = {
					["source"] = "Валира Сангвинар",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156837,
				},
				[48103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Харондор",
					["npcID"] = 0,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Антуэль",
					["npcID"] = 0,
				},
				[317065] = {
					["source"] = "Клизмус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295838] = {
					["source"] = "Böh-Alleria",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306125] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156837,
				},
				[299662] = {
					["source"] = "Галдхельдир-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294884] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неисправный хламобосс",
					["npcID"] = 151683,
				},
				[191837] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309671] = {
					["type"] = "BUFF",
					["source"] = "Терум Подземная Кузня",
					["encounterID"] = 2374,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156577,
				},
				[205146] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280212] = {
					["source"] = "Warrgamma-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292240] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308432] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[299664] = {
					["source"] = "Данатиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["source"] = "Yingy-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308308] = {
					["source"] = "Падший пронзатель сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158092,
				},
				[267171] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faeblade-ArgentDawn",
					["npcID"] = 0,
				},
				[276026] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Muneer-Draenor",
					["npcID"] = 0,
				},
				[58981] = {
					["source"] = "Целитель Драккари",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29826,
				},
				[268194] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300691] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Ирчона-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291295] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255094] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298928] = {
					["source"] = "Бычочегс-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32182] = {
					["type"] = "BUFF",
					["source"] = "Сваровски-СтражСмерти",
					["encounterID"] = 2028,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126032] = {
					["source"] = "Кровоклык",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156083,
				},
				[279194] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300693] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224869] = {
					["source"] = "Марвэл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[17563] = {
					["source"] = "Тинера",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114108] = {
					["source"] = "Саньям-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Натсуюки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[298442] = {
					["source"] = "Маодарк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263840] = {
					["source"] = "Mervi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 82308,
				},
				[294161] = {
					["source"] = "Урсол-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Böh-Alleria",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211805] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156774] = {
					["source"] = "Маг Оплота Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150122,
				},
				[311188] = {
					["source"] = "Толруд-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Тюхэ-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Разлом",
					["npcID"] = 76946,
				},
				[303570] = {
					["source"] = "Bradoc-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Coolhaidar-Turalyon",
					["npcID"] = 0,
				},
				[198111] = {
					["source"] = "Teunor-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["source"] = "Квакеру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заряженный микробот",
					["npcID"] = 151668,
				},
				[1715] = {
					["source"] = "Газкон-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Икрид",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Карси-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109248] = {
					["source"] = "Hià-Elune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119996] = {
					["source"] = "Куома-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303568] = {
					["source"] = "Bradoc-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285344] = {
					["encounterID"] = 2257,
					["source"] = "\"Платиновый лупцеватор\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144244,
				},
				[299510] = {
					["source"] = "Разбийнык-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299317] = {
					["source"] = "Ахиллес-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280634] = {
					["source"] = "Санблей-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53480] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зяяма-СвежевательДуш",
					["npcID"] = 0,
				},
				[290464] = {
					["source"] = "Крэйзисиннер-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213241] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вилкора-СвежевательДуш",
					["npcID"] = 0,
				},
				[2782] = {
					["source"] = "Тайфунсфай-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277156] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141782,
				},
				[305123] = {
					["source"] = "Саквейк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304798] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нестабильный облученный элементаль",
					["npcID"] = 150825,
				},
				[304540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Репейчик",
					["npcID"] = 0,
				},
				[280210] = {
					["source"] = "Когмэйн-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73500] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Карелька-Дракономор",
					["npcID"] = 0,
				},
				[23736] = {
					["source"] = "Воржей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14822,
				},
				[233395] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[290467] = {
					["source"] = "Темныйму-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48743] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[298279] = {
					["source"] = "Жизниболь-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255319] = {
					["source"] = "Артеимида-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крабмагнат",
					["npcID"] = 0,
				},
				[22355] = {
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153897,
				},
				[264778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фиранэль-Дракономор",
					["npcID"] = 0,
				},
				[27576] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Вантдк-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297941] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213858] = {
					["source"] = "Мегамегаогр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115450] = {
					["source"] = "Мурмурашки",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204362] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115078] = {
					["source"] = "Юна-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13168] = {
					["source"] = "Укрепленный \"КПХ-35/МГ\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155288,
				},
				[269996] = {
					["source"] = "Бандит из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135771,
				},
				[303780] = {
					["source"] = "Рёнайдх-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202914] = {
					["source"] = "Lefux-Varimathras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 0,
				},
				[294567] = {
					["source"] = "Гробулия-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Inagan-Shadowsong",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301734] = {
					["source"] = "Охранник Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155110,
				},
				[280187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Inagan-Shadowsong",
					["npcID"] = 0,
				},
				[185565] = {
					["source"] = "Красиваярога-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209967] = {
					["source"] = "Ужасный василиск",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[287360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Badassbadger-Wildhammer",
					["npcID"] = 0,
				},
				[295362] = {
					["source"] = "Эндофстори-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нифигасик",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "Медведь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 3810,
				},
				[278190] = {
					["source"] = "Чумной сарыч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142435,
				},
				[311390] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Инвиолат-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271371] = {
					["source"] = "Перемалыватель из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151663,
				},
				[58971] = {
					["source"] = "Огнепряд Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29822,
				},
				[58984] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300277] = {
					["source"] = "Генжи-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Сораака-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259419] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оорта-Дракономор",
					["npcID"] = 0,
				},
				[51690] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58975] = {
					["encounterID"] = 1983,
					["source"] = "Голем Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29832,
				},
				[199786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Альштам-Голдринн",
					["npcID"] = 0,
				},
				[134522] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266933] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Головорез дома Штормсонгов",
					["npcID"] = 130641,
				},
				[258908] = {
					["source"] = "Зара'тик-налетчик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158052,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Толпауточек-Гордунни",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[113858] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316768] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236299] = {
					["source"] = "Слонозебра-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236298] = {
					["source"] = "Слонозебра-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26745] = {
					["source"] = "Вулфар-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kraent-Silvermoon",
					["npcID"] = 0,
				},
				[147833] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["encounterID"] = 2029,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256350] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Завролиск-камнекус",
					["npcID"] = 141641,
				},
				[179057] = {
					["source"] = "Митиффа-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Lilduck-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250208] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Солекаменная черепаха",
					["npcID"] = 130160,
				},
				[304816] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274104] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314572] = {
					["source"] = "Айсбит-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263867] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буся",
					["npcID"] = 11673,
				},
				[59241] = {
					["source"] = "Имирьярский плотоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26670,
				},
				[102342] = {
					["encounterID"] = 2258,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24711] = {
					["source"] = "Кравуз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198813] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264892] = {
					["source"] = "Посланница племени Моходеров",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130103,
				},
				[302771] = {
					["source"] = "Энрой-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198819] = {
					["source"] = "Трейдар-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276154] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лютъэр-Гордунни",
					["npcID"] = 0,
				},
				[48108] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Кларазеткин-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Galrond-TarrenMill",
					["npcID"] = 0,
				},
				[277179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бруталхард",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Буфин-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113860] = {
					["source"] = "Истаниил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Тедельмид",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225788] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284307] = {
					["source"] = "Святокрит-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Выдралетяга-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["encounterID"] = 2257,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277181] = {
					["source"] = "Трейдар-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306870] = {
					["source"] = "Налетчик из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153094,
				},
				[21169] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кондопрайд-Гордунни",
					["npcID"] = 0,
				},
				[314585] = {
					["source"] = "Лапидарная-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289467] = {
					["source"] = "Флайвос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194594] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fulguroth-Archimonde",
					["npcID"] = 0,
				},
				[303800] = {
					["source"] = "Воздушный подавитель ОУ-8",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154442,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257879] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Перенастроенный уборочный голем",
					["npcID"] = 130131,
				},
				[301367] = {
					["source"] = "Когалл-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256355] = {
					["source"] = "Завролиск-костеглод",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151998,
				},
				[313015] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Délé-KirinTor",
					["npcID"] = 0,
				},
				[271374] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[306873] = {
					["source"] = "Налетчик из клана Цзань-Тень",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153094,
				},
				[408] = {
					["source"] = "Schitatak-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304826] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Загрязненная жижа",
					["npcID"] = 150500,
				},
				[314040] = {
					["source"] = "Тэгуки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Потекунчик-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316088] = {
					["source"] = "Зуйтиз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162141,
				},
				[111240] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Еда-Корольлич",
					["npcID"] = 0,
				},
				[277186] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136550,
				},
				[306875] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Папафлоузи-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[277649] = {
					["source"] = "Трухляк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141970,
				},
				[33690] = {
					["source"] = "Мка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81754] = {
					["source"] = "Бригадир из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154425,
				},
				[275335] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["source"] = "Cryusis-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Моторилла",
					["npcID"] = 151634,
				},
				[196980] = {
					["type"] = "BUFF",
					["source"] = "Конарон-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216528] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лиюлинь",
					["npcID"] = 0,
				},
				[228537] = {
					["source"] = "Глерол-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[218164] = {
					["source"] = "Браник-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203123] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272071] = {
					["source"] = "Гарнаут-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33649] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208679] = {
					["source"] = "Ястреб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105374,
				},
				[289666] = {
					["source"] = "Кинуэль-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нестабильный облученный элементаль",
					["npcID"] = 150825,
				},
				[285381] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Оченьхорни-Гордунни",
					["npcID"] = 0,
				},
				[271802] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чареска",
					["npcID"] = 0,
				},
				[304839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нестабильный облученный голем",
					["npcID"] = 151053,
				},
				[59243] = {
					["source"] = "Имирьярский плотоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26670,
				},
				[265931] = {
					["source"] = "Гык-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50977] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Икрид",
					["npcID"] = 0,
				},
				[296644] = {
					["source"] = "Копытко-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243563] = {
					["source"] = "Раковинный падальщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142577,
				},
				[294195] = {
					["source"] = "\"Оборонобот I\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151649,
				},
				[288455] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261479] = {
					["source"] = "Бамбодар-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245102] = {
					["source"] = "Девлинн Стикс",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[212295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Synystertea-Kazzak",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Топкун-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Бермель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Yingy-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нестабильный облученный элементаль",
					["npcID"] = 150825,
				},
				[167898] = {
					["source"] = "Тсилина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Путный-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114051] = {
					["source"] = "Кондопрайд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167105] = {
					["source"] = "Harvlifé-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[166550] = {
					["source"] = "Фармовщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316100] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["source"] = "Belgwen-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
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
					["type"] = "BUFF",
					["source"] = "Толпауточек-Гордунни",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246586] = {
					["source"] = "Девлинн Стикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[2641] = {
					["source"] = "Нееленочка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Медведь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 3810,
				},
				[287712] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298009] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Силевана-Борейскаятундра",
					["npcID"] = 0,
				},
				[199545] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59244] = {
					["source"] = "Имирьярский плотоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26670,
				},
				[259277] = {
					["source"] = "Raptor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139365,
				},
				[207311] = {
					["source"] = "Дерд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303333] = {
					["source"] = "Циклоид мятежников",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159271,
				},
				[121536] = {
					["source"] = "Фериона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255852] = {
					["source"] = "Меднохвостая лиса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131387,
				},
				[15487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mdmaster-Stormreaver",
					["npcID"] = 0,
				},
				[247121] = {
					["source"] = "Doomyak-Genjuros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277185] = {
					["source"] = "Ланселька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302796] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79886] = {
					["source"] = "Огнедых из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151720,
				},
				[296230] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291788] = {
					["source"] = "Копытко-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Спайдор-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Böh-Alleria",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314689] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Адельгида-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61548] = {
					["source"] = "Имирьярский берсерк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26696,
				},
				[300751] = {
					["source"] = "Агнелис-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305485] = {
					["source"] = "Nelsonson-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валганис",
					["npcID"] = 0,
				},
				[102351] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кландсем-Дракономор",
					["npcID"] = 0,
				},
				[263897] = {
					["source"] = "Зубастый бобр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[61549] = {
					["source"] = "Имирьярский берсерк",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26696,
				},
				[303834] = {
					["source"] = "Рейерсон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33907] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бролл Медвежья Шкура",
					["npcID"] = 142294,
				},
				[205691] = {
					["source"] = "Lefux-Varimathras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105421] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299512] = {
					["source"] = "Фалирон-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300754] = {
					["source"] = "Валарика-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[73685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shámazíng-Draenor",
					["npcID"] = 0,
				},
				[205180] = {
					["source"] = "Истаниил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[173959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ривэрия",
					["npcID"] = 0,
				},
				[173956] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ривэрия",
					["npcID"] = 0,
				},
				[312017] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 2376,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158315,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204157] = {
					["source"] = "Долланатра-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[740] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188034] = {
					["source"] = "Аэнкиэль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Корникк",
					["npcID"] = 0,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[298710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джедакшату",
					["npcID"] = 0,
				},
				[270330] = {
					["source"] = "Глыба азерита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141974,
				},
				[280746] = {
					["source"] = "Мегамегаогр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мандарие-Дракономор",
					["npcID"] = 0,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[221562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[276189] = {
					["source"] = "Боксерочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["source"] = "Руппи-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255858] = {
					["source"] = "Меднохвостая лиса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131387,
				},
				[207230] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лайян",
					["npcID"] = 0,
				},
				[108238] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224125] = {
					["source"] = "Дух волка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[324890] = {
					["source"] = "Упырье-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300761] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96977] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kegamdh-Draenor",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300762] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59246] = {
					["source"] = "Имирьярский знахарь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26691,
				},
				[308459] = {
					["source"] = "Кричащая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157298,
				},
				[131474] = {
					["source"] = "Вётрокрылая-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ерамир",
					["npcID"] = 0,
				},
				[256374] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102793] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297108] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207744] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298722] = {
					["type"] = "BUFF",
					["source"] = "Бездносветка-СвежевательДуш",
					["encounterID"] = 1978,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303836] = {
					["source"] = "Этельглеф-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296197] = {
					["source"] = "Малышуруру-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96978] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301088] = {
					["source"] = "Бомботанк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151657,
				},
				[303837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Дух земли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[55567] = {
					["source"] = "Землетряс Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29829,
				},
				[278244] = {
					["source"] = "Пемфредо-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Кельнилир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138646] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккрилия",
					["npcID"] = 0,
				},
				[207640] = {
					["source"] = "Лесиор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298728] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Иар-Дракономор",
					["npcID"] = 0,
				},
				[137619] = {
					["source"] = "Notørious-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224126] = {
					["source"] = "Дух волка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[251839] = {
					["source"] = "Улдскул-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298605] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дуохромная",
					["npcID"] = 0,
				},
				[62574] = {
					["source"] = "Вербейник-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Брокколи-Дракономор",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[58991] = {
					["source"] = "Люторог Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29931,
				},
				[224127] = {
					["source"] = "Дух волка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[3166] = {
					["source"] = "Аурила",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Анб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309926] = {
					["source"] = "Судьйа-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314315] = {
					["source"] = "Зара'тик - страж роя",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161370,
				},
				[49966] = {
					["source"] = "Bourrinos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 3242,
				},
				[194951] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Техник Ларри",
					["npcID"] = 151169,
				},
				[58992] = {
					["source"] = "Люторог Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29931,
				},
				[59827] = {
					["encounterID"] = 1981,
					["source"] = "Гал'дара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29306,
				},
				[208772] = {
					["source"] = "Kátîè-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215769] = {
					["source"] = "Кинуэль-СвежевательДуш",
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
				[280654] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Кетрисса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тиазара",
					["npcID"] = 0,
				},
				[195630] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212423] = {
					["source"] = "Восставший тихоступ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аврорабореал",
					["npcID"] = 0,
				},
				[292585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 150825,
				},
				[259449] = {
					["source"] = "Карелька-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165776] = {
					["source"] = "Скальный паук-скакун",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131890,
				},
				[219589] = {
					["source"] = "Ланселька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83672] = {
					["type"] = "BUFF",
					["source"] = "Озумат",
					["encounterID"] = 1047,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 44566,
				},
				[475] = {
					["source"] = "Альштам-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115356] = {
					["source"] = "Кондопрайд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308967] = {
					["source"] = "Падшая надсмотрщица",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158437,
				},
				[324852] = {
					["source"] = "Тося-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165777] = {
					["source"] = "Усиленный азеритом элементаль",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137905,
				},
				[105683] = {
					["source"] = "Уанхеллсинг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276208] = {
					["source"] = "Боксерочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309666] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[203720] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Улдскул-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Роутер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256451] = {
					["source"] = "Нагорецик-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287471] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271465] = {
					["source"] = "Xuity-Drak'thul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204366] = {
					["source"] = "Лсдкек-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123725] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197003] = {
					["source"] = "Pîcarona-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271462] = {
					["source"] = "Xuity-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259452] = {
					["source"] = "Неистовец-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205636] = {
					["source"] = "Жесткаридзе-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185394] = {
					["source"] = "Ювелина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309675] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[270070] = {
					["source"] = "Фуффика-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 110340,
				},
				[255087] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318187] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68054] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дживс",
					["npcID"] = 35642,
				},
				[256382] = {
					["source"] = "Пойменная олениха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142183,
				},
				[179089] = {
					["source"] = "Зет'джирский повелитель приливов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131085,
				},
				[116670] = {
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[169567] = {
					["source"] = "Цепкая лоза",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129806,
				},
				[58994] = {
					["source"] = "Живое колдунство",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29830,
				},
				[264735] = {
					["source"] = "Entei",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103326,
				},
				[193359] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58993] = {
					["source"] = "Живое колдунство",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29830,
				},
				[227723] = {
					["source"] = "Данатиль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Глерол-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228128] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пандаквин",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Меранна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Катаклизмерр",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шорта",
					["npcID"] = 0,
				},
				[187698] = {
					["source"] = "Suicun-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263933] = {
					["source"] = "Газ'ралка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129954,
				},
				[264957] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115132] = {
					["source"] = "Шелкоперый ястреб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156931,
				},
				[298752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Иар-Дракономор",
					["npcID"] = 0,
				},
				[203155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Дэйвэлбэйя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шорта",
					["npcID"] = 0,
				},
				[91800] = {
					["source"] = "Гробогул",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26125,
				},
				[308980] = {
					["source"] = "Заразная опухоль",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158478,
				},
				[279303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mondia-LaCroisadeécarlate",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Матэва-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59826] = {
					["encounterID"] = 1981,
					["source"] = "Гал'дара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29306,
				},
				[272126] = {
					["source"] = "Проттон-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[272893] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Warrgamma-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316254] = {
					["source"] = "Акир-гигант",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154353,
				},
				[257410] = {
					["source"] = "Сораака-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203812] = {
					["source"] = "Вангардх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75998] = {
					["type"] = "BUFF",
					["source"] = "Отважный страж Леди Наз'жар",
					["encounterID"] = 1045,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40633,
				},
				[59542] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267799] = {
					["source"] = "Holybasher-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298746] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Иар-Дракономор",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Докторшок-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Ауринара-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302842] = {
					["source"] = "Дунько",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Фуффика-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263940] = {
					["source"] = "Газ'ралка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129954,
				},
				[26297] = {
					["source"] = "Thevivaldi-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Моритц",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Maypuce-Nethersturm",
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
				[275540] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257418] = {
					["source"] = "Мифруил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205762] = {
					["source"] = "Следопыт из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154461,
				},
				[210320] = {
					["source"] = "Левкофейа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335149] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105688] = {
					["source"] = "Буфало-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Беттара-Голдринн",
					["npcID"] = 0,
				},
				[300809] = {
					["source"] = "Garvanzo-DunModr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224189] = {
					["source"] = "Тишаа-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255366] = {
					["source"] = "Мучительница из культа Шадры",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122919,
				},
				[186263] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256390] = {
					["source"] = "Чуланный ползун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137000,
				},
				[300800] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269064] = {
					["source"] = "Джаниэль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1329] = {
					["source"] = "Minimyki-Blackmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мелвен",
					["npcID"] = 0,
				},
				[300801] = {
					["source"] = "Бамбодар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Фериона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["source"] = "Дух волка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29264,
				},
				[105689] = {
					["source"] = "Мускулистый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300802] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Паладиносик-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мандарие-Дракономор",
					["npcID"] = 0,
				},
				[313088] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214975] = {
					["source"] = "Krey-Tyrande",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["source"] = "Suicun-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271115] = {
					["source"] = "Пасхал-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269944] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136374,
				},
				[210824] = {
					["source"] = "Алаэна-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Спайдор-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48246] = {
					["encounterID"] = 2030,
					["source"] = "Огненная жаровня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 27273,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298528] = {
					["source"] = "Акир-острожал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154354,
				},
				[256880] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137371,
				},
				[316285] = {
					["source"] = "Порабощенный Скиталец Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154369,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293930] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[202168] = {
					["source"] = "Астериал-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[271868] = {
					["source"] = "Сиравон Доминатрикс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136413,
				},
				[162209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрридана",
					["npcID"] = 0,
				},
				[308998] = {
					["source"] = "Падшая надсмотрщица",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158437,
				},
				[314117] = {
					["source"] = "Гусеница акира",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154368,
				},
				[257422] = {
					["source"] = "Милея",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["source"] = "Dutchhuntr-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Алдун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[58996] = {
					["encounterID"] = 1978,
					["source"] = "Слад'ранская гадюка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29680,
				},
				[248622] = {
					["source"] = "Nabaral-DieAldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285454] = {
					["encounterID"] = 2259,
					["source"] = "Главный машинист Искроточец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144248,
				},
				[139176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрридана",
					["npcID"] = 0,
				},
				[5394] = {
					["source"] = "Хануман-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185245] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202137] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299432] = {
					["source"] = "Неисправный утильхаунд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151301,
				},
				[299788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asceticlove-Al'Akir",
					["npcID"] = 0,
				},
				[268602] = {
					["source"] = "Эльвийя-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["source"] = "Локситан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Папафлоузи-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299789] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296718] = {
					["source"] = "Безликий сокрушитель воли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152987,
				},
				[202138] = {
					["source"] = "Killerfrost-Frostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319241] = {
					["source"] = "Митиффа-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299790] = {
					["source"] = "Саурум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223306] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156073] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сивыймерен",
					["npcID"] = 0,
				},
				[49143] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Андаисия",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Мотылек",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 25498,
				},
				[318219] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186401] = {
					["source"] = "Милкасента",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Меранна",
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
				[285460] = {
					["type"] = "DEBUFF",
					["source"] = "Главный машинист Искроточец",
					["encounterID"] = 2259,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144248,
				},
				[30213] = {
					["source"] = "Джузинул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[262938] = {
					["source"] = "Костегрыз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152001,
				},
				[1449] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Светиик",
					["npcID"] = 0,
				},
				[258925] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262939] = {
					["source"] = "Костегрыз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152001,
				},
				[102383] = {
					["source"] = "Carlshield-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46968] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48099] = {
					["source"] = "Хигакамуро-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271369] = {
					["source"] = "Исполин из племени Хламоедов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154091,
				},
				[213405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ёшико-Борейскаятундра",
					["npcID"] = 0,
				},
				[61336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[74981] = {
					["type"] = "BUFF",
					["source"] = "Начальник кузни Тронг",
					["encounterID"] = 1050,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40177,
				},
				[191034] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Леметр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298837] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262942] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёрггать",
					["npcID"] = 0,
				},
				[269085] = {
					["source"] = "Одеялка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Speerk-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256401] = {
					["source"] = "Чуланный ползун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137000,
				},
				[268062] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хангр-Ревущийфьорд",
					["npcID"] = 0,
				},
				[8042] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318227] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Аганник-Разувий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114923] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75238] = {
					["type"] = "DEBUFF",
					["source"] = "Пробужденный пламенный дух",
					["encounterID"] = 1048,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 40357,
				},
				[96243] = {
					["source"] = "Elémentaire d’eau",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 78116,
				},
				[19577] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283421] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[2818] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326419] = {
					["source"] = "Бенсалор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266018] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283422] = {
					["encounterID"] = 2257,
					["source"] = "\"Гномогедд-0Н\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145185,
				},
				[130] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59254] = {
					["source"] = "Имирьярский некромант",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 28368,
				},
				[256735] = {
					["source"] = "Двигель",
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
				[292362] = {
					["source"] = "Зизигибс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179101] = {
					["source"] = "Зет'джирская поработительница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130822,
				},
				[44544] = {
					["source"] = "Böh-Alleria",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200713] = {
					["source"] = "Арусиос-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313113] = {
					["source"] = "Tcherno-Dentarg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[315161] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156077] = {
					["source"] = "Домофон-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178740] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22910] = {
					["source"] = "Разведчик из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154421,
				},
				[214968] = {
					["source"] = "Лосебау-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273238] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280544] = {
					["source"] = "Нееленочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Муникль",
					["npcID"] = 0,
				},
				[290600] = {
					["source"] = "Исткам-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188838] = {
					["source"] = "Стэфания-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285475] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Клинкозуб",
					["npcID"] = 144956,
				},
				[74984] = {
					["encounterID"] = 1050,
					["source"] = "Начальник кузни Тронг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40177,
				},
				[59237] = {
					["source"] = "Имирьярский дикарь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26669,
				},
				[207289] = {
					["source"] = "Путный-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278310] = {
					["source"] = "Меранна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288548] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[48639] = {
					["source"] = "Имирьярский воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26690,
				},
				[31821] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85222] = {
					["source"] = "Квакеру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59255] = {
					["source"] = "Имирьярский некромант",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 28368,
				},
				[270122] = {
					["source"] = "Палач Блэквелл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134213,
				},
				[156080] = {
					["type"] = "BUFF",
					["source"] = "Маака-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19483] = {
					["source"] = "Инфернал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[31935] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Concentrated-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257946] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[174528] = {
					["source"] = "Брунги-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293670] = {
					["source"] = "Защитник мастерской",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144299,
				},
				[270124] = {
					["source"] = "Палач Блэквелл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134213,
				},
				[308352] = {
					["source"] = "Страж анимы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155970,
				},
				[201638] = {
					["source"] = "Префикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293671] = {
					["source"] = "Бригида-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227744] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287827] = {
					["source"] = "Донт-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270126] = {
					["source"] = "Королевский страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 120802,
				},
				[54049] = {
					["source"] = "Ширкоро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58964,
				},
				[201639] = {
					["source"] = "Ауринара-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55142] = {
					["encounterID"] = 1980,
					["source"] = "Мураби",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29305,
				},
				[283143] = {
					["type"] = "BUFF",
					["source"] = "Магнитохват",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145560,
				},
				[291626] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150396,
				},
				[257258] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Плетеный захватчик",
					["npcID"] = 129768,
				},
				[155158] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79849] = {
					["source"] = "Алин Блэк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61834,
				},
				[164273] = {
					["source"] = "Этикеша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1833] = {
					["source"] = "Красиваярога-Корольлич",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272783] = {
					["source"] = "Баздал-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298794] = {
					["source"] = "Раттур-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305992] = {
					["source"] = "Прохарь-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309063] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[209746] = {
					["source"] = "Лодрен-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58973] = {
					["source"] = "Охотник бога Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29820,
				},
				[283640] = {
					["type"] = "DEBUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145185,
				},
				[14914] = {
					["source"] = "Одеялка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210294] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74987] = {
					["type"] = "DEBUFF",
					["encounterID"] = 1050,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шорта",
					["npcID"] = 0,
				},
				[116706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Оченьхорни-Гордунни",
					["npcID"] = 0,
				},
				[116705] = {
					["encounterID"] = 1980,
					["source"] = "Танзаки-Корольлич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мотопаук",
					["npcID"] = 152287,
				},
				[53600] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285489] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298798] = {
					["source"] = "Икрид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Ldl-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273842] = {
					["source"] = "Вилиада-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фрюк",
					["npcID"] = 0,
				},
				[18499] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Васкадгама-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Талрион",
					["npcID"] = 0,
				},
				[299457] = {
					["source"] = "Охранник Ржавого Болта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151832,
				},
				[285443] = {
					["encounterID"] = 2259,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Мертиндемон-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[112867] = {
					["source"] = "Чудиило-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45053] = {
					["source"] = "Perttu-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Böh-Alleria",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304545] = {
					["source"] = "Сандк-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200587] = {
					["source"] = "Брангин-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49020] = {
					["source"] = "Кьюджин-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268856] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205228] = {
					["source"] = "Speerk-C'Thun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281400] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12323] = {
					["source"] = "Bradoc-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308018] = {
					["source"] = "Молодой акир-гигант",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163259,
				},
				[183218] = {
					["source"] = "Perg-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Моритц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[174524] = {
					["source"] = "Минидарки-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313310] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193456] = {
					["source"] = "Ассиада-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Торелгорн-Ревущийфьорд",
					["npcID"] = 0,
				},
				[285500] = {
					["source"] = "Кристинакри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275689] = {
					["source"] = "Найскрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 94196,
				},
				[281403] = {
					["source"] = "Адельгида-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266047] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Абхао-Борейскаятундра",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259489] = {
					["source"] = "Væly-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255975] = {
					["source"] = "Портовая чайка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128625,
				},
				[265684] = {
					["source"] = "Посланница племени Моходеров",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130103,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269120] = {
					["source"] = "Юна-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["source"] = "Sahndra-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205231] = {
					["source"] = "Созерцатель Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[83245] = {
					["source"] = "Dutchhuntr-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198065] = {
					["source"] = "Dønâ-MarécagedeZangar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198577] = {
					["source"] = "Посланница племени Пронзающего Копья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130120,
				},
				[272679] = {
					["source"] = "Suicun-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55163] = {
					["source"] = "Мураби",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29305,
				},
				[8676] = {
					["source"] = "Licantrogue-Ysondre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316216] = {
					["source"] = "Акир - заклинатель Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154352,
				},
				[278873] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холлиям",
					["npcID"] = 0,
				},
				[242599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жарбород-Дракономор",
					["npcID"] = 0,
				},
				[259491] = {
					["source"] = "Bowlichnaja-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198590] = {
					["source"] = "Azgalor-BurningBlade",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312121] = {
					["type"] = "DEBUFF",
					["source"] = "Терум Подземная Кузня",
					["encounterID"] = 2374,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156577,
				},
				[280385] = {
					["source"] = "Обнулёный",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246585] = {
					["source"] = "Девлинн Стикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[129250] = {
					["source"] = "Васкадгама-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[112870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вертихрюшк-Гордунни",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Бездносветка-СвежевательДуш",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Lawbsterge-Silvermoon",
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
				[54819] = {
					["type"] = "DEBUFF",
					["source"] = "Элементаль Драккари",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29573,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301886] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315195] = {
					["source"] = "Шильвари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45182] = {
					["source"] = "Schitatak-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["source"] = "Liazer-DunModr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Радэн",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Астериал-Гордунни",
					["encounterID"] = 1981,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[128227] = {
					["source"] = "Пежа Искристый Кремень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 64480,
				},
				[248744] = {
					["source"] = "Kroxi-LesClairvoyants",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281413] = {
					["source"] = "Фэйтлэс-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309055] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[58875] = {
					["source"] = "Duly-Azuremyst",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316222] = {
					["source"] = "Акир - заклинатель Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154352,
				},
				[199736] = {
					["source"] = "Хаккем-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55164] = {
					["source"] = "Аддела-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Killerfrost-Frostwhisper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nelzar-Magtheridon",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Толпауточек-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Kátîè-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2050] = {
					["source"] = "Ирчона-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[128228] = {
					["source"] = "Пежа Искристый Кремень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 64480,
				},
				[85739] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204213] = {
					["source"] = "Васкадгама-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["source"] = "Левкофейа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Holybasher-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256409] = {
					["source"] = "Радикулиск",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153699,
				},
				[8004] = {
					["source"] = "Сваровски-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Holybasher-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300142] = {
					["source"] = "Жмухич-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[42724] = {
					["source"] = "Смертелюб из клана Укротителей драконов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26550,
				},
				[20484] = {
					["encounterID"] = 2258,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201787] = {
					["source"] = "Спайдор-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132169] = {
					["source"] = "Газкон-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мунсун-Галакронд",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303943] = {
					["type"] = "BUFF",
					["source"] = "Танзаки-Корольлич",
					["encounterID"] = 1983,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309062] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[213652] = {
					["encounterID"] = 2257,
					["source"] = "Маклиам-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Глерол-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298797] = {
					["source"] = "Раттур-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267532] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевший от меда вендиго",
					["npcID"] = 131568,
				},
				[203704] = {
					["source"] = "Гарнаут-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129697] = {
					["source"] = "Чут Шри Ну",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65927,
				},
				[59239] = {
					["source"] = "Имирьярский дикарь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26669,
				},
				[308354] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[280400] = {
					["source"] = "Клачек-СвежевательДуш",
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
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Tréacle-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292686] = {
					["source"] = "Hià-Elune",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187837] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[163201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[197051] = {
					["source"] = "Красиваярога-Корольлич",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121118] = {
					["source"] = "Dutchhuntr-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Медоносец-роевик",
					["npcID"] = 154113,
				},
				[290640] = {
					["source"] = "Себеро-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пангар-Галакронд",
					["npcID"] = 0,
				},
				[311217] = {
					["source"] = "Киттипрайд-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115098] = {
					["source"] = "Yingy-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176065] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Король-над-свалкой",
					["npcID"] = 151623,
				},
				[31661] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280404] = {
					["source"] = "Lawbsterge-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сквернопряд-Дракономор",
					["npcID"] = 0,
				},
				[286547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Асперула",
					["npcID"] = 0,
				},
				[272903] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79638] = {
					["source"] = "Енгоп",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311215] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сириустии",
					["npcID"] = 0,
				},
				[290643] = {
					["source"] = "Préarios-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54520] = {
					["source"] = "Рен \"Бессмертный\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141121,
				},
				[156079] = {
					["source"] = "Электрофил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157736] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Doomyak-Genjuros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303953] = {
					["source"] = "Teunor-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300104] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[271194] = {
					["source"] = "Адлеррог",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sekana-Uldaman",
					["npcID"] = 0,
				},
				[307026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сириустии",
					["npcID"] = 0,
				},
				[233582] = {
					["source"] = "Райдоу-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Одеялка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58977] = {
					["encounterID"] = 1983,
					["source"] = "Голем Драккари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29832,
				},
				[302932] = {
					["source"] = "Tréacle-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271138] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дирижабль-бомбардировщик",
					["npcID"] = 136957,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[48640] = {
					["source"] = "Имирьярский воин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26690,
				},
				[124218] = {
					["source"] = "Докфен",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298197] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["source"] = "Ишимоку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298839] = {
					["source"] = "Жека-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280412] = {
					["source"] = "Warrgamma-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[982] = {
					["source"] = "Вимбулу",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199448] = {
					["source"] = "Эстерленх-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256434] = {
					["source"] = "Анб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холлиям",
					["npcID"] = 0,
				},
				[280286] = {
					["source"] = "Böh-Alleria",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Киранэйтли-Гордунни",
					["npcID"] = 0,
				},
				[80117] = {
					["source"] = "Огнедых из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 151720,
				},
				[269994] = {
					["source"] = "Бандит из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135771,
				},
				[160839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[76790] = {
					["type"] = "BUFF",
					["source"] = "Захватчик Леди Наз'жар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 39616,
				},
				[81141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kraent-Silvermoon",
					["npcID"] = 0,
				},
				[156071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вышибатель",
					["npcID"] = 0,
				},
				[293724] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151579,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айринис-Азурегос",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Эстерленх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291601] = {
					["source"] = "Нэллика",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Поганище",
					["npcID"] = 149555,
				},
				[178119] = {
					["source"] = "Анхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лолликон",
					["npcID"] = 0,
				},
				[256948] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Дия-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316331] = {
					["source"] = "Истребительница из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154434,
				},
				[300893] = {
					["source"] = "Бамбодар-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254471] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308060] = {
					["source"] = "Анх-Де Верный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157466,
				},
				[114158] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рофланхолли-Гордунни",
					["npcID"] = 0,
				},
				[69369] = {
					["source"] = "Belgwen-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44212] = {
					["source"] = "Морожкович-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255654] = {
					["source"] = "Harvlifé-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293729] = {
					["source"] = "Мехагонский механик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144295,
				},
				[137639] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["source"] = "Максимушка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Гладкаякиса-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Митиффа-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79863] = {
					["source"] = "Френа Душистая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141120,
				},
				[184364] = {
					["source"] = "Синегард-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309669] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[233490] = {
					["source"] = "Saeni-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251832] = {
					["source"] = "Фуся-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126188] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163386,
				},
				[288613] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[232893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вилкора-СвежевательДуш",
					["npcID"] = 0,
				},
				[266091] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[200196] = {
					["source"] = "Одеялка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Дерд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137211] = {
					["type"] = "BUFF",
					["source"] = "Астериал-Гордунни",
					["encounterID"] = 1978,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Дерд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[95988] = {
					["source"] = "Вульфвариор-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270188] = {
					["source"] = "Поджигатель из Торговой компании",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138095,
				},
				[48258] = {
					["encounterID"] = 2030,
					["source"] = "Свала Вечноскорбящая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26668,
				},
				[164815] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Böh-Alleria",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294133] = {
					["source"] = "Perg-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3562] = {
					["source"] = "Дадукан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Локситан-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49026] = {
					["source"] = "Кровожадный тундровый волк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26672,
				},
				[212182] = {
					["source"] = "Schitatak-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Альштам-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Антисерж",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Saeni-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Гаашек-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268439] = {
					["source"] = "Аурозария-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302952] = {
					["source"] = "Сваровски-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76026] = {
					["encounterID"] = 1044,
					["source"] = "Командир Улток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 40765,
				},
				[52437] = {
					["source"] = "Трейдар-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273264] = {
					["source"] = "Ишимоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сергулий",
					["npcID"] = 0,
				},
				[263027] = {
					["source"] = "Королевский страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 120802,
				},
				[150485] = {
					["source"] = "Темен'рикс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134717,
				},
				[273770] = {
					["source"] = "Целитель из шайки Скитальцев Пустыни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154499,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Олимпстрой-Ревущийфьорд",
					["npcID"] = 0,
				},
				[278767] = {
					["source"] = "Нэйлроу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308381] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[251837] = {
					["source"] = "Сораака-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17735] = {
					["source"] = "Маккровь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[150486] = {
					["source"] = "Мукуро",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265077] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["source"] = "Митиффа-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271220] = {
					["source"] = "Ворчун из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152960,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283167] = {
					["source"] = "Mellon-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рурх-Дракономор",
					["npcID"] = 0,
				},
				[193753] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хронишик",
					["npcID"] = 0,
				},
				[324853] = {
					["source"] = "Истинка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275429] = {
					["source"] = "Саурум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318391] = {
					["source"] = "Великий потусторонний червь",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[294855] = {
					["encounterID"] = 2259,
					["source"] = "Непримечательное растение",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152033,
				},
				[117679] = {
					["source"] = "Tólò-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["source"] = "Thevivaldi-Doomhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Badassbadger-Wildhammer",
					["npcID"] = 0,
				},
				[127797] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["source"] = "Maypuce-Nethersturm",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мунсун-Галакронд",
					["npcID"] = 0,
				},
				[259434] = {
					["source"] = "Шусман",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176594] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Толуун",
					["npcID"] = 0,
				},
				[263916] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 97504,
				},
				[202188] = {
					["source"] = "Милаяевочка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286581] = {
					["source"] = "Флайвос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296674] = {
					["source"] = "Алькс'ков Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152809,
				},
				[80012] = {
					["source"] = "Разведчица из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154421,
				},
				[167381] = {
					["source"] = "Тренировочный манекен покорителя подземелий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131992,
				},
				[8690] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Локе'нахак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32517,
				},
				[35079] = {
					["source"] = "Hià-Elune",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259519] = {
					["source"] = "Костегрыз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152001,
				},
				[153561] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244888] = {
					["source"] = "Исполин из племени Хламоедов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154091,
				},
				[8377] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137585,
				},
				[296669] = {
					["source"] = "Алькс'ков Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152809,
				},
				[267611] = {
					["source"] = "Буфин-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Васкадгама-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Папафлоузи-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31567] = {
					["source"] = "Охотник бога Драккари",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 29820,
				},
				[49028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[188370] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315787] = {
					["source"] = "Маклиам-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300919] = {
					["source"] = "Саурум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["source"] = "Флайвос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252355] = {
					["source"] = "Кейлиан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268756] = {
					["source"] = "Глерол-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269652] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boulder Caster",
					["npcID"] = 137078,
				},
				[285979] = {
					["source"] = "Дл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273525] = {
					["source"] = "Истаниил-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317301] = {
					["source"] = "К'тир - призыватель Бездны",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161815,
				},
				[198097] = {
					["source"] = "Эльвийя-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316278] = {
					["source"] = "Порабощенный Скиталец Пустыни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154369,
				},
				[114165] = {
					["source"] = "Клачек-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167385] = {
					["source"] = "Тренировочный манекен покорителя подземелий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131992,
				},
				[223819] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316279] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51460] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Бездносветка-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302795] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256452] = {
					["source"] = "Цирцея-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324870] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278865] = {
					["source"] = "Найскрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302972] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Король-над-свалкой",
					["npcID"] = 151623,
				},
				[316281] = {
					["source"] = "Порабощенный Скиталец Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154369,
				},
				[272260] = {
					["source"] = "Сваровски-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297854] = {
					["source"] = "Пламя горнила",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151930,
				},
				[255941] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьяр-Дракономор",
					["npcID"] = 0,
				},
				[159786] = {
					["source"] = "Гончая недр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 46910,
				},
				[49029] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лиюлинь",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Бьорвик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Дерд-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273286] = {
					["source"] = "Bowlichnaja-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279885] = {
					["source"] = "Пасхал-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэнирон",
					["npcID"] = 0,
				},
				[196277] = {
					["source"] = "Пасхал-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["source"] = "Стэфания-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223829] = {
					["source"] = "Путный-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299905] = {
					["source"] = "Symana-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288644] = {
					["source"] = "Синегард-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206803] = {
					["source"] = "Doomyak-Genjuros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Иелор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кондопрайд-Гордунни",
					["npcID"] = 0,
				},
				[49106] = {
					["source"] = "Имирьярский берсерк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26696,
				},
				[291918] = {
					["encounterID"] = 2258,
					["source"] = "Летающий кран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150442,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гентивен-Галакронд",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200389] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Король-над-свалкой",
					["npcID"] = 151625,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дуохромная",
					["npcID"] = 0,
				},
				[185205] = {
					["source"] = "Найсхук-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["source"] = "Oofedeule-Malfurion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Аргол-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254409] = {
					["source"] = "Тайгита-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315695] = {
					["source"] = "Акир - заклинатель Бездны",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154352,
				},
				[157153] = {
					["source"] = "Энмис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Concentrated-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Дъмъка-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273293] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вергилия",
					["npcID"] = 0,
				},
				[195292] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[287835] = {
					["source"] = "Толпауточек-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Minimyki-Blackmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276840] = {
					["source"] = "Зигосигната-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106951] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102560] = {
					["source"] = "Leannain-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отвага-Гром",
					["npcID"] = 0,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кварцеона",
					["npcID"] = 0,
				},
				[744] = {
					["source"] = "Головорез из братства Стальных Волн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138170,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Lawbsterge-Silvermoon",
					["encounterID"] = 2257,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Аганник-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7814] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nimrida",
					["npcID"] = 120527,
				},
				[256459] = {
					["source"] = "Лекарстон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288653] = {
					["source"] = "Ragefreak-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55173] = {
					["source"] = "Сильдеон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297162] = {
					["source"] = "Меранна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["source"] = "Исчадие Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[117952] = {
					["source"] = "Ичиги-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273298] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302987] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ghollmes-Draenor",
					["npcID"] = 0,
				},
				[267156] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Перенастроенный уборочный голем",
					["npcID"] = 130131,
				},
				[59752] = {
					["source"] = "Рыжаяимбапих-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Танзаки-Корольлич",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280734] = {
					["source"] = "Тюхэ-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Такэмикати-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272276] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197277] = {
					["source"] = "Аргол-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298894] = {
					["source"] = "Механизированный утильхаунд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149839,
				},
				[117405] = {
					["source"] = "Hià-Elune",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фэйтлэс-Азурегос",
					["npcID"] = 0,
				},
				[283667] = {
					["source"] = "Валира Сангвинар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156837,
				},
				[247454] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3355] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Маминдагрейв-СвежевательДуш",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Holybasher-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Lawbsterge-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208652] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маминдагрейв-СвежевательДуш",
					["npcID"] = 0,
				},
				[197690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Когмэйн-Галакронд",
					["npcID"] = 0,
				},
				[212520] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Когмэйн-Галакронд",
					["npcID"] = 0,
				},
				[299437] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неисправный утильхаунд",
					["npcID"] = 151301,
				},
				[270232] = {
					["source"] = "Моритц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275351] = {
					["source"] = "Exeed-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305483] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198817] = {
					["source"] = "Когмэйн-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209584] = {
					["source"] = "Такэмикати-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Альштам-Голдринн",
					["npcID"] = 0,
				},
				[272733] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетбог-Борейскаятундра",
					["npcID"] = 0,
				},
				[204263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хилус-Борейскаятундра",
					["npcID"] = 0,
				},
				[262094] = {
					["source"] = "Фтп-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287638] = {
					["source"] = "Морландер-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайлинель",
					["npcID"] = 0,
				},
				[121153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Еда-Корольлич",
					["npcID"] = 0,
				},
				[311185] = {
					["source"] = "Дия-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анёлак-Дракономор",
					["npcID"] = 0,
				},
				[132168] = {
					["source"] = "Darkandlight-Blade'sEdge",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рофланхолли-Гордунни",
					["npcID"] = 0,
				},
				[311186] = {
					["source"] = "Карелька-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306230] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бобс-Подземье",
					["npcID"] = 0,
				},
				[32390] = {
					["source"] = "Azgalor-BurningBlade",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44425] = {
					["source"] = "Maypuce-Nethersturm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Беттара-Голдринн",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Гасан-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272285] = {
					["source"] = "Повелительница лоз Гафф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132162,
				},
				[269214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[312793] = {
					["source"] = "Лирэнса-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Кьюджин-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216331] = {
					["source"] = "Рофланхолли-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kegamdh-Draenor",
					["npcID"] = 0,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[313663] = {
					["source"] = "Одеялка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Exeed-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[171740] = {
					["source"] = "Вербейник-Азурегос",
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
				[278543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[273312] = {
					["source"] = "Каппучинко-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slavélord-Draenor",
					["npcID"] = 0,
				},
				[273836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Флэкери-Гордунни",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Tréacle-Nordrassil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Ядоваренье-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[283551] = {
					["type"] = "BUFF",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144249,
				},
				[312562] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Muneer-Draenor",
					["npcID"] = 0,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sekana-Uldaman",
					["npcID"] = 0,
				},
				[55090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wrecean-Kazzak",
					["npcID"] = 0,
				},
				[273974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saeva-Drak'thul",
					["npcID"] = 0,
				},
				[30151] = {
					["source"] = "Джузинул",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[188389] = {
					["source"] = "Nelsonson-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тейелкер-Галакронд",
					["npcID"] = 0,
				},
				[311320] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159633,
				},
				[279503] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kraent-Silvermoon",
					["npcID"] = 0,
				},
				[76807] = {
					["source"] = "Захватчик Леди Наз'жар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 39616,
				},
				[72968] = {
					["source"] = "Анб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283676] = {
					["source"] = "Валира Сангвинар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156837,
				},
				[77575] = {
					["source"] = "Дерд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Следопыт из шайки Скитальцев Пустыни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154461,
				},
				[295840] = {
					["source"] = "Халфдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311267] = {
					["source"] = "Сектантка - теневой клинок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159632,
				},
				[315887] = {
					["source"] = "Обсидиановый разрушитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162160,
				},
				[211522] = {
					["source"] = "Sahndra-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[181842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэтахилер",
					["npcID"] = 0,
				},
				[288675] = {
					["source"] = "Стэфания-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Буфин-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кварцеона",
					["npcID"] = 0,
				},
				[295842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нетраэль",
					["npcID"] = 0,
				},
				[272296] = {
					["source"] = "Галдхельдир-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шаловливый хорек",
					["npcID"] = 143361,
				},
				[193358] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280165] = {
					["type"] = "BUFF",
					["source"] = "Oofedeule-Malfurion",
					["encounterID"] = 2258,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тализ-Дракономор",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Силивия-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Пары Пустоты",
					["npcID"] = 21002,
				},
				[192999] = {
					["source"] = "Натрия-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315681] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Анадолай-Гордунни",
					["npcID"] = 0,
				},
				[688] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нуминоклус",
					["npcID"] = 0,
				},
				[274346] = {
					["source"] = "Митиффа-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Аганник-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83463] = {
					["encounterID"] = 1047,
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 44752,
				},
				[273323] = {
					["source"] = "Vànth-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311202] = {
					["source"] = "Oofedeule-Malfurion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анёлак-Дракономор",
					["npcID"] = 0,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Раса-Дракономор",
					["npcID"] = 0,
				},
				[301311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сквернопряд-Дракономор",
					["npcID"] = 0,
				},
				[287660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Собачийчёрт",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Стрыган",
					["npcID"] = 0,
				},
				[175880] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саялла",
					["npcID"] = 0,
				},
				[308596] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Къюриосити",
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
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.74498599767685",
				["NamePlateHorizontalScale"] = "1",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateShowSelf"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 1007,
			["patch_version"] = 9,
			["number_region_first_run"] = true,
			["enable_masque_support"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["buffs_on_aura2"] = true,
			["indicator_enemyclass"] = true,
		},
	},
}
