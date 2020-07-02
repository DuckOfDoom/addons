
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
				[102246] = {
					"Ануб'ессет", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[152834] = {
					"Азеритовый ползун", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
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
				[152836] = {
					"Азеритовый бурильщик", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
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
				[102387] = {
					"Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[151836] = {
					"Ужас Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
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
				[24559] = {
					"Полководец Саларис", -- [1]
					"Терраса Магистров", -- [2]
				},
				[157609] = {
					"К'тир резчик разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[135231] = {
					"Призрачный громила", -- [1]
					"Гробница королей", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[24715] = {
					"Крайне взрывоопасная овца", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24696] = {
					"Ведьма из клана Змеиных Колец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[102270] = {
					"Эредарская завоевательница", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[157610] = {
					"К'тир-поработитель", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[24744] = {
					"Вексалиус", -- [1]
					"Терраса Магистров", -- [2]
				},
				[17991] = {
					"Рокмар Трескун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[21108] = {
					"Kernhund", -- [1]
					"Храм Котмогу", -- [2]
				},
				[24777] = {
					"Часовой Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[157483] = {
					"Ysedra the Darkener", -- [1]
					"Halls of Origination", -- [2]
				},
				[151147] = {
					"Nofear", -- [1]
					"Храм Котмогу", -- [2]
				},
				[149555] = {
					"Поганище", -- [1]
					"Храм Котмогу", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[24698] = {
					"Контрабандист Эфириума", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24553] = {
					"Апоко", -- [1]
					"Терраса Магистров", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157356] = {
					"Extractor Thelsara", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[102335] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[152479] = {
					"Искаженный Бездной дракончик", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[155657] = {
					"Хаффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[161502] = {
					"Голодный пожиратель плоти", -- [1]
					"Вольная Гавань", -- [2]
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
				[17940] = {
					"Техник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17958] = {
					"Защитник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
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
				[102431] = {
					"Кровавая принцесса Тал'ена", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[20923] = {
					"Кровавый страж Порунг", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[102337] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102370] = {
					"Эредарский завоеватель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102269] = {
					"Ловец Скверны - разоритель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[102398] = {
					"Пылающий инфернал", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102273] = {
					"Страж ужаса - разведчик", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[17960] = {
					"Ворожея резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[99358] = {
					"Гнилосердная дриада", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[21818] = {
					"Дракончик из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[102400] = {
					"Эредарский сумеречный целитель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[153527] = {
					"Акир - вожак роя", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[112738] = {
					"Послушник Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102302] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[24556] = {
					"Зелфан", -- [1]
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
				[102372] = {
					"Гончая Скверны - убийца магов", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[20900] = {
					"Освобожденный Носитель Рока", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[18312] = {
					"Эфириал-чароплет", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
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
				[20908] = {
					"Аккирис Штормоход", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[20897] = {
					"Заклинатель волн Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[18341] = {
					"Пандемоний", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Око Бури", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17465] = {
					"Центурион клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[20883] = {
					"Сердитая искусительница", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[24674] = {
					"Феникс", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24690] = {
					"Презренный-полутруп", -- [1]
					"Терраса Магистров", -- [2]
				},
				[20879] = {
					"Эредарский пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[21346] = {
					"Незрячий глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[102392] = {
					"Тотем резонанса", -- [1]
					"Храм Котмогу", -- [2]
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
				[20865] = {
					"Амебовидный ужас", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[151742] = {
					"Искаженный Бездной захватчик", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[17957] = {
					"Воитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[17959] = {
					"Укротитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[161198] = {
					"Исказитель пространства Душар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[17961] = {
					"Чародейка резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[21148] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[151872] = {
					"Ужасное щупальце", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Око Бури", -- [2]
				},
				[17839] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[21126] = {
					"Целительница чешуи резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[18982] = {
					"Черный ягуар", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17695] = {
					"Убийца из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[17952] = {
					"Темноводный кроколиск", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[16809] = {
					"О'мрогг Завоеватель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
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
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[17671] = {
					"Воитель клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[17669] = {
					"Бешеный бойцовый пес", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[160699] = {
					"Рассерженный почтоменталь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[20880] = {
					"Смертоносный эредар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[5925] = {
					"Тотем заземления", -- [1]
					"Храм Котмогу", -- [2]
				},
				[24675] = {
					"Яйцо феникса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
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
				[100526] = {
					"Истерзанный кровопийца", -- [1]
					"Чаща Темного Сердца", -- [2]
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
				[18311] = {
					"Эфириал - осквернитель гробниц", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[100539] = {
					"Скверносерд-стрелок", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[16699] = {
					"Разоритель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[20864] = {
					"Изначальный кошмар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[101991] = {
					"Обитатель Кошмара", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[156089] = {
					"Акир - повелитель ядов", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[101679] = {
					"Грозный отравитель", -- [1]
					"Чаща Темного Сердца", -- [2]
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
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
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
				[20906] = {
					"Фазовая прыгуана", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17962] = {
					"Работяга резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Гробница королей", -- [2]
				},
				[151752] = {
					"Мелкое порождение Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[21127] = {
					"Шквальник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[137805] = {
					"Black Blood", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[160704] = {
					"Капля Бездны в письме", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17083] = {
					"Новообращенный орк Скверны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136664] = {
					"Sepisko", -- [1]
					"Око Бури", -- [2]
				},
				[129776] = {
					"Faithless Spireguard", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Гробница королей", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[151754] = {
					"Блуждающее порождение Бездны", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[18314] = {
					"Ловчий нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[151755] = {
					"Темная гончая", -- [1]
					"Изумрудный Сон – сценарий Сердца Азерот", -- [2]
				},
				[18394] = {
					"Эфириал-призрак", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[153532] = {
					"Акир - подчинитель разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[95771] = {
					"Грозный разрушитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
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
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[25740] = {
					"Ахун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17252] = {
					"HaaKrill", -- [1]
					"Гробница королей", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[16700] = {
					"Легионер клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[21104] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[20904] = {
					"Начальник тюрьмы Мелличар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Око Бури", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[144293] = {
					"Переработчик отходов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[17835] = {
					"Убийца из рода Бесконечности", -- [1]
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
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[106319] = {
					"Тотем огнезола", -- [1]
					"Храм Котмогу", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158035] = {
					"Магистр Умбрий", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158411] = {
					"Нестабильный слуга", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151634] = {
					"Моторилла", -- [1]
					"Храм Котмогу", -- [2]
				},
				[95769] = {
					"Бешеная визгунья", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[95766] = {
					"Обезумевший остроклюв", -- [1]
					"Чаща Темного Сердца", -- [2]
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
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[17356] = {
					"Ползучий слизнюк", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[17420] = {
					"Язычник из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[123093] = {
					"Scalehide", -- [1]
					"Око Бури", -- [2]
				},
				[151640] = {
					"Неисправный хламобот", -- [1]
					"Храм Котмогу", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
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
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
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
				[20857] = {
					"Защитник Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[63508] = {
					"Сюэнь", -- [1]
					"Око Бури", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[151639] = {
					"Crazed Gyreworm", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[21128] = {
					"Скат резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[17964] = {
					"Рабочий-бродяга пустошей", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158157] = {
					"Владыка Матиас Шоу", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[100820] = {
					"Ящер-элементаль", -- [1]
					"Гробница королей", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
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
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[19307] = {
					"Ужасень Нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[155656] = {
					"Миша", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
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
				[40446] = {
					"Скар'тис Призыватель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17357] = {
					"Ползучий слизнюченыш", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[130832] = {
					"Strawberry", -- [1]
					"Око Бури", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[95772] = {
					"Разъяренный коготь ночи", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[103344] = {
					"Дубосерд", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[20886] = {
					"Провидец Гнева Соккорат", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[152396] = {
					"Защитник Азерот", -- [1]
					"Око Бури", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[55659] = {
					"Дикий бес", -- [1]
					"Гробница королей", -- [2]
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
				[160061] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[24664] = {
					"Кель'тас Солнечный Скиталец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[20866] = {
					"Пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20885] = {
					"Даллия Глашатай Судьбы", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17670] = {
					"Псарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[16507] = {
					"Караульный из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[25756] = {
					"Холодная волна Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[99192] = {
					"Тень Ксавия", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[21140] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[24684] = {
					"Рыцарь крови Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24745] = {
					"Чистая энергия", -- [1]
					"Терраса Магистров", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[17817] = {
					"Большой крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
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
				[18983] = {
					"Чернозубый тарантул", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[17816] = {
					"Крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[140593] = {
					"Restless Horror", -- [1]
					"The Underrot", -- [2]
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
				[157608] = {
					"Безликий сокрушитель воли", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
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
				[24686] = {
					"Чернокнижник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24560] = {
					"Жрица Делрисса", -- [1]
					"Терраса Магистров", -- [2]
				},
				[20898] = {
					"Чудовищный магматический инфернал", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[157349] = {
					"Вепрь Бездны", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[161244] = {
					"Кровь Заразителя", -- [1]
					"Вольная Гавань", -- [2]
				},
				[95072] = {
					"Большой элементаль земли", -- [1]
					"Храм Котмогу", -- [2]
				},
				[20867] = {
					"Дозорный Смерти", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[112732] = {
					"Дитя Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[16808] = {
					"Вождь Каргат Острорук", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[102397] = {
					"Могучий повелитель гнева", -- [1]
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
				[112733] = {
					"Ядошкурый тенеткач", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[152833] = {
					"Азеритовый гигант", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
				},
				[152835] = {
					"Кристаллизированный азерит", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[20208] = {
					"Исцеляющий идол Менну", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[17879] = {
					"Повелитель времени Дежа", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[164188] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17941] = {
					"Менну Предатель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[21138] = {
					"Палач из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
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
				[151798] = {
					"Вексиона", -- [1]
					"Восточные королевства – Гранатовый Редут – Сценарий Сердца Азерот", -- [2]
				},
				[17938] = {
					"Наблюдатель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[125828] = {
					"Ozric", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152866] = {
					"Затвердевший азерит", -- [1]
					"Водоворот – Сердце Азерот", -- [2]
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
				[164815] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259489] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[306474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Паладыч",
					["npcID"] = 0,
				},
				[8222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[1543] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[315176] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волькмар-Азурегос",
					["npcID"] = 0,
				},
				[255141] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абрикок",
					["npcID"] = 0,
				},
				[312107] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дикий бес",
					["npcID"] = 55659,
				},
				[255909] = {
					["source"] = "Тэблита",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313643] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Душахаоса",
					["npcID"] = 0,
				},
				[315179] = {
					["source"] = "Литна",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Notyou-Kazzak",
					["npcID"] = 0,
				},
				[255654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Humff-Draenor",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Полемизм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 156472,
				},
				[314671] = {
					["source"] = "Сквиртохил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аматет-лучник",
					["npcID"] = 151800,
				},
				[270661] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[288573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[301367] = {
					["source"] = "Диндриль",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259495] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[312627] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вескан Падший",
					["npcID"] = 154394,
				},
				[92166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пиретия",
					["npcID"] = 0,
				},
				[118905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тотем конденсации",
					["npcID"] = 61245,
				},
				[6552] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223929] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Biscornu-Archimonde",
					["npcID"] = 0,
				},
				[200389] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Ноэльрат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азазаши-Гордунни",
					["npcID"] = 0,
				},
				[301884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воландир-Гордунни",
					["npcID"] = 0,
				},
				[335148] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[335149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[158939] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ядовитый угорь",
					["npcID"] = 127600,
				},
				[301886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паладыч",
					["npcID"] = 0,
				},
				[45524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аратуон-Азурегос",
					["npcID"] = 0,
				},
				[194506] = {
					["source"] = "Тайя Морской Завыватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139980,
				},
				[270670] = {
					["type"] = "BUFF",
					["source"] = "Арчимаг-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316216] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воспеватель Бездны из Глубинного улья",
					["npcID"] = 163704,
				},
				[124280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Caremuerto-Exodar",
					["npcID"] = 0,
				},
				[158940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 127600,
				},
				[33690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Душахаоса",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[313148] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Горнолес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Ноэльрат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Теронар-ЧерныйШрам",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Арчсовух",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Майтик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197835] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Кензор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хкайфатх",
					["npcID"] = 0,
				},
				[313663] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[190927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[298823] = {
					["source"] = "Сябар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257455] = {
					["type"] = "BUFF",
					["source"] = "Вальзи",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Дантерсмонха",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309571] = {
					["type"] = "BUFF",
					["source"] = "Медодав",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[314689] = {
					["source"] = "Сквиртохил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273238] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demonjah-Medivh",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Арьтэмида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291150] = {
					["source"] = "Алконостия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Войско мертвых",
					["npcID"] = 24207,
				},
				[228287] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[64844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[232893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[267611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[290640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пилатес-СтражСмерти",
					["npcID"] = 0,
				},
				[3561] = {
					["source"] = "Кайтлин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Astrdh-Outland",
					["npcID"] = 0,
				},
				[267612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[286547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ирбид-Гордунни",
					["npcID"] = 0,
				},
				[309065] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саба-ток",
					["npcID"] = 157286,
				},
				[295248] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[256691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[203981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дарркнэс-Дракономор",
					["npcID"] = 0,
				},
				[305996] = {
					["source"] = "Медоносец-роевик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154113,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[272733] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэдпуул-ЧерныйШрам",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айболишка",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[303439] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156265,
				},
				[198097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ситаджа-Гордунни",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278876] = {
					["source"] = "Деладдра-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[280412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[298836] = {
					["source"] = "Горнолес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196819] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Ноэльрат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Найссик",
					["npcID"] = 0,
				},
				[288091] = {
					["source"] = "Мразолюшн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302932] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207311] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[213708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луими",
					["npcID"] = 0,
				},
				[298839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bëyond-Kazzak",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Мка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Омикрош-Дракономор",
					["npcID"] = 0,
				},
				[295258] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[298841] = {
					["source"] = "Льювагрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[260279] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[214222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[279397] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Читерсон",
					["npcID"] = 0,
				},
				[260280] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[314709] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Рэху",
					["npcID"] = 151852,
				},
				[303451] = {
					["source"] = "Векемара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152671,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[300893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Велебор",
					["npcID"] = 0,
				},
				[125439] = {
					["source"] = "Иридана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262513] = {
					["source"] = "Огнелетчица Торговой компании",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133436,
				},
				[279913] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лассе-Подземье",
					["npcID"] = 0,
				},
				[288613] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ситаджа-Гордунни",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brodsky-Kazzak",
					["npcID"] = 0,
				},
				[262515] = {
					["source"] = "Огнелетчица Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[1953] = {
					["source"] = "Остапушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Галкиан-СвежевательДуш",
					["npcID"] = 0,
				},
				[207317] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biscornu-Archimonde",
					["npcID"] = 0,
				},
				[52437] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Walïe-Silvermoon",
					["npcID"] = 0,
				},
				[273264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[117892] = {
					["source"] = "Соленоплавниковый пловец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126682,
				},
				[274289] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Astrdh-Outland",
					["npcID"] = 0,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[314718] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[498] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Квакеру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278897] = {
					["type"] = "BUFF",
					["source"] = "Нись-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[314721] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Рэху",
					["npcID"] = 151852,
				},
				[193759] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ингиора",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[302952] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Линалинн",
					["npcID"] = 0,
				},
				[272250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Призрак глубин",
					["npcID"] = 138288,
				},
				[198111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[2050] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[256451] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Healplug-Ravencrest",
					["npcID"] = 0,
				},
				[115080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 0,
				},
				[286581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[256452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хелия",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[296819] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Калашикпал-Азурегос",
					["npcID"] = 0,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[296820] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Калашикпал-Азурегос",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Полемизм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300403] = {
					["type"] = "BUFF",
					["source"] = "Клубящийся солдат",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152687,
				},
				[310127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сбежавший мутант",
					["npcID"] = 157267,
				},
				[298357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[278911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[273794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[313199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зловонный ихор",
					["npcID"] = 153907,
				},
				[272260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[257223] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Древоклык-охотник",
					["npcID"] = 129624,
				},
				[314224] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Вицея",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinikgozin",
					["npcID"] = 17252,
				},
				[257480] = {
					["encounterID"] = 2106,
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235219] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[262540] = {
					["source"] = "Техник-эксперт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[257225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 129624,
				},
				[257481] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129883,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[200166] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Energidrik-TwistingNether",
					["npcID"] = 0,
				},
				[212704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меилис-Гордунни",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Муррчащая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Энташелар",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaì-TwistingNether",
					["npcID"] = 0,
				},
				[586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бросха-Азурегос",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Арьтэмида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinikgozin",
					["npcID"] = 17252,
				},
				[299905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brodsky-Kazzak",
					["npcID"] = 0,
				},
				[16953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[260811] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[309118] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Звездный пилон",
					["npcID"] = 158568,
				},
				[54680] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рита",
					["npcID"] = 71529,
				},
				[300419] = {
					["type"] = "BUFF",
					["source"] = "Куалина Ледяное Копье",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153310,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klipklap-LaughingSkull",
					["npcID"] = 0,
				},
				[50842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[300420] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шаровая молния",
					["npcID"] = 152684,
				},
				[199658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[259277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 18130,
				},
				[259533] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Гледа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262092] = {
					["source"] = "Одурманенный вышибала",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130435,
				},
				[34914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[260813] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[272276] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[273301] = {
					["source"] = "Пробужденная стражница моря",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138859,
				},
				[14030] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[316801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[275863] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Юким-Гордунни",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Алезотто",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Пранкерша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270235] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эския",
					["npcID"] = 0,
				},
				[232670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[171516] = {
					["source"] = "Мохноухая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263583] = {
					["source"] = "Надсмотрщик Аскари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[268702] = {
					["type"] = "BUFF",
					["source"] = "Каменный яростень",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[269214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[260787] = {
					["source"] = "Чистелла-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267637] = {
					["source"] = "Нагорный вендиго",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131513,
				},
				[287638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Damoartea-Boulderfist",
					["npcID"] = 0,
				},
				[263586] = {
					["source"] = "Надсмотрщик Аскари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[206803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[268704] = {
					["source"] = "Каменный яростень",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[25046] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tallesarin-Ragnaros",
					["npcID"] = 0,
				},
				[183436] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[117828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лассе-Подземье",
					["npcID"] = 0,
				},
				[171522] = {
					["source"] = "Мохноухая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147650] = {
					["source"] = "Шаловливый хорек",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143361,
				},
				[273570] = {
					["source"] = "Пеплохвостый бандинот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142454,
				},
				[268194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[315787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[267171] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[208284] = {
					["type"] = "BUFF",
					["source"] = "Гленнсаттер-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34189] = {
					["type"] = "BUFF",
					["source"] = "Шаловливый хорек",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143361,
				},
				[131347] = {
					["source"] = "Ктопервый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Зиистер",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skavette-Hyjal",
					["npcID"] = 0,
				},
				[213995] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пухлинка-Разувий",
					["npcID"] = 0,
				},
				[259285] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Бузони",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[271272] = {
					["source"] = "Шериф дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130008,
				},
				[268709] = {
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[255852] = {
					["source"] = "Меднохвостая лиса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131387,
				},
				[316814] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263897] = {
					["source"] = "Зубастый бобр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[53595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[202744] = {
					["type"] = "BUFF",
					["source"] = "Ртеаа-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259798] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131663,
				},
				[190456] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ceef-Ragnaros",
					["npcID"] = 0,
				},
				[12975] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Пранкерша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[268712] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130653,
				},
				[87840] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225603] = {
					["type"] = "BUFF",
					["source"] = "Амнон-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299445] = {
					["type"] = "BUFF",
					["source"] = "Омбри-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mylla-Nemesis",
					["npcID"] = 0,
				},
				[135700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[271784] = {
					["encounterID"] = 2105,
					["source"] = "Футбомбная хулиганка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138369,
				},
				[272296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[204019] = {
					["source"] = "Theredrít-DunModr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[192249] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[193078] = {
					["type"] = "BUFF",
					["source"] = "Скрытный головорез",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135418,
				},
				[278213] = {
					["source"] = "Ополченка из ордена Возрождения Шторма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136666,
				},
				[295838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "Скрытный головорез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136703,
				},
				[212792] = {
					["type"] = "DEBUFF",
					["source"] = "Селест-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ыич",
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
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[274346] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[273323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[268518] = {
					["type"] = "BUFF",
					["source"] = "Селест-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316823] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pja-Kazzak",
					["npcID"] = 0,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[295842] = {
					["source"] = "Отецгода",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Селест-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273293] = {
					["source"] = "Макфрид-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ban'thalos",
					["npcID"] = 54320,
				},
				[306795] = {
					["type"] = "BUFF",
					["source"] = "Медодав",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[306539] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Pja-Kazzak",
					["npcID"] = 0,
				},
				[303520] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[176644] = {
					["type"] = "BUFF",
					["source"] = "Соннаялапа",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316826] = {
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[306511] = {
					["source"] = "Медодав",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154154,
				},
				[184662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[267362] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135985,
				},
				[273345] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138859,
				},
				[315292] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ученая из Лиги исследователей",
					["npcID"] = 161938,
				},
				[272817] = {
					["source"] = "Сильверри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исмера-Гордунни",
					["npcID"] = 0,
				},
				[269747] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[257597] = {
					["type"] = "BUFF",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129227,
				},
				[236776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[279471] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Midñíght-Silvermoon",
					["npcID"] = 0,
				},
				[273842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Donsalust-Medivh",
					["npcID"] = 0,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Theoldrin-Sylvanas",
					["npcID"] = 0,
				},
				[147732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[287660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mylla-Nemesis",
					["npcID"] = 0,
				},
				[260829] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132338,
				},
				[266249] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295337] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Glywar-Kazzak",
					["npcID"] = 0,
				},
				[57755] = {
					["encounterID"] = 2105,
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[311202] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[260318] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[269239] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Воробык",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295339] = {
					["source"] = "Муррчащая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93985] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[271456] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[115181] = {
					["source"] = "Лезгинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gutalax-Kazzak",
					["npcID"] = 0,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[303017] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xalizi-ArgentDawn",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Лезгинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117526] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[316835] = {
					["source"] = "Искаженный отросток",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[300971] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[317859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Иридана",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[260643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[295343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["type"] = "BUFF",
					["source"] = "Бладмун-Гром",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[295029] = {
					["type"] = "BUFF",
					["source"] = "Малый зоатроид",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152067,
				},
				[59547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Распутица",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[180750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дантээс",
					["npcID"] = 0,
				},
				[300557] = {
					["type"] = "BUFF",
					["source"] = "Куалина Ледяное Копье",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153310,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[3110] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Abatik",
					["npcID"] = 416,
				},
				[213241] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[45438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[313571] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["source"] = "Полемизм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243435] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[304228] = {
					["source"] = "Куалина Ледяное Копье",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153310,
				},
				[299801] = {
					["type"] = "DEBUFF",
					["source"] = "Шаман из клана Клинков Волн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154304,
				},
				[216251] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[56641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[196941] = {
					["type"] = "DEBUFF",
					["source"] = "Celkaa-Eonar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[318378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[86603] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154172,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[213243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Бузони",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[89766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vinikgozin",
					["npcID"] = 17252,
				},
				[8690] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[19483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Инфернал",
					["npcID"] = 89,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэдиэн",
					["npcID"] = 0,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[303593] = {
					["type"] = "BUFF",
					["source"] = "Ширакесс-поработитель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152724,
				},
				[300409] = {
					["type"] = "BUFF",
					["source"] = "Кассар Клинок Бездны",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153303,
				},
				[273348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[275907] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[244808] = {
					["source"] = "Песчаный краб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145337,
				},
				[303563] = {
					["source"] = "Малый зоатроид",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153504,
				},
				[83242] = {
					["source"] = "Крымскийпес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260838] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274373] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[319919] = {
					["source"] = "Вифсаида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сильверспун",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[818] = {
					["source"] = "Крымскийпес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298117] = {
					["source"] = "Яйцо Безжалостного",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153501,
				},
				[304056] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[263628] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136139,
				},
				[299763] = {
					["type"] = "BUFF",
					["source"] = "Шаман из клана Клинков Волн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154304,
				},
				[278981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[270882] = {
					["type"] = "DEBUFF",
					["source"] = "Азеритовая футбомба",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[269914] = {
					["source"] = "Клубящийся солдат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152687,
				},
				[307128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Coops-TwistingNether",
					["npcID"] = 0,
				},
				[1776] = {
					["source"] = "Superkileur-Chantséternels",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303319] = {
					["source"] = "Векемара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152671,
				},
				[277959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[257258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 129768,
				},
				[113858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohi-Kazzak",
					["npcID"] = 0,
				},
				[277960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[300989] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[299753] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[236021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298431] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[185358] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[285500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[33786] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gutalax-Kazzak",
					["npcID"] = 0,
				},
				[207203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[318391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Великий потусторонний червь",
					["npcID"] = 152550,
				},
				[845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[296759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Помбол-СвежевательДуш",
					["npcID"] = 0,
				},
				[6770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[200200] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[29175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ариадея",
					["npcID"] = 0,
				},
				[299742] = {
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154297,
				},
				[33917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Borelee-Draenor",
					["npcID"] = 0,
				},
				[256493] = {
					["type"] = "BUFF",
					["source"] = "Азеритовая футбомба",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[263636] = {
					["source"] = "Одурманенный вышибала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[317370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Анауа",
					["npcID"] = 151883,
				},
				[297412] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299746] = {
					["source"] = "Шаман из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154304,
				},
				[263637] = {
					["source"] = "Одурманенный вышибала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[211793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Halama-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299747] = {
					["source"] = "Шаман из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154304,
				},
				[303491] = {
					["type"] = "DEBUFF",
					["source"] = "Векемара",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152671,
				},
				[279555] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[295367] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[196742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[16739] = {
					["type"] = "BUFF",
					["source"] = "Айкё-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295368] = {
					["source"] = "Тэблита",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264353] = {
					["type"] = "BUFF",
					["source"] = "Halama-Dalaran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277969] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[51490] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[871] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaì-TwistingNether",
					["npcID"] = 0,
				},
				[299761] = {
					["type"] = "BUFF",
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рюджинджакка",
					["npcID"] = 0,
				},
				[299762] = {
					["type"] = "BUFF",
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[49966] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Копытень",
					["npcID"] = 86000,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[54049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraaphom",
					["npcID"] = 417,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Льювагрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256694] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[113656] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Крымскийпес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272090] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гендэл-Дракономор",
					["npcID"] = 0,
				},
				[51690] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295373] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[198670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hrkronborg-ChamberofAspects",
					["npcID"] = 0,
				},
				[65116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[176087] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[33943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Танталлета",
					["npcID"] = 0,
				},
				[278999] = {
					["source"] = "Мукуро",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[251832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тиаф-Дракономор",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[315681] = {
					["source"] = "Алезотто",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бухтовый крепкозуб",
					["npcID"] = 123226,
				},
				[110744] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бросха-Азурегос",
					["npcID"] = 0,
				},
				[204301] = {
					["type"] = "DEBUFF",
					["source"] = "Celkaa-Eonar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Элулу-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256756] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нинзь",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[216328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[208652] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[116768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ямачки-Гордунни",
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
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[226052] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саванный лев",
					["npcID"] = 151809,
				},
				[263103] = {
					["source"] = "Ленивый лаборант",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[204255] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дарркнэс-Дракономор",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Синкризель",
					["npcID"] = 0,
				},
				[260103] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 43929,
				},
				[297941] = {
					["source"] = "Вицея",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Скверняша",
					["npcID"] = 0,
				},
				[280542] = {
					["source"] = "Агриблин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[303438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Угамонитель",
					["npcID"] = 0,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аратуон-Азурегос",
					["npcID"] = 0,
				},
				[295384] = {
					["source"] = "Тэблита",
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
				[273714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[311249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Авалн",
					["npcID"] = 0,
				},
				[132404] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310226] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Склизень",
					["npcID"] = 154106,
				},
				[267433] = {
					["source"] = "Механожокей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пандаренонек-Дракономор",
					["npcID"] = 0,
				},
				[110645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сердюк-Дракономор",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алексид",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[104773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[275429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Speranza-Lothar",
					["npcID"] = 0,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[317376] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вармех-Азурегос",
					["npcID"] = 0,
				},
				[293671] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гендэл-Дракономор",
					["npcID"] = 0,
				},
				[152108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алексид",
					["npcID"] = 0,
				},
				[203795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дарркнэс-Дракономор",
					["npcID"] = 0,
				},
				[271903] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[212423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[280212] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280549] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Леопольдкот",
					["npcID"] = 0,
				},
				[301531] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[34477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kunhunter-TwistingNether",
					["npcID"] = 0,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[86659] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[202461] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[256434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Санддрэ-Азурегос",
					["npcID"] = 0,
				},
				[304603] = {
					["source"] = "Лореллейн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[163505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[203285] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исмера-Гордунни",
					["npcID"] = 0,
				},
				[5211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[88625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[304605] = {
					["type"] = "DEBUFF",
					["source"] = "Xènya-Ysera",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255996] = {
					["encounterID"] = 2105,
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tandri-Alleria",
					["npcID"] = 0,
				},
				[308188] = {
					["source"] = "Алезотто",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[233496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[308189] = {
					["source"] = "Уман",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[170950] = {
					["source"] = "Элууния",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[100780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Леркакокетка-Гордунни",
					["npcID"] = 0,
				},
				[146739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Полемизм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Усилачка",
					["npcID"] = 0,
				},
				[63106] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[194844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[157644] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Акж-Азурегос",
					["npcID"] = 0,
				},
				[270323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[16595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[107570] = {
					["encounterID"] = 2105,
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145205] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186401] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Рэху",
					["npcID"] = 151852,
				},
				[304612] = {
					["source"] = "Лореллейн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Летучая мышь",
					["npcID"] = 128547,
				},
				[287379] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xshxyxn-Kazzak",
					["npcID"] = 0,
				},
				[260249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[274420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohi-Kazzak",
					["npcID"] = 0,
				},
				[257946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[236298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261886] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ядокровый скорпид",
					["npcID"] = 162380,
				},
				[315362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Healplug-Ravencrest",
					["npcID"] = 0,
				},
				[236299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Скеллор-Ревущийфьорд",
					["npcID"] = 0,
				},
				[252358] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вармех-Азурегос",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[8122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Klipklap-LaughingSkull",
					["npcID"] = 0,
				},
				[314852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хик-тен надсмотрщик",
					["npcID"] = 151995,
				},
				[270330] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глыба азерита",
					["npcID"] = 141976,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[207386] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278134] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Трудягус",
					["npcID"] = 0,
				},
				[235021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maziuzh-Kazzak",
					["npcID"] = 0,
				},
				[271867] = {
					["type"] = "DEBUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[274426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[268797] = {
					["source"] = "Алхимик Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[108843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[121253] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[212431] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hrkronborg-ChamberofAspects",
					["npcID"] = 0,
				},
				[194594] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[270846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ядокровый скорпид",
					["npcID"] = 162380,
				},
				[298025] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Послушник культа Приверженцев Тени",
					["npcID"] = 156463,
				},
				[193315] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270335] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[257284] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[126755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абессалом",
					["npcID"] = 0,
				},
				[314858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Командир разведчиков Мосвен",
					["npcID"] = 152040,
				},
				[253595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крафтледад",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269313] = {
					["source"] = "Бесшабашная подрывница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[193316] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[49376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[155722] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[254471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorëmios-KirinTor",
					["npcID"] = 0,
				},
				[314861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 158632,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лантана",
					["npcID"] = 0,
				},
				[312814] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[33697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287712] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[199203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[280866] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðevere-ArgentDawn",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraaphom",
					["npcID"] = 417,
				},
				[853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[271877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[125070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Итанра",
					["npcID"] = 0,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tandri-Alleria",
					["npcID"] = 0,
				},
				[254473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[269831] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[204066] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[257544] = {
					["type"] = "DEBUFF",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[1122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[184364] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мидзу",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[294909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bëyond-Kazzak",
					["npcID"] = 0,
				},
				[268810] = {
					["source"] = "Подопытная крыса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[258622] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[79140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Деладдра-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ингиора",
					["npcID"] = 0,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[81340] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[203812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мелостор-Гордунни",
					["npcID"] = 0,
				},
				[35079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kunhunter-TwistingNether",
					["npcID"] = 0,
				},
				[199603] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Пранкерша",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280583] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[160058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Копытень",
					["npcID"] = 86000,
				},
				[1160] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205604] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скверняша",
					["npcID"] = 0,
				},
				[132168] = {
					["source"] = "Мукуро",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Телевизоор-Азурегос",
					["npcID"] = 0,
				},
				[291843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[300543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 154261,
				},
				[184367] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268815] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[271374] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Theoldrin-Sylvanas",
					["npcID"] = 0,
				},
				[122281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэкилко",
					["npcID"] = 0,
				},
				[132169] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Humff-Draenor",
					["npcID"] = 0,
				},
				[280404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Скеллор-Ревущийфьорд",
					["npcID"] = 0,
				},
				[116849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[118699] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[219167] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лишайниковый завролиск",
					["npcID"] = 123868,
				},
				[2379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пухлинка-Разувий",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[273424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233497] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Icydrud-TwistingNether",
					["npcID"] = 0,
				},
				[79176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Краб-быстроступ",
					["npcID"] = 123236,
				},
				[309760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сенбу, глава прайда",
					["npcID"] = 151948,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hermischneid-Lordaeron",
					["npcID"] = 0,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ацеракис-Ревущийфьорд",
					["npcID"] = 0,
				},
				[233498] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[273453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drainbrainer-ChamberofAspects",
					["npcID"] = 0,
				},
				[271115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fagol-Rexxar",
					["npcID"] = 0,
				},
				[267798] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[315391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[309762] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сенбу, глава прайда",
					["npcID"] = 151948,
				},
				[118000] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дармирдин-Азурегос",
					["npcID"] = 0,
				},
				[233499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[268311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zotacnine-Silvermoon",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[187698] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Помбол-СвежевательДуш",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сильверспун",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Depo-Kazzak",
					["npcID"] = 0,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["source"] = "Похмелл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[268314] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zotacnine-Silvermoon",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[53] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[259856] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[294926] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mucko",
					["npcID"] = 151147,
				},
				[281621] = {
					["source"] = "Механожокей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[228128] = {
					["source"] = "Рексклон",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Воробык",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[202797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[12323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Андалусия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Амтая",
					["npcID"] = 0,
				},
				[33076] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Крымскийпес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[208683] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[300142] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Душахаоса",
					["npcID"] = 0,
				},
				[263202] = {
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[213771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[280602] = {
					["source"] = "Механожокей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130488,
				},
				[197937] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[285720] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валтиэр-Гордунни",
					["npcID"] = 0,
				},
				[208684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[318216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[288803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[285721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тестунк-Галакронд",
					["npcID"] = 0,
				},
				[2643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меилис-Гордунни",
					["npcID"] = 0,
				},
				[280604] = {
					["source"] = "Продавщица закусок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[204079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[280605] = {
					["source"] = "Продавщица закусок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[58984] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["npcID"] = 0,
				},
				[48108] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торадорра-Гордунни",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[287771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Квантумх-Дракономор",
					["npcID"] = 0,
				},
				[77764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[314121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 156457,
				},
				[235313] = {
					["source"] = "Сильверри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Полемизм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[14914] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Бросха-Азурегос",
					["npcID"] = 0,
				},
				[280608] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зиалонг",
					["npcID"] = 0,
				},
				[283167] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[263209] = {
					["source"] = "Кобольд-рудокоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130437,
				},
				[279490] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[107574] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[30108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[272934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Metapor-Sunstrider",
					["npcID"] = 0,
				},
				[319237] = {
					["source"] = "Спартаз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ученая из Лиги исследователей",
					["npcID"] = 161938,
				},
				[313363] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Щупальце ужаса",
					["npcID"] = 160676,
				},
				[212283] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[29166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[288800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[68298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[264667] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Скат",
					["npcID"] = 145967,
				},
				[263725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Остапушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[290337] = {
					["type"] = "BUFF",
					["source"] = "Джогос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Поганище",
					["npcID"] = 149555,
				},
				[187708] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[132951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сланцевый паук",
					["npcID"] = 49815,
				},
				[2823] = {
					["source"] = "Пранкерша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289315] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Солдат из Глубинного улья",
					["npcID"] = 163703,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[268362] = {
					["source"] = "Бесшабашная подрывница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[160331] = {
					["source"] = "Ктопервый",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["source"] = "Вальзи",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Усилачка",
					["npcID"] = 0,
				},
				[285719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dashmaster-Kazzak",
					["npcID"] = 0,
				},
				[264106] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[316893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рамкахен-легионер",
					["npcID"] = 152134,
				},
				[11540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[262940] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[279572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[271920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[197690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Селамерекс",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 95072,
				},
				[275378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[23922] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Авалн",
					["npcID"] = 0,
				},
				[272945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[79175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Краб-быстроступ",
					["npcID"] = 123236,
				},
				[288675] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[279194] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[263840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wolf",
					["npcID"] = 42717,
				},
				[272435] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гончая Тьмы",
					["npcID"] = 136408,
				},
				[73920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[209749] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[210598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Этерейя",
					["npcID"] = 0,
				},
				[308891] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хик-тен надсмотрщик",
					["npcID"] = 151995,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[271698] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[1490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Льювагрим",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Арчсовух",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dxbzz-Kazzak",
					["npcID"] = 0,
				},
				[201787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[268856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brodsky-Kazzak",
					["npcID"] = 0,
				},
				[287827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dàwzb-Ner'zhul",
					["npcID"] = 0,
				},
				[196414] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gohi-Kazzak",
					["npcID"] = 0,
				},
				[281036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maziuzh-Kazzak",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[100784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Эдуардович",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hongshaorou-TwistingNether",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tandri-Alleria",
					["npcID"] = 0,
				},
				[298343] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50259] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[115767] = {
					["source"] = "Мукуро",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260384] = {
					["source"] = "Амбаттэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Войско мертвых",
					["npcID"] = 24207,
				},
				[273977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[279416] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Pythzilla-Ravencrest",
					["npcID"] = 0,
				},
				[130736] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[276025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[299054] = {
					["type"] = "BUFF",
					["source"] = "Декалиус-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["source"] = "Соратник-кузнец - Альянс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88403,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Ноэльрат",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thelasthope-Kazzak",
					["npcID"] = 0,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[290500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[267367] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[272723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pythzilla-Ravencrest",
					["npcID"] = 0,
				},
				[281178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[287062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[90361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ban'thalos",
					["npcID"] = 54320,
				},
				[118455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[116844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[280635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Мка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[221885] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[267537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[115385] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Донный охотник",
					["npcID"] = 133285,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[189869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Стражница экспедиции",
					["npcID"] = 139090,
				},
				[294966] = {
					["source"] = "Спартаз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[287802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[158806] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140938,
				},
				[100] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268846] = {
					["source"] = "Испытатель экспериментального оружия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[310832] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Призванный древоклык",
					["npcID"] = 134029,
				},
				[270424] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Песчаный бегун - падальщик",
					["npcID"] = 151945,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[270339] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[101546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[115356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[269099] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[273988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[303158] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Занш'ир - чешуйчатый страж",
					["npcID"] = 152881,
				},
				[194384] = {
					["source"] = "Майтик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[126389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дармирдин-Азурегос",
					["npcID"] = 0,
				},
				[191837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[263215] = {
					["source"] = "Каменный яростень",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[225080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[303160] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Занш'ир - чешуйчатый страж",
					["npcID"] = 152881,
				},
				[201427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[301308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тактамыш",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Энлея",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287809] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вармех-Азурегос",
					["npcID"] = 0,
				},
				[113724] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[46968] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Damoartea-Boulderfist",
					["npcID"] = 0,
				},
				[248622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[48778] = {
					["source"] = "Максвейзер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Акромегалия-Азурегос",
					["npcID"] = 0,
				},
				[314685] = {
					["source"] = "Сквиртохил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Титивити-СвежевательДуш",
					["npcID"] = 0,
				},
				[6668] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[268877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[260669] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[205636] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Borelee-Draenor",
					["npcID"] = 0,
				},
				[185422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[3355] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лассе-Подземье",
					["npcID"] = 0,
				},
				[228537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[59052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[289349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[62124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[69179] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Glywar-Kazzak",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[208679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 105374,
				},
				[296003] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Машавейха",
					["npcID"] = 0,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[262412] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136139,
				},
				[772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Walïe-Silvermoon",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[109248] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[198222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Melgush-Kazzak",
					["npcID"] = 0,
				},
				[280653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Speranza-Lothar",
					["npcID"] = 0,
				},
				[303211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Летучая мышь",
					["npcID"] = 128547,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[257582] = {
					["encounterID"] = 2106,
					["source"] = "Земляной яростень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[256690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[262232] = {
					["type"] = "BUFF",
					["source"] = "Bator-Durotan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[6940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воландир-Гордунни",
					["npcID"] = 0,
				},
				[193358] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301126] = {
					["type"] = "DEBUFF",
					["source"] = "Кассар Клинок Бездны",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153303,
				},
				[213405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[308979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Сен-мат",
					["npcID"] = 157167,
				},
				[64044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275540] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[193359] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алексид",
					["npcID"] = 0,
				},
				[160839] = {
					["source"] = "Ауринко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[297035] = {
					["source"] = "Сикрайла-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267354] = {
					["source"] = "Наемный убийца",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[102351] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Песчаный бегун - падальщик",
					["npcID"] = 151945,
				},
				[212295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pollutious-Sylvanas",
					["npcID"] = 0,
				},
				[192081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[280149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Metalhawk-ArgentDawn",
					["npcID"] = 0,
				},
				[288849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Thelasthope-Kazzak",
					["npcID"] = 0,
				},
				[33254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волкочеловек-Дракономор",
					["npcID"] = 0,
				},
				[263262] = {
					["encounterID"] = 2105,
					["source"] = "Сланцеед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134005,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cat",
					["npcID"] = 42718,
				},
				[270427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Песчаный бегун - падальщик",
					["npcID"] = 151945,
				},
				[83244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Помбол-СвежевательДуш",
					["npcID"] = 0,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Морркартху-Гордунни",
					["npcID"] = 0,
				},
				[102342] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зловещий охотник",
					["npcID"] = 98035,
				},
				[268893] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Альдраан",
					["npcID"] = 0,
				},
				[205644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Древень",
					["npcID"] = 103822,
				},
				[297040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Иж-Дракономор",
					["npcID"] = 0,
				},
				[266779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[281413] = {
					["source"] = "Хлонона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biscornu-Archimonde",
					["npcID"] = 0,
				},
				[260402] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ourtof-Hyjal",
					["npcID"] = 0,
				},
				[116841] = {
					["source"] = "Полише",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305252] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[1822] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[48181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[271107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tallesarin-Ragnaros",
					["npcID"] = 0,
				},
				[5277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[136] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wiretapped-Kazzak",
					["npcID"] = 0,
				},
				[156774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг Оплота Чести",
					["npcID"] = 150122,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[78675] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[106785] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nabe-Ragnaros",
					["npcID"] = 0,
				},
				[61295] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[1856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[264774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arkanista-Nemesis",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209967] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 105419,
				},
				[271105] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[313424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вармех-Азурегос",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[287837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Тукеи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[118038] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[303344] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[49821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Healplug-Ravencrest",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263275] = {
					["type"] = "BUFF",
					["source"] = "Надсмотрщик Аскари",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[312915] = {
					["source"] = "Угрозка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206891] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263276] = {
					["type"] = "DEBUFF",
					["source"] = "Надсмотрщик Аскари",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[106951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["source"] = "Энлея",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257593] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[280165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gutalax-Kazzak",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[271466] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Машавейха",
					["npcID"] = 0,
				},
				[13877] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307289] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вескан Падший",
					["npcID"] = 154394,
				},
				[120] = {
					["source"] = "Селест-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[318227] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Пластишка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[209746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Borelee-Draenor",
					["npcID"] = 0,
				},
				[185438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[268910] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[314698] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вук'лаз Землелом",
					["npcID"] = 160970,
				},
				[192106] = {
					["source"] = "Тормарин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lorëmios-KirinTor",
					["npcID"] = 0,
				},
				[268911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[257044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэдпуул-ЧерныйШрам",
					["npcID"] = 0,
				},
				[280170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[15572] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[247121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arvanah-BurningLegion",
					["npcID"] = 0,
				},
				[308969] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Защитник Сен-мат",
					["npcID"] = 157167,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313948] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Húhú-Nethersturm",
					["npcID"] = 0,
				},
				[312413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аматет-фанатик",
					["npcID"] = 151801,
				},
				[261947] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coops-TwistingNether",
					["npcID"] = 0,
				},
				[305249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[287338] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Хлонона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["source"] = "Арьтэмида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[134522] = {
					["source"] = "Талаж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 156854,
				},
				[94160] = {
					["source"] = "Муррчащая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ивел-Гордунни",
					["npcID"] = 0,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[281711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodali-Kazzak",
					["npcID"] = 0,
				},
				[257620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэдпуул-ЧерныйШрам",
					["npcID"] = 0,
				},
				[246852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[123586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Квантумх-Дракономор",
					["npcID"] = 0,
				},
				[260372] = {
					["source"] = "Огнелетчица Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[276083] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Безшума-Гордунни",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thulkresh",
					["npcID"] = 1860,
				},
				[199260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dxbzz-Kazzak",
					["npcID"] = 0,
				},
				[199721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[273526] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[287471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[262268] = {
					["source"] = "Алхимик Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[205146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[197214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[122278] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Steelish-Blackhand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[274443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Андалусия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262270] = {
					["source"] = "Алхимик Торговой компании",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133432,
				},
				[115175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[51124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[248646] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Depo-Kazzak",
					["npcID"] = 0,
				},
				[286835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nabe-Ragnaros",
					["npcID"] = 0,
				},
				[314083] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевшая защитница Хоцзинь",
					["npcID"] = 159335,
				},
				[304235] = {
					["source"] = "Куалина Ледяное Копье",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153310,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warbringer-Thunderhorn",
					["npcID"] = 0,
				},
				[312964] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аматет - жрец Солнца",
					["npcID"] = 156853,
				},
				[194913] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[209754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tallesarin-Ragnaros",
					["npcID"] = 0,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[279673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268415] = {
					["source"] = "Экстрактор азерита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136643,
				},
				[281209] = {
					["source"] = "Саркетал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258627] = {
					["type"] = "BUFF",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Титивити-СвежевательДуш",
					["npcID"] = 0,
				},
				[257408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Читерсон",
					["npcID"] = 0,
				},
				[259853] = {
					["type"] = "DEBUFF",
					["source"] = "Рикса Огневерт",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129231,
				},
				[251463] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deimozz-Silvermoon",
					["npcID"] = 0,
				},
				[116680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[2120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Полемизм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223829] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biscornu-Archimonde",
					["npcID"] = 0,
				},
				[221887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Baamboozled-AzjolNerub",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Barbarjoe-TwistingNether",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Орей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[55233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[196770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[8680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Melgush-Kazzak",
					["npcID"] = 0,
				},
				[147833] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102352] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297079] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нееленочка",
					["npcID"] = 0,
				},
				[159786] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Скипидар",
					["npcID"] = 52795,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[211805] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pythzilla-Ravencrest",
					["npcID"] = 0,
				},
				[244813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[216411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[59752] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[135299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Помбол-СвежевательДуш",
					["npcID"] = 0,
				},
				[262794] = {
					["source"] = "Гений Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[262161] = {
					["source"] = "Ренесайх",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[118345] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный элементаль земли",
					["npcID"] = 61056,
				},
				[108238] = {
					["encounterID"] = 2107,
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaì-TwistingNether",
					["npcID"] = 0,
				},
				[206649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soulfeást-Sylvanas",
					["npcID"] = 0,
				},
				[51714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[303943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[279684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Леонссия-Дракономор",
					["npcID"] = 0,
				},
				[30449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зеферус-Гордунни",
					["npcID"] = 0,
				},
				[6795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ceef-Ragnaros",
					["npcID"] = 0,
				},
				[216413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[314729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акир-скарабей",
					["npcID"] = 161541,
				},
				[5302] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304611] = {
					["source"] = "Лореллейн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[49184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[1079] = {
					["encounterID"] = 2105,
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[245526] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 123399,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[268429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 69943,
				},
				[217694] = {
					["source"] = "Полемизм",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280200] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[224347] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[262947] = {
					["source"] = "Гений Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эльлион",
					["npcID"] = 0,
				},
				[286342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[280713] = {
					["source"] = "Розовыйангел",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[105809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воландир-Гордунни",
					["npcID"] = 0,
				},
				[274061] = {
					["source"] = "Скрытный головорез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136703,
				},
				[202770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[220510] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[8092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[6789] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[11543] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[262804] = {
					["source"] = "Гений Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[213602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Демонический тиран",
					["npcID"] = 135002,
				},
				[285496] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[276111] = {
					["source"] = "Льювагрим",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317563] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вил'ракс",
					["npcID"] = 153326,
				},
				[257337] = {
					["encounterID"] = 2105,
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[13750] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[199786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[45053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wardovpal-Silvermoon",
					["npcID"] = 0,
				},
				[276304] = {
					["source"] = "Буйный гуляка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136005,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Èmsee-Outland",
					["npcID"] = 0,
				},
				[43198] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мастеро-Азурегос",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51514] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[202090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[205369] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198764] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эхо Чи-Цзи",
					["npcID"] = 152895,
				},
				[279793] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[2484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[114255] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[262811] = {
					["source"] = "Капля-пиявка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[196718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arvanah-BurningLegion",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288371] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Healplug-Ravencrest",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309894] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Хранитель Бездны Малькет",
					["npcID"] = 154332,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[297039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[198766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эхо Чи-Цзи",
					["npcID"] = 152895,
				},
				[268955] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[49020] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[261712] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Призрак глубин",
					["npcID"] = 138288,
				},
				[233490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[300761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[45182] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[300174] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[80353] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Дантерсмонха",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[163201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[262383] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[274357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Конинаб",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Мукуро",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202425] = {
					["source"] = "Арчсовух",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тактамыш",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паранойяя",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Дракран-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317065] = {
					["source"] = "Орей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Китава-Азурегос",
					["npcID"] = 0,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Злойморозец",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Скепча",
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
					["source"] = "Катрин Лиланд",
					["npcID"] = 5494,
				},
				[279709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилютрупы-Дракономор",
					["npcID"] = 0,
				},
				[300691] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[85948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[263601] = {
					["source"] = "Надсмотрщик Аскари",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[5217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[309763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сенбу, глава прайда",
					["npcID"] = 151948,
				},
				[257622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[300693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[308949] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ядовитая змея",
					["npcID"] = 158465,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Китава-Азурегос",
					["npcID"] = 0,
				},
				[288988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Юким-Гордунни",
					["npcID"] = 0,
				},
				[296614] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 152765,
				},
				[53563] = {
					["source"] = "Квакеру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269493] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[213858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[257879] = {
					["type"] = "DEBUFF",
					["source"] = "Перенастроенный уборочный голем",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130131,
				},
				[308944] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вырыватель клыков Орса",
					["npcID"] = 157120,
				},
				[246853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меилис-Гордунни",
					["npcID"] = 0,
				},
				[271526] = {
					["encounterID"] = 2106,
					["source"] = "Земляной яростень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[312978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аматет-страж",
					["npcID"] = 151610,
				},
				[8921] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259415] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миглена",
					["npcID"] = 0,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэйвис-Ревущийфьорд",
					["npcID"] = 0,
				},
				[47528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[131222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shei-Silvermoon",
					["npcID"] = 0,
				},
				[279204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[106839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[274087] = {
					["source"] = "Скованная буря",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135457,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Никсоон-Дракономор",
					["npcID"] = 0,
				},
				[262377] = {
					["source"] = "Ползучая мина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133482,
				},
				[41635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[263853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Retard",
					["npcID"] = 4689,
				},
				[317587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Вил'ракс",
					["npcID"] = 153326,
				},
				[296059] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[263854] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рита",
					["npcID"] = 130722,
				},
				[317588] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вил'ракс",
					["npcID"] = 153326,
				},
				[264878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[259388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116705] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Агнема-Дракономор",
					["npcID"] = 0,
				},
				[257371] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Энлея",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Андалусия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alettaocèan-Antonidas",
					["npcID"] = 0,
				},
				[298197] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wrekbeast-Kazzak",
					["npcID"] = 0,
				},
				[408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ddsc-Ragnaros",
					["npcID"] = 0,
				},
				[211522] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[276154] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[49143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[278145] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[5782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[216890] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodali-Kazzak",
					["npcID"] = 0,
				},
				[199545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[202748] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[2908] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271550] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290472] = {
					["source"] = "Энлея",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206966] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[256350] = {
					["type"] = "DEBUFF",
					["source"] = "Кислозуб",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141599,
				},
				[271538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[195452] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[297126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[55164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[19434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[260189] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[316062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 162243,
				},
				[314527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вук'лаз Землелом",
					["npcID"] = 160970,
				},
				[156560] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алексамхил",
					["npcID"] = 0,
				},
				[301516] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210294] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[132764] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maziuzh-Kazzak",
					["npcID"] = 0,
				},
				[265954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Юким-Гордунни",
					["npcID"] = 0,
				},
				[260190] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[277724] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292012] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джев",
					["npcID"] = 0,
				},
				[298665] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[271543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[263867] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Скипидар",
					["npcID"] = 52795,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 1860,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тактамыш",
					["npcID"] = 0,
				},
				[271544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[300714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[264892] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Брат Меллер",
					["npcID"] = 154447,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[203123] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[205179] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[259387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Берсеркуцио-Голдринн",
					["npcID"] = 0,
				},
				[209785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[309312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Жрица солнца Нубитт",
					["npcID"] = 151897,
				},
				[157348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изначальный элементаль бури",
					["npcID"] = 77942,
				},
				[157331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный элементаль бури",
					["npcID"] = 77942,
				},
				[215661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[233582] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[256355] = {
					["source"] = "Кислозуб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141599,
				},
				[298703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Злойморозец",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Большойшланг-Азурегос",
					["npcID"] = 0,
				},
				[232559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Midñíght-Silvermoon",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[258674] = {
					["source"] = "Отдыхающий работник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130436,
				},
				[22812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gutalax-Kazzak",
					["npcID"] = 0,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[298512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Húhú-Nethersturm",
					["npcID"] = 0,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Леонссия-Дракономор",
					["npcID"] = 0,
				},
				[258915] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ядовитый угорь",
					["npcID"] = 127600,
				},
				[73325] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[6262] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[271579] = {
					["encounterID"] = 2105,
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[312973] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 156706,
				},
				[102359] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Borelee-Draenor",
					["npcID"] = 0,
				},
				[277181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[214202] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[286393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285482] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Borelee-Draenor",
					["npcID"] = 0,
				},
				[46661] = {
					["source"] = "Сиккис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267971] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 135002,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Машавейха",
					["npcID"] = 0,
				},
				[207230] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[260708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[267972] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 135002,
				},
				[298700] = {
					["source"] = "Буссинар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295855] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Energidrik-TwistingNether",
					["npcID"] = 0,
				},
				[52610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилкош",
					["npcID"] = 0,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[167105] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[277185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Вальзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[290512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[295856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Азерот",
					["npcID"] = 152396,
				},
				[314040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Húhú-Nethersturm",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Лауретин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[297162] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[262347] = {
					["encounterID"] = 2105,
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[260202] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[271559] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Статуя Нефритовой Змеи",
					["npcID"] = 60849,
				},
				[262348] = {
					["source"] = "Ползучая мина",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133482,
				},
				[221562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Лабина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Мразолюшн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[261735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Призрак глубин",
					["npcID"] = 138288,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Мразолюшн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256362] = {
					["source"] = "Кислозуб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141599,
				},
				[277703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Исмера-Гордунни",
					["npcID"] = 0,
				},
				[306873] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сбежавший мутант",
					["npcID"] = 157267,
				},
				[315573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[255595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Умбровый пескохват",
					["npcID"] = 140585,
				},
				[313015] = {
					["source"] = "Нееленочка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
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
					["source"] = "Луззи",
					["npcID"] = 0,
				},
				[199042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wrekbeast-Kazzak",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миглена",
					["npcID"] = 0,
				},
				[277706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[313017] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Солнечная сфера",
					["npcID"] = 160803,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[266047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wrekbeast-Kazzak",
					["npcID"] = 0,
				},
				[221771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 0,
				},
				[224125] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["npcID"] = 100820,
				},
				[256231] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gutalax-Kazzak",
					["npcID"] = 0,
				},
				[85739] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[288455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Телевизоор-Азурегос",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йёя-Гордунни",
					["npcID"] = 0,
				},
				[137639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Угрозка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cat",
					["npcID"] = 42718,
				},
				[348] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Генацвили-Ревущийфьорд",
					["npcID"] = 0,
				},
				[90985] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[48707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jurakyuru-Stormscale",
					["npcID"] = 0,
				},
				[81262] = {
					["source"] = "Период цветения",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[258925] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demonjah-Medivh",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исмера-Гордунни",
					["npcID"] = 0,
				},
				[196840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[224126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 100820,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Эц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[205448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[224127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 100820,
				},
				[147362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kunhunter-TwistingNether",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[305497] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Midñíght-Silvermoon",
					["npcID"] = 0,
				},
				[200587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mylla-Nemesis",
					["npcID"] = 0,
				},
				[267410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nazlom-Stormscale",
					["npcID"] = 0,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[296138] = {
					["source"] = "Тинайра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Эц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vinikgozin",
					["npcID"] = 17252,
				},
				[226943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[313014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сокол Светозарных",
					["npcID"] = 151811,
				},
				[80240] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mylla-Nemesis",
					["npcID"] = 0,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ивел-Гордунни",
					["npcID"] = 0,
				},
				[280788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[259440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миглена",
					["npcID"] = 0,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[147367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tauranix-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[24394] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mucko",
					["npcID"] = 151147,
				},
				[225921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дарркнэс-Дракономор",
					["npcID"] = 0,
				},
				[313030] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Светозарный-послушник",
					["npcID"] = 164170,
				},
				[191634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[138130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 69791,
				},
				[277720] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[308937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Экашим",
					["npcID"] = 157121,
				},
				[264415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[5143] = {
					["source"] = "Halama-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 2630,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[297168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[259442] = {
					["source"] = "Крымскийпес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[270686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Могильный скарабей",
					["npcID"] = 151859,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[315392] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[5215] = {
					["source"] = "Филинхос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[271071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[312523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Живое заражение",
					["npcID"] = 153906,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[295124] = {
					["type"] = "BUFF",
					["source"] = "Тэки",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дух волка",
					["npcID"] = 29264,
				},
				[203407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пилатес-СтражСмерти",
					["npcID"] = 0,
				},
				[187650] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[264420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[275909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Midñíght-Silvermoon",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Честерский",
					["npcID"] = 0,
				},
				[87023] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[30283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[256374] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайлисса-Гордунни",
					["npcID"] = 0,
				},
				[312526] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Утонувший ревнитель",
					["npcID"] = 153956,
				},
				[280286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[264057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pollutious-Sylvanas",
					["npcID"] = 0,
				},
				[5740] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[205691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shãkty-Kazzak",
					["npcID"] = 0,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thulkresh",
					["npcID"] = 1860,
				},
				[85222] = {
					["source"] = "Квакеру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[67833] = {
					["source"] = "Тиронир",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213644] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Donsalust-Medivh",
					["npcID"] = 0,
				},
				[51460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[297176] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[196881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[30213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vinikgozin",
					["npcID"] = 17252,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[289666] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[309310] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277731] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[292463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cassettee-Kazzak",
					["npcID"] = 0,
				},
				[5487] = {
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
				[293491] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Храйк-Разувий",
					["npcID"] = 0,
				},
				[247677] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гташник-Гордунни",
					["npcID"] = 0,
				},
				[268865] = {
					["source"] = "Испытатель экспериментального оружия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[203155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hrkronborg-ChamberofAspects",
					["npcID"] = 0,
				},
				[80244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ирбид-Гордунни",
					["npcID"] = 0,
				},
				[300762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[270569] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[221715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[308951] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вырыватель клыков Орса",
					["npcID"] = 157120,
				},
				[202900] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[123254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skavette-Hyjal",
					["npcID"] = 0,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Никсоон-Дракономор",
					["npcID"] = 0,
				},
				[41301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Varbaro-TwistingNether",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Спартаз",
					["npcID"] = 0,
				},
				[271083] = {
					["type"] = "BUFF",
					["source"] = "Лоялист дома Штормсонгов",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130006,
				},
				[275689] = {
					["source"] = "Дракран-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[303324] = {
					["type"] = "DEBUFF",
					["source"] = "Векемара",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152671,
				},
				[112869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Baseline-TwistingNether",
					["npcID"] = 0,
				},
				[290464] = {
					["source"] = "Энлея",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278249] = {
					["type"] = "BUFF",
					["source"] = "Superkileur-Chantséternels",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatalx-TwistingNether",
					["npcID"] = 0,
				},
				[299743] = {
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154297,
				},
				[312537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Осквернитель вод",
					["npcID"] = 153910,
				},
				[234084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[275110] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чрезвычайка",
					["npcID"] = 139233,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Articfowl-Draenor",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kaì-TwistingNether",
					["npcID"] = 0,
				},
				[172] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[268528] = {
					["type"] = "BUFF",
					["source"] = "Чистелла-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299745] = {
					["type"] = "BUFF",
					["source"] = "Анкоа - мастер клинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154297,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kaì-TwistingNether",
					["npcID"] = 0,
				},
				[61391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ceef-Ragnaros",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Humff-Draenor",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[154953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ситаджа-Гордунни",
					["npcID"] = 0,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[1706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Klipklap-LaughingSkull",
					["npcID"] = 0,
				},
				[200174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[58452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Devilt-Zul'jin",
					["npcID"] = 0,
				},
				[299748] = {
					["source"] = "Шаман из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154304,
				},
				[302307] = {
					["source"] = "Тэблита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Notyou-Kazzak",
					["npcID"] = 0,
				},
				[278767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[1044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cämarasa-DunModr",
					["npcID"] = 0,
				},
				[280654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Speranza-Lothar",
					["npcID"] = 0,
				},
				[305395] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[303332] = {
					["source"] = "Векемара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152671,
				},
				[299750] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[213652] = {
					["source"] = "Celkaa-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Notyou-Kazzak",
					["npcID"] = 0,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[299751] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[275699] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[233395] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[299752] = {
					["source"] = "Охотник из клана Клинков Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150202,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[276212] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[268954] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dxbzz-Kazzak",
					["npcID"] = 0,
				},
				[108194] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[12042] = {
					["source"] = "Мка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Йёя-Гордунни",
					["npcID"] = 0,
				},
				[299754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 150202,
				},
				[281843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ceef-Ragnaros",
					["npcID"] = 0,
				},
				[308966] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Сен-мат",
					["npcID"] = 157167,
				},
				[280210] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cassettee-Kazzak",
					["npcID"] = 0,
				},
				[294027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[268439] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pérra-Stormscale",
					["npcID"] = 0,
				},
				[1715] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[264957] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 0,
				},
				[190319] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1680] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[55078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[55173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[206491] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Теронар-ЧерныйШрам",
					["npcID"] = 0,
				},
				[79865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 155761,
				},
				[51271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[2061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шокки-Дракономор",
					["npcID"] = 0,
				},
				[206930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[77535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ban'thalos",
					["npcID"] = 54320,
				},
				[299759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 150202,
				},
				[198304] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55095] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Strixing-Kazzak",
					["npcID"] = 0,
				},
				[290819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wiretapped-Kazzak",
					["npcID"] = 0,
				},
				[299760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 150202,
				},
				[160060] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скорпид",
					["npcID"] = 44546,
				},
				[272126] = {
					["source"] = "Фэнатичность-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[289526] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Палвулкан-Гордунни",
					["npcID"] = 0,
				},
				[188070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[102383] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[198817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[188838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shcammato-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[27243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[313151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аматет - жрец Солнца",
					["npcID"] = 151612,
				},
				[303345] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Зиистер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304369] = {
					["type"] = "BUFF",
					["source"] = "Эльонта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308975] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Сен-мат",
					["npcID"] = 157167,
				},
				[268547] = {
					["type"] = "BUFF",
					["source"] = "Энетрия",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 154304,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[201633] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 100943,
				},
				[17] = {
					["source"] = "Майтик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299765] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 151300,
				},
				[120679] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maziuzh-Kazzak",
					["npcID"] = 0,
				},
				[274447] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Esyraa-Stormrage",
					["npcID"] = 0,
				},
				[198819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[299766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 151300,
				},
				[304372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пападос-Дракономор",
					["npcID"] = 0,
				},
				[308978] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник Сен-мат",
					["npcID"] = 157167,
				},
				[316522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Het-Kazzak",
					["npcID"] = 0,
				},
				[299767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 151300,
				},
				[245389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[288509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воландир-Гордунни",
					["npcID"] = 0,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[128228] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[316007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ceef-Ragnaros",
					["npcID"] = 0,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anneelii-Sylvanas",
					["npcID"] = 0,
				},
				[95988] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[276229] = {
					["encounterID"] = 2108,
					["source"] = "\"БУМБОТ\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141303,
				},
				[268553] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[114923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[198368] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tallesarin-Ragnaros",
					["npcID"] = 0,
				},
				[207777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maddek-Frostmane",
					["npcID"] = 0,
				},
				[199845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ментальный демон",
					["npcID"] = 101398,
				},
				[91807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brainbender",
					["npcID"] = 26125,
				},
				[280177] = {
					["source"] = "Сильверри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269429] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[279302] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Волькмар-Азурегос",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brodsky-Kazzak",
					["npcID"] = 0,
				},
				[278989] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[286979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nabe-Ragnaros",
					["npcID"] = 0,
				},
				[279303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Волькмар-Азурегос",
					["npcID"] = 0,
				},
				[117952] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[236746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[259491] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[273286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[270332] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[17962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toxicswede-Kazzak",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Лезгинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Полемизм",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aangho-Madmortem",
					["npcID"] = 0,
				},
				[313081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аматет - Клинок Света",
					["npcID"] = 151806,
				},
				[119914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Литна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Лезгинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сажи Добродушная",
					["npcID"] = 159119,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Polatorp-Stormscale",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Упность",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вук'лаз Землелом",
					["npcID"] = 160970,
				},
				[300801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[258188] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пробудившийся страж",
					["npcID"] = 128302,
				},
				[314107] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Безликий мучитель",
					["npcID"] = 153904,
				},
				[115313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jbrewster-Stormscale",
					["npcID"] = 0,
				},
				[300802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[23214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шайенблу",
					["npcID"] = 0,
				},
				[253327] = {
					["source"] = "Паладиняра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rootmonger",
					["npcID"] = 26125,
				},
				[313085] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саба-ток",
					["npcID"] = 157286,
				},
				[196884] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Полемизм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68996] = {
					["source"] = "Самакрасата",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183218] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[46924] = {
					["source"] = "Мразолюшн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["type"] = "BUFF",
					["source"] = "Хэвипал",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shcammato-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[188501] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йёя-Гордунни",
					["npcID"] = 0,
				},
				[202028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Midñíght-Silvermoon",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[31850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Syndorei-Aggra(Português)",
					["npcID"] = 0,
				},
				[313088] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[289577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dxbzz-Kazzak",
					["npcID"] = 0,
				},
				[297037] = {
					["source"] = "Горнолес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Седойконец",
					["npcID"] = 0,
				},
				[287825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шершавень",
					["npcID"] = 0,
				},
				[6991] = {
					["source"] = "Нитаника",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Горнолес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Птахахант",
					["npcID"] = 0,
				},
				[32182] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэки",
					["npcID"] = 0,
				},
				[194223] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[300809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pãin-Blackrock",
					["npcID"] = 0,
				},
				[196782] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[287504] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ямачки-Гордунни",
					["npcID"] = 0,
				},
				[267546] = {
					["source"] = "Буйный гуляка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144231,
				},
				[308742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nabe-Ragnaros",
					["npcID"] = 0,
				},
				[280852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðevere-ArgentDawn",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267547] = {
					["source"] = "Платный разгонятель толпы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[309305] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица солнца Нубитт",
					["npcID"] = 151897,
				},
				[207018] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[314117] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сводящая с ума желчь",
					["npcID"] = 161342,
				},
				[273942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[296718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Преданный тьме разрушитель",
					["npcID"] = 154056,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exanimo-Eredar",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gohinator-Kazzak",
					["npcID"] = 0,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dàwzb-Ner'zhul",
					["npcID"] = 0,
				},
				[152262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðevere-ArgentDawn",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Energidrik-TwistingNether",
					["npcID"] = 0,
				},
				[22703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gohi-Kazzak",
					["npcID"] = 0,
				},
				[259474] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[267551] = {
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[51723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spamix-Ragnaros",
					["npcID"] = 0,
				},
				[260242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ehsanitybk-Wildhammer",
					["npcID"] = 0,
				},
				[299792] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Тэблита",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Déad-LaughingSkull",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Исмера-Гордунни",
					["npcID"] = 0,
				},
				[296211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gomorra-Mal'Ganis",
					["npcID"] = 0,
				},
				[93622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[212743] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zulen-AzjolNerub",
					["npcID"] = 0,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йёя-Гордунни",
					["npcID"] = 0,
				},
				[314635] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обелиск Солнца",
					["npcID"] = 162903,
				},
				[319241] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brodsky-Kazzak",
					["npcID"] = 0,
				},
				[293142] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аратуон-Азурегос",
					["npcID"] = 0,
				},
				[269090] = {
					["source"] = "Артиллерист",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137029,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ыич",
					["npcID"] = 0,
				},
				[273465] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[280861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tauranix-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[318219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Торадорра-Гордунни",
					["npcID"] = 0,
				},
				[228260] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[280862] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tauranix-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[269092] = {
					["source"] = "Артиллерист",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137029,
				},
				[299788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Donsalust-Medivh",
					["npcID"] = 0,
				},
				[195901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Boombaabom-Ravencrest",
					["npcID"] = 0,
				},
				[19505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraaphom",
					["npcID"] = 417,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Громовержиц-Корольлич",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Финдир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[126892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борборигмус-Азурегос",
					["npcID"] = 0,
				},
				[256735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ростал-Дракономор",
					["npcID"] = 0,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Вальзи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pythzilla-Ravencrest",
					["npcID"] = 0,
				},
				[45444] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Синига-Корольлич",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317439] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эхо Чи-Цзи",
					["npcID"] = 152895,
				},
				[272678] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тиамена-Галакронд",
					["npcID"] = 0,
				},
				[285472] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[128229] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[128227] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пежа Искристый Кремень",
					["npcID"] = 64480,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[233397] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Urn-Kor'gall",
					["npcID"] = 0,
				},
				[288032] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миглена",
					["npcID"] = 0,
				},
				[48018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повесть-Дракономор",
					["npcID"] = 0,
				},
				[287769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[82691] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Messedup-Silvermoon",
					["npcID"] = 0,
				},
				[312597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чудовище из глубин",
					["npcID"] = 153171,
				},
				[296733] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Преданный тьме разрушитель",
					["npcID"] = 154056,
				},
				[198838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loleen-Ragnaros",
					["npcID"] = 0,
				},
				[285475] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zurskqt-Ragnaros",
					["npcID"] = 0,
				},
				[119415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мауье",
					["npcID"] = 0,
				},
				[288546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародей войска мертвых",
					["npcID"] = 148797,
				},
				[310121] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сбежавший мутант",
					["npcID"] = 157267,
				},
				[293664] = {
					["source"] = "Элимпро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259737] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 131610,
				},
				[266030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лассе-Подземье",
					["npcID"] = 0,
				},
				[198839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 100943,
				},
				[272893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ларидаель-Дракономор",
					["npcID"] = 0,
				},
				[213680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krajton-Silvermoon",
					["npcID"] = 0,
				},
				[288548] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародей войска мертвых",
					["npcID"] = 148797,
				},
				[51533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[187837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[51661] = {
					["source"] = "Льювагрим",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313113] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алаел-Гордунни",
					["npcID"] = 0,
				},
				[278826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disasta-Kazzak",
					["npcID"] = 0,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vicotine-TwistingNether",
					["npcID"] = 0,
				},
				[104272] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гендэл-Дракономор",
					["npcID"] = 0,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Robertdeniro-Silvermoon",
					["npcID"] = 0,
				},
				[77575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ивел-Гордунни",
					["npcID"] = 0,
				},
				[124430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kornitot-Nemesis",
					["npcID"] = 0,
				},
				[312677] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Осквернитель вод",
					["npcID"] = 153910,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nightwarrior-LosErrantes",
					["npcID"] = 0,
				},
				[312679] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Осквернитель вод",
					["npcID"] = 153910,
				},
				[1449] = {
					["source"] = "Кьеригал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46352] = {
					["source"] = "Тормарин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21169] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Supraskiller-Elune",
					["npcID"] = 0,
				},
				[202168] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аорэлиос-Гордунни",
					["npcID"] = 0,
				},
				[209693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кейдач",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таирекс",
					["npcID"] = 0,
				},
				[295840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Energidrik-TwistingNether",
					["npcID"] = 0,
				},
				[197051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ситаджа-Гордунни",
					["npcID"] = 0,
				},
				[234153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[202225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cassettee-Kazzak",
					["npcID"] = 0,
				},
				[310092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сбежавший мутант",
					["npcID"] = 157267,
				},
				[310124] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сбежавший мутант",
					["npcID"] = 157267,
				},
				[255647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[16128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Песчаный бегун поработителя",
					["npcID"] = 157033,
				},
				[63560] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Platoon-GrimBatol",
					["npcID"] = 0,
				},
				[296794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Авалн",
					["npcID"] = 0,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scârlét-TwistingNether",
					["npcID"] = 0,
				},
				[256689] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[60302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Калашикпал-Азурегос",
					["npcID"] = 0,
				},
				[47568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pythzilla-Ravencrest",
					["npcID"] = 0,
				},
				[312720] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зараженный страж",
					["npcID"] = 153826,
				},
				[313190] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 153171,
				},
				[313173] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чудовище из глубин",
					["npcID"] = 153171,
				},
				[23920] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wardovpal-Silvermoon",
					["npcID"] = 0,
				},
				[297258] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Неизвестно",
					["npcID"] = 153118,
				},
				[315763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totemwind-Kazzak",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elysanna-Stormscale",
					["npcID"] = 0,
				},
				[198589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arvanah-BurningLegion",
					["npcID"] = 0,
				},
				[282482] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Абрикок",
					["npcID"] = 0,
				},
				[207289] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acc-Ragnaros",
					["npcID"] = 0,
				},
				[314659] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вук'лаз Землелом",
					["npcID"] = 160970,
				},
				[274231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Склизень",
					["npcID"] = 154106,
				},
				[297260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аланвэйк",
					["npcID"] = 0,
				},
				[302912] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Занш'ир-ловчий",
					["npcID"] = 152884,
				},
				[256692] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[278326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Astrdh-Outland",
					["npcID"] = 0,
				},
				[54861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liona-Ravencrest",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Ауринко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[170700] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Абадона",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ыич",
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
			["login_counter"] = 877,
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
