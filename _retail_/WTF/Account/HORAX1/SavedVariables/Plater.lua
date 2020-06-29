
PlaterDB = {
	["profileKeys"] = {
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Stormscale"] = "Default",
		["Ренфолд - Вечная Песня"] = "Default",
		["Мукуро - Вечная Песня"] = "Default",
		["Ingward - Lightning's Blade"] = "Default",
		["Ньярли - Вечная Песня"] = "Default",
		["Thalassa - Lightning's Blade"] = "Default",
		["Шанами - Вечная Песня"] = "Default",
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
				[102270] = {
					"Эредарская завоевательница", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[102335] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[69791] = {
					"Jesto", -- [1]
					"Храм Котмогу", -- [2]
				},
				[24553] = {
					"Апоко", -- [1]
					"Терраса Магистров", -- [2]
				},
				[159275] = {
					"Хранительница портала", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[18343] = {
					"Таварок", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[135235] = {
					"Призрачная повелительница животных", -- [1]
					"Гробница королей", -- [2]
				},
				[152396] = {
					"Защитник Азерот", -- [1]
					"Око Бури", -- [2]
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
				[155657] = {
					"Хаффер", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[125828] = {
					"Ozric", -- [1]
					"Atal'Dazar", -- [2]
				},
				[112733] = {
					"Ядошкурый тенеткач", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[102400] = {
					"Эредарский сумеречный целитель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[164189] = {
					"Плод ужаса", -- [1]
					"Жуткое видение Штормграда", -- [2]
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
				[151657] = {
					"Бомботанк", -- [1]
					"Операция \"Мехагон\"", -- [2]
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
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[112738] = {
					"Послушник Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102431] = {
					"Кровавая принцесса Тал'ена", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[102398] = {
					"Пылающий инфернал", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102397] = {
					"Могучий повелитель гнева", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102269] = {
					"Ловец Скверны - разоритель", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[102273] = {
					"Страж ужаса - разведчик", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[112732] = {
					"Дитя Саел'орн", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[153527] = {
					"Акир - вожак роя", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Око Бури", -- [2]
				},
				[18341] = {
					"Пандемоний", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[150249] = {
					"Демонтажница из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[99358] = {
					"Гнилосердная дриада", -- [1]
					"Чаща Темного Сердца", -- [2]
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
				[102302] = {
					"Хранитель портала", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[148797] = {
					"Чародей войска мертвых", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[102372] = {
					"Гончая Скверны - убийца магов", -- [1]
					"Штурм Аметистовой крепости", -- [2]
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
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[151739] = {
					"Ma'haat the Indomitable", -- [1]
					"Neltharion's Lair - HoA Scenario", -- [2]
				},
				[24556] = {
					"Зелфан", -- [1]
					"Терраса Магистров", -- [2]
				},
				[417] = {
					"Кридими", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[20900] = {
					"Освобожденный Носитель Рока", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20898] = {
					"Чудовищный магматический инфернал", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[24560] = {
					"Жрица Делрисса", -- [1]
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
				[24686] = {
					"Чернокнижник Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[24674] = {
					"Феникс", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24690] = {
					"Презренный-полутруп", -- [1]
					"Терраса Магистров", -- [2]
				},
				[18983] = {
					"Чернозубый тарантул", -- [1]
					"Открытие Темного портала", -- [2]
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
				[151654] = {
					"Дьюс Мехалоск", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153020] = {
					"Borya", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157608] = {
					"Безликий сокрушитель воли", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[21346] = {
					"Незрячий глаз", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[102392] = {
					"Тотем резонанса", -- [1]
					"Храм Котмогу", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[17817] = {
					"Большой крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[20902] = {
					"Саргеронский призыватель огня", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[17938] = {
					"Наблюдатель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[20865] = {
					"Амебовидный ужас", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17961] = {
					"Чародейка резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17957] = {
					"Воитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17959] = {
					"Укротитель резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17816] = {
					"Крабстер", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Око Бури", -- [2]
				},
				[21126] = {
					"Целительница чешуи резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[17839] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[24745] = {
					"Чистая энергия", -- [1]
					"Терраса Магистров", -- [2]
				},
				[17695] = {
					"Убийца из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[24684] = {
					"Рыцарь крови Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[21140] = {
					"Повелитель временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[150168] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
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
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[99192] = {
					"Тень Ксавия", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[17670] = {
					"Псарь из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[20885] = {
					"Даллия Глашатай Судьбы", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[17671] = {
					"Воитель клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[160699] = {
					"Рассерженный почтоменталь", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[5913] = {
					"Тотем трепета", -- [1]
					"Око Бури", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
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
				[134686] = {
					"Mature Krolusk", -- [1]
					"Temple of Sethraliss", -- [2]
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
				[25756] = {
					"Холодная волна Ахуна", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[5925] = {
					"Тотем заземления", -- [1]
					"Храм Котмогу", -- [2]
				},
				[16699] = {
					"Разоритель из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[20864] = {
					"Изначальный кошмар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20866] = {
					"Пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[78574] = {
					"Wolf", -- [1]
					"Око Бури", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[156089] = {
					"Акир - повелитель ядов", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[24664] = {
					"Кель'тас Солнечный Скиталец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[102282] = {
					"Лорд Малгат", -- [1]
					"Штурм Аметистовой крепости", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[17962] = {
					"Работяга резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[156653] = {
					"Сгустившийся ужас", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[154744] = {
					"Токсичное чудище", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[21127] = {
					"Шквальник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160704] = {
					"Капля Бездны в письме", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[17083] = {
					"Новообращенный орк Скверны", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[160061] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Штормграда", -- [2]
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
				[137805] = {
					"Black Blood", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Гробница королей", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[154663] = {
					"Поглощающая гномов капля", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[55659] = {
					"Дикий бес", -- [1]
					"Гробница королей", -- [2]
				},
				[17941] = {
					"Менну Предатель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[18314] = {
					"Ловчий нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[18394] = {
					"Эфириал-призрак", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[17252] = {
					"HaaKrill", -- [1]
					"Гробница королей", -- [2]
				},
				[152033] = {
					"Непримечательное растение", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[20886] = {
					"Провидец Гнева Соккорат", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[103344] = {
					"Дубосерд", -- [1]
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
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[106321] = {
					"Тотем попутного ветра", -- [1]
					"Храм Котмогу", -- [2]
				},
				[95772] = {
					"Разъяренный коготь ночи", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[144294] = {
					"Мехагонский боевой механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130832] = {
					"Strawberry", -- [1]
					"Око Бури", -- [2]
				},
				[40446] = {
					"Скар'тис Призыватель", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
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
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
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
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[155656] = {
					"Миша", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[152703] = {
					"\"Шокотрон X1\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[21128] = {
					"Скат резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[152009] = {
					"Неисправный хламобот", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[158411] = {
					"Нестабильный слуга", -- [1]
					"Жуткое видение Штормграда", -- [2]
				},
				[123093] = {
					"Scalehide", -- [1]
					"Око Бури", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[151634] = {
					"Моторилла", -- [1]
					"Храм Котмогу", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
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
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[17356] = {
					"Ползучий слизнюк", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
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
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[157268] = {
					"Ползучая порча", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[63508] = {
					"Сюэнь", -- [1]
					"Око Бури", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
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
				[20873] = {
					"Мастер искажения Негатона", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
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
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
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
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
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
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
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
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[17964] = {
					"Рабочий-бродяга пустошей", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151640] = {
					"Неисправный хламобот", -- [1]
					"Храм Котмогу", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[100820] = {
					"Ящер-элементаль", -- [1]
					"Гробница королей", -- [2]
				},
				[95769] = {
					"Бешеная визгунья", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[20857] = {
					"Защитник Аркатраца", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[158035] = {
					"Магистр Умбрий", -- [1]
					"Жуткое видение Штормграда", -- [2]
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
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[133605] = {
					"Беглая заключенная", -- [1]
					"Тол Дагор", -- [2]
				},
				[19307] = {
					"Ужасень Нексуса", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[144293] = {
					"Переработчик отходов", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
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
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[17357] = {
					"Ползучий слизнюченыш", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[144295] = {
					"Мехагонский механик", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[25740] = {
					"Ахун", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153021] = {
					"Magar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[58964] = {
					"Xorrak", -- [1]
					"Храм Котмогу", -- [2]
				},
				[151133] = {
					"Хати", -- [1]
					"Ущелье Песни Войны", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[95771] = {
					"Грозный разрушитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[153532] = {
					"Акир - подчинитель разума", -- [1]
					"Жуткое видение Оргриммара", -- [2]
				},
				[151773] = {
					"Сторожевой бот модели \"ПЕС\"", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[150195] = {
					"Слизнюк-гномоед", -- [1]
					"Операция \"Мехагон\"", -- [2]
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
				[17693] = {
					"Разведчик из клана Изувеченной Длани", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
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
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Гробница королей", -- [2]
				},
				[20906] = {
					"Фазовая прыгуана", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[101679] = {
					"Грозный отравитель", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[101991] = {
					"Обитатель Кошмара", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[144231] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[100539] = {
					"Скверносерд-стрелок", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[18311] = {
					"Эфириал - осквернитель гробниц", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[100526] = {
					"Истерзанный кровопийца", -- [1]
					"Чаща Темного Сердца", -- [2]
				},
				[20880] = {
					"Смертоносный эредар", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[17669] = {
					"Бешеный бойцовый пес", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
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
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[16809] = {
					"О'мрогг Завоеватель", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[17952] = {
					"Темноводный кроколиск", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[151613] = {
					"Противопехотная белка", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[18982] = {
					"Черный ягуар", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[161241] = {
					"Мал'тир - маг Бездны", -- [1]
					"Вольная Гавань", -- [2]
				},
				[21138] = {
					"Палач из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[18317] = {
					"Эфириал-жрец", -- [1]
					"Аукиндон: Гробницы Маны", -- [2]
				},
				[21148] = {
					"Хранительница временного разлома", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[161198] = {
					"Исказитель пространства Душар", -- [1]
					"Жуткое видение Оргриммара", -- [2]
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
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[20879] = {
					"Эредарский пожиратель душ", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[20883] = {
					"Сердитая искусительница", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[161243] = {
					"Сам'рек Призыватель Хаоса", -- [1]
					"Вольная Гавань", -- [2]
				},
				[20897] = {
					"Заклинатель волн Эфириума", -- [1]
					"Крепость Бурь: Аркатрац", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[20908] = {
					"Аккирис Штормоход", -- [1]
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
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[21818] = {
					"Дракончик из рода Бесконечности", -- [1]
					"Открытие Темного портала", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
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
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[20923] = {
					"Кровавый страж Порунг", -- [1]
					"Цитадель Адского Пламени: Разрушенные залы", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[17960] = {
					"Ворожея резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17958] = {
					"Защитник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[17940] = {
					"Техник резервуара Кривого Клыка", -- [1]
					"Кривой Клык: Узилище", -- [2]
				},
				[161502] = {
					"Голодный пожиратель плоти", -- [1]
					"Вольная Гавань", -- [2]
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
				[24698] = {
					"Контрабандист Эфириума", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24561] = {
					"Яззай", -- [1]
					"Терраса Магистров", -- [2]
				},
				[150250] = {
					"Стрелок из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[24777] = {
					"Часовой Солнечного Клинка", -- [1]
					"Терраса Магистров", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[24744] = {
					"Вексалиус", -- [1]
					"Терраса Магистров", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[24696] = {
					"Ведьма из клана Змеиных Колец", -- [1]
					"Терраса Магистров", -- [2]
				},
				[24715] = {
					"Крайне взрывоопасная овца", -- [1]
					"Терраса Магистров", -- [2]
				},
				[150251] = {
					"Механик из банды Поршнеголовых", -- [1]
					"Операция \"Мехагон\"", -- [2]
				},
				[24559] = {
					"Полководец Саларис", -- [1]
					"Терраса Магистров", -- [2]
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
					["Time"] = 1547392935,
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
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
					["version"] = -1,
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1554138845,
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
					},
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
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
					["version"] = -1,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Time"] = 1547409079,
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
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
					["version"] = -1,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1541606242,
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
					["Name"] = "Hide Neutral Units [Plater]",
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
					["version"] = -1,
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1548117267,
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
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
					["version"] = -1,
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1548612537,
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
					["Name"] = "Jaina Encounter [Plater]",
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
					["version"] = -1,
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Time"] = 1547406548,
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
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
					["version"] = -1,
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1548077443,
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
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
					["version"] = -1,
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1547993111,
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
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
					["version"] = -1,
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1549827281,
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
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
					["version"] = -1,
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1548354524,
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
					["Name"] = "Combo Points [Plater]",
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
					["version"] = -1,
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1548278227,
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
					["Name"] = "Players Targeting a Target [Plater]",
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
					["version"] = -1,
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1552354619,
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
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
					["version"] = -1,
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 272,
					["semver"] = "",
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Time"] = 1553450957,
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
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
					["version"] = -1,
				}, -- [14]
			},
			["aura_tracker"] = {
				["debuff_tracked"] = {
					[303378] = true,
					[313971] = true,
					[314568] = true,
					[292711] = true,
					[204215] = true,
					[311738] = true,
				},
				["debuff_banned"] = {
					[303380] = true,
					[58180] = true,
					[302564] = true,
				},
				["buff_tracked"] = {
					[209859] = true,
				},
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
			["health_statusbar_texture"] = "Minimalist",
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
				["Combo Points"] = 3,
				["Attacking Specific Unit"] = 1,
				["Target Color"] = 3,
				["Aura Reorder"] = 1,
				["Hide Neutral Units"] = 1,
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
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 793,
			["patch_version"] = 9,
			["number_region_first_run"] = true,
			["captured_spells"] = {
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жря",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223202] = {
					["type"] = "DEBUFF",
					["source"] = "Сонарес-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Вещииолег-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283565] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["npcID"] = 145185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[223203] = {
					["source"] = "Анты-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126462] = {
					["source"] = "Алесеич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бренелия",
					["npcID"] = 0,
				},
				[300971] = {
					["source"] = "Палокраш-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[125439] = {
					["source"] = "Аё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Легионер клана Изувеченной Длани",
					["npcID"] = 16700,
				},
				[36622] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный кошмар",
					["npcID"] = 20864,
				},
				[318378] = {
					["source"] = "Вайтор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298927] = {
					["source"] = "Эверлайнс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32911] = {
					["encounterID"] = 1895,
					["source"] = "Призванный Тотем неистовства ветра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 22897,
				},
				[269239] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298928] = {
					["source"] = "Воимяальянса-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252383] = {
					["source"] = "Мумимаг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311214] = {
					["source"] = "Таргош-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15654] = {
					["npcID"] = 24560,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
				},
				[222695] = {
					["source"] = "Груммелей-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311215] = {
					["source"] = "Джесуслкии-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311216] = {
					["source"] = "Паленкова-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311217] = {
					["source"] = "Арксан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200174] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Непостижимая-Гордунни",
					["encounterID"] = 1897,
				},
				[282553] = {
					["source"] = "Куклик-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80396] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бразери",
					["npcID"] = 0,
				},
				[24394] = {
					["source"] = "Тарантис",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50752,
				},
				[36879] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[153595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["encounterID"] = 1920,
				},
				[58506] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 54933,
				},
				[264130] = {
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[8680] = {
					["source"] = "Thebash-DunModr",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274369] = {
					["source"] = "Инсалазарр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59658] = {
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[202225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Борджик-ЧерныйШрам",
					["npcID"] = 0,
				},
				[8936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[262115] = {
					["source"] = "Паллас-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279490] = {
					["source"] = "Скиазар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300989] = {
					["type"] = "BUFF",
					["source"] = "Моррока-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273348] = {
					["type"] = "BUFF",
					["source"] = "Сквиртохил",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273349] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[36880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[275398] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[298945] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кил'каррокский командир",
					["npcID"] = 145346,
				},
				[293827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мехагонский боевой механик",
					["npcID"] = 144294,
				},
				[34321] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[294852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Голос-в-Глубинах",
					["npcID"] = 151719,
				},
				[267211] = {
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[161279] = {
					["source"] = "Аникса-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[60299] = {
					["type"] = "BUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["encounterID"] = 1900,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298950] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алэз",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Холелеле-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[267217] = {
					["encounterID"] = 1936,
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Кицун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279503] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[38801] = {
					["npcID"] = 17991,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рокмар Трескун",
					["encounterID"] = 1941,
				},
				[673] = {
					["type"] = "BUFF",
					["source"] = "Борджик-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1916,
				},
				[223732] = {
					["source"] = "Зеленый защитник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148491,
				},
				[30474] = {
					["npcID"] = 17621,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страж-язычник",
					["encounterID"] = 1938,
				},
				[308172] = {
					["source"] = "Падший вестник Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152722,
				},
				[703] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Книгатеней",
					["npcID"] = 0,
				},
				[132620] = {
					["source"] = "Притаившийся",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30986] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["npcID"] = 17695,
				},
				[15655] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник резервуара Кривого Клыка",
					["npcID"] = 17958,
				},
				[46352] = {
					["source"] = "Даранти-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132621] = {
					["source"] = "Слайтеракс-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297939] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кил'каррокский провидец",
					["npcID"] = 152411,
				},
				[276441] = {
					["source"] = "Небесный наездник из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141485,
				},
				[185857] = {
					["source"] = "Карабинер из братства Стальных Волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138167,
				},
				[236021] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297941] = {
					["source"] = "Френззи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79892] = {
					["source"] = "Предсказательница Лопаа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96949,
				},
				[44177] = {
					["npcID"] = 24561,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яззай",
					["encounterID"] = 1895,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["encounterID"] = 2257,
				},
				[261616] = {
					["source"] = "Кэти Штемпельпупс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132969,
				},
				[196608] = {
					["source"] = "Алькамалька-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[162313] = {
					["source"] = "Тэйлиар-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280541] = {
					["source"] = "Нааса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Каленлар",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[81173] = {
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[280543] = {
					["source"] = "Сидорова",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138768] = {
					["source"] = "Блестящий дикорог",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127824,
				},
				[196099] = {
					["source"] = "Адскийгость-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88084] = {
					["source"] = "Дяня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 47243,
				},
				[30283] = {
					["source"] = "Бамбина",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30475] = {
					["type"] = "BUFF",
					["source"] = "Страж-язычник",
					["npcID"] = 17621,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1938,
				},
				[308188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алэз",
					["npcID"] = 0,
				},
				[280547] = {
					["source"] = "Гглоория",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[308189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Брийя",
					["npcID"] = 0,
				},
				[30923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ворожея резервуара Кривого Клыка",
					["npcID"] = 17960,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Мумимаг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200196] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[135700] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313310] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Противопехотная белка",
					["npcID"] = 151613,
				},
				[290790] = {
					["source"] = "Елена-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гринхилл",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Рейлган-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Воитель клана Изувеченной Длани",
					["npcID"] = 17671,
				},
				[242685] = {
					["source"] = "Хмелевар Линь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148744,
				},
				[16591] = {
					["source"] = "Демонвоплоти-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198664] = {
					["source"] = "Тоторин-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124430] = {
					["type"] = "BUFF",
					["source"] = "Браткондрат",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297961] = {
					["source"] = "Вакурочка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307175] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нексуз",
					["npcID"] = 0,
				},
				[180749] = {
					["source"] = "Гайковерт-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264178] = {
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307176] = {
					["source"] = "Арксан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228354] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297964] = {
					["source"] = "Синклит-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270323] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Леялери",
					["npcID"] = 0,
				},
				[297965] = {
					["source"] = "Вервуля-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Ingward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[181775] = {
					["source"] = "Сиальетта-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102165] = {
					["source"] = "Нерекаемый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36886] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сердитая искусительница",
					["npcID"] = 20883,
				},
				[15496] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Палач из рода Бесконечности",
					["npcID"] = 21138,
				},
				[287731] = {
					["source"] = "Тхааида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фредрикс",
					["npcID"] = 0,
				},
				[297969] = {
					["source"] = "Саворлина-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33943] = {
					["source"] = "Траиси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[297970] = {
					["source"] = "Ельгато",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194574] = {
					["source"] = "Кирнайт-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38806] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Защитник Аркатраца",
					["npcID"] = 20857,
				},
				[270330] = {
					["source"] = "Глыба азерита",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141971,
				},
				[31884] = {
					["source"] = "Паленкова-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31948] = {
					["npcID"] = 17991,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рокмар Трескун",
					["encounterID"] = 1941,
				},
				[274426] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283640] = {
					["type"] = "DEBUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["npcID"] = 145185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[204301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[270332] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36119] = {
					["npcID"] = 20870,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зерекет Бездонный",
					["encounterID"] = 1916,
				},
				[194576] = {
					["source"] = "Мирисида-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32588] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воитель клана Изувеченной Длани",
					["npcID"] = 17671,
				},
				[257537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[16592] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18331,
				},
				[270335] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1066] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тюремщик Аркатраца",
					["npcID"] = 20859,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даркбёрд",
					["npcID"] = 0,
				},
				[270339] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315385] = {
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Музафака-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53140] = {
					["source"] = "Вередиэль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294912] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30989] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ревнитель из клана Изувеченной Длани",
					["npcID"] = 17462,
				},
				[203795] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273415] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290819] = {
					["source"] = "Шенрира-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[296962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[117526] = {
					["type"] = "DEBUFF",
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118038] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38808] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тюремщик Аркатраца",
					["npcID"] = 20859,
				},
				[254472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Саирна",
					["npcID"] = 0,
				},
				[43415] = {
					["source"] = "Темная охотница из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145180,
				},
				[203285] = {
					["source"] = "Сеттле",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297989] = {
					["source"] = "Алистрен-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254473] = {
					["source"] = "Морошко-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Сеттле",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297991] = {
					["source"] = "Шигонский",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254474] = {
					["source"] = "Палайф-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262161] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[297993] = {
					["source"] = "Николясмус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[5302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[278543] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[296971] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[34970] = {
					["type"] = "BUFF",
					["source"] = "Рокмар Трескун",
					["npcID"] = 17991,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1941,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[111898] = {
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200218] = {
					["source"] = "Скверноботик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101462,
				},
				[294926] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[131627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наваждение ша",
					["npcID"] = 66423,
				},
				[201754] = {
					["source"] = "Кадавр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130727,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ромути",
					["npcID"] = 0,
				},
				[30478] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Новообращенный орк Скверны",
					["npcID"] = 17083,
				},
				[291856] = {
					["npcID"] = 150485,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Плазменная сфера",
					["encounterID"] = 2260,
				},
				[36634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[311308] = {
					["source"] = "Борецсвета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[294929] = {
					["npcID"] = 144246,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
				},
				[207386] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[33691] = {
					["source"] = "Местия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311310] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[226326] = {
					["type"] = "BUFF",
					["source"] = "Хукуси",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132653] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147369,
				},
				[311311] = {
					["source"] = "Шичуан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15785] = {
					["source"] = "Маносос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19306,
				},
				[38810] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный кошмар",
					["npcID"] = 20864,
				},
				[275481] = {
					["source"] = "Фондя-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[285719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хьёна-Гордунни",
					["npcID"] = 0,
				},
				[1490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[285720] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тревискольт-Гордунни",
					["npcID"] = 0,
				},
				[12042] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48280] = {
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153897,
				},
				[285721] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[294935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йолька",
					["npcID"] = 0,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Аркерас-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[93985] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[291865] = {
					["npcID"] = 150396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
				},
				[198688] = {
					["source"] = "Ареда-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Мичуру-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298009] = {
					["source"] = "Аласдейр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Мариарти-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278559] = {
					["source"] = "Йозек-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38811] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный кошмар",
					["npcID"] = 20864,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["source"] = "Ingward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48281] = {
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[288800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 16594,
				},
				[30735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный чернокнижник Пустоклят",
					["npcID"] = 16807,
				},
				[298016] = {
					["source"] = "Тряпко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30991] = {
					["type"] = "BUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["npcID"] = 17695,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1938,
				},
				[291874] = {
					["npcID"] = 150442,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Летающий кран",
					["encounterID"] = 2258,
				},
				[301088] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бомботанк",
					["npcID"] = 151657,
				},
				[1706] = {
					["source"] = "Миссисли-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54680] = {
					["source"] = "Ток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[236060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[280615] = {
					["source"] = "Тотембро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38940] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский лучник",
					["npcID"] = 20901,
				},
				[106785] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[291878] = {
					["npcID"] = 150396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[268334] = {
					["source"] = "Пчелопотам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134147,
				},
				[273453] = {
					["source"] = "Веселыепятки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299047] = {
					["source"] = "Зелнайт-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16595] = {
					["source"] = "Бимперморти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[278574] = {
					["source"] = "Фондя-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[272432] = {
					["encounterID"] = 1936,
					["source"] = "Страж гнева",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136407,
				},
				[85288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[1850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[38813] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пожиратель душ",
					["npcID"] = 20866,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Энташелар",
					["npcID"] = 0,
				},
				[207400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[195627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[30992] = {
					["source"] = "Убийца из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17695,
				},
				[15530] = {
					["npcID"] = 24561,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яззай",
					["encounterID"] = 1895,
				},
				[37662] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рабочий-бродяга пустошей",
					["npcID"] = 17964,
				},
				[265273] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204843] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272440] = {
					["source"] = "Мэлдорн-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1966] = {
					["source"] = "Найтвингр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34335] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Крикун Негатона",
					["npcID"] = 20875,
				},
				[15786] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[195630] = {
					["source"] = "Алькамалька-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273465] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[83243] = {
					["source"] = "Кручустрелу-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294966] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[267325] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["source"] = "Гглоория",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
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
					["source"] = "Мумимаг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303158] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Занш'ир - чешуйчатый страж",
					["npcID"] = 152881,
				},
				[2060] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293945] = {
					["source"] = "Фрэнс-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278589] = {
					["source"] = "Эйлайт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83244] = {
					["source"] = "Эмприла-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204335] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Донолег",
					["npcID"] = 0,
				},
				[303160] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Занш'ир - чешуйчатый страж",
					["npcID"] = 152881,
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
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38815] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Незрячий глаз",
					["npcID"] = 21346,
				},
				[267331] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215598] = {
					["source"] = "Рироина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36512] = {
					["type"] = "BUFF",
					["source"] = "Провидец Гнева Соккорат",
					["npcID"] = 20886,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1915,
				},
				[126755] = {
					["source"] = "Ниль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13323] = {
					["source"] = "Эфириал-чудесник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18315,
				},
				[300095] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нестабильный волноход",
					["npcID"] = 150371,
				},
				[57755] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
				},
				[115750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[49821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Непостижимая-Гордунни",
					["npcID"] = 0,
				},
				[37664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародейка резервуара Кривого Клыка",
					["npcID"] = 17961,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Чиркас-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аггария",
					["npcID"] = 0,
				},
				[273481] = {
					["source"] = "Бруталкопыто-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jojo the Palestrider",
					["npcID"] = 104815,
				},
				[222256] = {
					["source"] = "Каэрвиль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Мэлдорн-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302150] = {
					["source"] = "Железнобокий-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гиббли",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 26579,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[297035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Псина-Дракономор",
					["npcID"] = 0,
				},
				[38817] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Смерти",
					["npcID"] = 20867,
				},
				[197690] = {
					["source"] = "Фарадейка-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282704] = {
					["source"] = "Дэтппул-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291918] = {
					["npcID"] = 150442,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Летающий кран",
					["encounterID"] = 2258,
				},
				[297037] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alzhyr-DunModr",
					["npcID"] = 0,
				},
				[205369] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[44320] = {
					["type"] = "BUFF",
					["source"] = "Кристалл Скверны",
					["npcID"] = 24722,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1897,
				},
				[300110] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Яростный элементаль",
					["npcID"] = 152164,
				},
				[297039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Риат",
					["npcID"] = 0,
				},
				[262232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[297040] = {
					["source"] = "Мяукала-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291922] = {
					["npcID"] = 144246,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
				},
				[37666] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Наблюдатель резервуара Кривого Клыка",
					["npcID"] = 17938,
				},
				[88625] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[2908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288853] = {
					["source"] = "Домекана-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38818] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Смерти",
					["npcID"] = 20867,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[313424] = {
					["source"] = "Павиф-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298068] = {
					["source"] = "Павиф-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[56222] = {
					["source"] = "Мирес-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291928] = {
					["npcID"] = 150396,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воздушное судно R-21/X",
					["encounterID"] = 2260,
				},
				[49184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[296024] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[8269] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 17839,
				},
				[291930] = {
					["npcID"] = 150520,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Куб металлолома",
					["encounterID"] = 2258,
				},
				[3164] = {
					["source"] = "Хрюл-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[160331] = {
					["source"] = "Лиллоу-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44194] = {
					["npcID"] = 24664,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кель'тас Солнечный Скиталец",
					["encounterID"] = 1894,
				},
				[202306] = {
					["encounterID"] = 1851,
					["source"] = "Фазовый паук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102434,
				},
				[312411] = {
					["source"] = "Кицун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36644] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пожиратель душ",
					["npcID"] = 20866,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Водка",
					["npcID"] = 0,
				},
				[41635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[37668] = {
					["source"] = "Эфириал-чароплет",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18312,
				},
				[293986] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Взрывотрон Х-80\"",
					["npcID"] = 151476,
				},
				[79927] = {
					["source"] = "Заклинательница земли Гулгорт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134775,
				},
				[6807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[312415] = {
					["source"] = "Зара'тик - страж улья",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157792,
				},
				[305249] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1935,
				},
				[208963] = {
					["source"] = "Тотем небесной ярости",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[39332] = {
					["source"] = "Ловчий нексуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18314,
				},
				[270444] = {
					["type"] = "BUFF",
					["source"] = "Рагна",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134884,
				},
				[305252] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 1935,
				},
				[194632] = {
					["type"] = "BUFF",
					["source"] = "Шерайа-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1936,
				},
				[130348] = {
					["type"] = "BUFF",
					["source"] = "Патрисияквас",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107570] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[291946] = {
					["type"] = "BUFF",
					["source"] = "КУ-ДЖ0",
					["npcID"] = 144246,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2258,
				},
				[37669] = {
					["source"] = "Эфириал-жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18317,
				},
				[307303] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[33958] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пожиратель душ",
					["npcID"] = 20866,
				},
				[255035] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202312] = {
					["source"] = "Лорд Малгат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102282,
				},
				[199753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[3716] = {
					["source"] = "Якраксэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58960,
				},
				[303211] = {
					["source"] = "Эфе-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300140] = {
					["source"] = "Мирес-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1920,
				},
				[185422] = {
					["source"] = "Литвинка-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210504] = {
					["encounterID"] = 1851,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Зловещий охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[212552] = {
					["source"] = "Ерсак-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["source"] = "Мендаан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273526] = {
					["type"] = "DEBUFF",
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15628] = {
					["source"] = "Волхова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264314] = {
					["source"] = "Морицц-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[204876] = {
					["source"] = "Хранитель портала",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102302,
				},
				[255040] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[181842] = {
					["source"] = "Сиальетта-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 152067,
				},
				[297077] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саландра",
					["npcID"] = 0,
				},
				[281721] = {
					["source"] = "Бернин",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Велебор",
					["npcID"] = 0,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гамаюн-Азурегос",
					["npcID"] = 0,
				},
				[297079] = {
					["source"] = "Энташелар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Веноми-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281724] = {
					["source"] = "Дамппир-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[16856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гладиатор из клана Изувеченной Длани",
					["npcID"] = 17464,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[221771] = {
					["source"] = "Бернин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29333] = {
					["source"] = "Амадо-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296059] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Тенеткач",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скат резервуара Кривого Клыка",
					["npcID"] = 21128,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Кариюдо-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277633] = {
					["source"] = "Зебэст Вечноживущий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141905,
				},
				[124211] = {
					["type"] = "BUFF",
					["source"] = "Субзеро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 107244,
				},
				[294015] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Взрывотрон Х-80\"",
					["npcID"] = 151476,
				},
				[30485] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Язычник из клана Изувеченной Длани",
					["npcID"] = 17420,
				},
				[297087] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саландра",
					["npcID"] = 0,
				},
				[298111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шар сокрушающего прилива",
					["npcID"] = 153500,
				},
				[30741] = {
					["source"] = "Главный чернокнижник Пустоклят",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16807,
				},
				[251463] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["encounterID"] = 1914,
				},
				[206930] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[124212] = {
					["source"] = "Оласт-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33833] = {
					["npcID"] = 20977,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["encounterID"] = 1914,
				},
				[291972] = {
					["type"] = "DEBUFF",
					["source"] = "КУ-ДЖ0",
					["npcID"] = 144246,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2258,
				},
				[280711] = {
					["source"] = "Ниалотец-Галакронд",
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
					["npcID"] = 144246,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "КУ-ДЖ0",
					["encounterID"] = 2258,
				},
				[115767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[124213] = {
					["source"] = "Мумимаг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280713] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44199] = {
					["type"] = "BUFF",
					["source"] = "Феникс",
					["npcID"] = 24674,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1894,
				},
				[268429] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295047] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[28502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ронгарек-ПиратскаяБухта",
					["npcID"] = 0,
				},
				[295048] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[127797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[231504] = {
					["source"] = "Нерзулыч",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[244813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29334] = {
					["source"] = "Дерикус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294027] = {
					["source"] = "Паленкова-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["source"] = "Демонический тиран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[267410] = {
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[257099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Грумт-Галакронд",
					["npcID"] = 0,
				},
				[308361] = {
					["type"] = "BUFF",
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153106,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Амневсепо",
					["npcID"] = 0,
				},
				[216150] = {
					["source"] = "Темная охотница Мутумба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144987,
				},
				[185438] = {
					["source"] = "Ареда-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300174] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[257101] = {
					["source"] = "Миромаг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эредарский пожиратель душ",
					["npcID"] = 20879,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Тотем исцеляющего потока",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3527,
				},
				[124216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Драйскай",
					["npcID"] = 0,
				},
				[80451] = {
					["source"] = "Шэлти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Слезаогня-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297108] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[124217] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["source"] = "Матрона Несса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96947,
				},
				[44457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Манабулкин",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Гросколд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264353] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[308375] = {
					["source"] = "Падшая вестница Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152722,
				},
				[156779] = {
					["source"] = "Диадора-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Kamaradeus-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297116] = {
					["type"] = "BUFF",
					["source"] = "Экзотикс",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206432] = {
					["source"] = "Сиггейр-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297117] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Доруе",
					["npcID"] = 0,
				},
				[217694] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[36908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фазовая прыгуана",
					["npcID"] = 20906,
				},
				[152175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[79175] = {
					["type"] = "BUFF",
					["source"] = "Краб-быстроступ",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123236,
				},
				[89157] = {
					["source"] = "Хдышь-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34477] = {
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34605] = {
					["type"] = "BUFF",
					["source"] = "Принц Шаффар",
					["encounterID"] = 1899,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18344,
				},
				[38828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 20869,
				},
				[39340] = {
					["npcID"] = 17942,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зыбун",
					["encounterID"] = 1940,
				},
				[79176] = {
					["source"] = "Краб-быстроступ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123236,
				},
				[14030] = {
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142371,
				},
				[204901] = {
					["source"] = "Хранитель портала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102336,
				},
				[297126] = {
					["source"] = "Фаршмакх-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308388] = {
					["source"] = "Капля анимы",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 155950,
				},
				[36909] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фазовая прыгуана",
					["npcID"] = 20906,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Монтос-Дракономор",
					["npcID"] = 0,
				},
				[297128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Оборонобот II\"",
					["npcID"] = 144298,
				},
				[194153] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вардило",
					["npcID"] = 0,
				},
				[188523] = {
					["source"] = "Заклинательница земли Гулгорт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134775,
				},
				[263346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[7384] = {
					["source"] = "Паллас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Энташелар",
					["npcID"] = 0,
				},
				[294061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Танк-долгоног",
					["npcID"] = 151658,
				},
				[199786] = {
					["source"] = "Пенабуки-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Платиновый лупцеватор\"",
					["npcID"] = 144244,
				},
				[238177] = {
					["source"] = "Светнарь-Гром",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36142] = {
					["type"] = "BUFF",
					["source"] = "Даллия Глашатай Судьбы",
					["npcID"] = 20885,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1913,
				},
				[195692] = {
					["source"] = "Елена-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[294064] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Танк-долгоног",
					["npcID"] = 151658,
				},
				[36910] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фазовая прыгуана",
					["npcID"] = 20906,
				},
				[198764] = {
					["source"] = "Чи-Цзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100868,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Эготика-Борейскаятундра",
					["encounterID"] = 1937,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[38830] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Часовой Аркатраца",
					["npcID"] = 20869,
				},
				[196718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[198766] = {
					["source"] = "Чи-Цзи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100868,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Манабулкин",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[182387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[61353] = {
					["source"] = "Дагна Кремневое Ружье",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 96779,
				},
				[2061] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[86603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гавин Малсбери",
					["npcID"] = 61838,
				},
				[294073] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Танк-долгоног",
					["npcID"] = 151658,
				},
				[24858] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37551] = {
					["source"] = "Меткий стрелок из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16704,
				},
				[315573] = {
					["source"] = "Кимая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Страд-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186996] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 94433,
				},
				[265412] = {
					["source"] = "Мерзопакость-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аяса",
					["npcID"] = 0,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Непостижимая-Гордунни",
					["npcID"] = 0,
				},
				[281794] = {
					["type"] = "BUFF",
					["source"] = "Сплач",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260708] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281795] = {
					["source"] = "Сфинта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36912] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккирис Штормоход",
					["npcID"] = 20908,
				},
				[280772] = {
					["source"] = "Стекломакс-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271559] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Стекломакс-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Авикейчик-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38064] = {
					["source"] = "Эфириал-чудесник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18315,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[277703] = {
					["source"] = "Людася-Седогрив",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27610] = {
					["npcID"] = 24560,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
				},
				[238188] = {
					["source"] = "Джеймстикир-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[303299] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азш'ари-заклинательница",
					["npcID"] = 145326,
				},
				[277706] = {
					["source"] = "Минстрав-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["source"] = "Денжаминус-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[238189] = {
					["source"] = "Джеймстикир-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255593] = {
					["source"] = "Бухтовый крепкозуб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123226,
				},
				[212084] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
				},
				[280780] = {
					["source"] = "Мияливонг-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206966] = {
					["source"] = "Отлижу-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257130] = {
					["source"] = "Мэлдорн-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270544] = {
					["source"] = "Пронзатель из племени Черного Копья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149007,
				},
				[296138] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[255595] = {
					["type"] = "DEBUFF",
					["source"] = "Умбровый пескохват",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140585,
				},
				[59052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Этьенн",
					["npcID"] = 0,
				},
				[78674] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51886] = {
					["encounterID"] = 1900,
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15087] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Душегуб Эфириума",
					["npcID"] = 20896,
				},
				[40625] = {
					["source"] = "Выкат-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118345] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Изначальный элементаль земли",
					["npcID"] = 61056,
				},
				[303310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азш'ари-призывательница",
					["npcID"] = 145327,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[297168] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[62124] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199804] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Лэкси-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279766] = {
					["type"] = "BUFF",
					["source"] = "Тоска Орлиное Перо",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140778,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Истериика-Дракономор",
					["npcID"] = 0,
				},
				[15791] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ворожея резервуара Кривого Клыка",
					["npcID"] = 17960,
				},
				[288981] = {
					["type"] = "BUFF",
					["source"] = "Сатириада",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йервальд",
					["npcID"] = 0,
				},
				[188033] = {
					["source"] = "Гремимунд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ракетный танк",
					["npcID"] = 151659,
				},
				[271581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ветара-Азурегос",
					["npcID"] = 0,
				},
				[264415] = {
					["source"] = "Шуния-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Зиновочка-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33076] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Кхэдли-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202879] = {
					["source"] = "Ниалотец-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Локдорк",
					["npcID"] = 0,
				},
				[295130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Детектобот",
					["npcID"] = 151812,
				},
				[294107] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["npcID"] = 151773,
				},
				[38835] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крикун Негатона",
					["npcID"] = 20875,
				},
				[270562] = {
					["source"] = "Торар-Дракономор",
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
				[270564] = {
					["source"] = "Тельморан-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36020] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буян из клана Изувеченной Длани",
					["npcID"] = 16593,
				},
				[222333] = {
					["source"] = "Нееленочка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36276] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21104,
				},
				[268519] = {
					["type"] = "BUFF",
					["source"] = "Лайтаэль",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295137] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53] = {
					["source"] = "Ареда-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Квадракуб-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бразери",
					["npcID"] = 0,
				},
				[114255] = {
					["type"] = "BUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1920,
				},
				[31707] = {
					["source"] = "Элементаль воды",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[196742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[275689] = {
					["source"] = "Стекломакс-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Зулбой",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302307] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[123981] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299237] = {
					["source"] = "Бромдяга-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[299239] = {
					["source"] = "Дехашница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58160] = {
					["source"] = "Энгорд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[278767] = {
					["source"] = "Алькамалька-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[25821] = {
					["npcID"] = 16808,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вождь Каргат Острорук",
					["encounterID"] = 1938,
				},
				[278769] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[280817] = {
					["source"] = "Jjivotnoto-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79962] = {
					["source"] = "Варлеан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96946,
				},
				[275699] = {
					["source"] = "Понгар-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Nekaps-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268534] = {
					["source"] = "Дяня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Элантугор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264440] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["encounterID"] = 1914,
				},
				[281844] = {
					["source"] = "Tyrenas-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33975] = {
					["npcID"] = 20977,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["encounterID"] = 1914,
				},
				[303345] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Чиркас-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["source"] = "Бьёрнольф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27613] = {
					["encounterID"] = 1895,
					["source"] = "Кагани Ночной Удар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24557,
				},
				[301299] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Шильда-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меткий стрелок из клана Изувеченной Длани",
					["npcID"] = 16704,
				},
				[305395] = {
					["source"] = "Матлакс-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262398] = {
					["source"] = "Роммару-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304372] = {
					["type"] = "BUFF",
					["source"] = "Эвилес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97112] = {
					["type"] = "BUFF",
					["source"] = "Бяка-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[28509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ронгарек-ПиратскаяБухта",
					["npcID"] = 0,
				},
				[213644] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маклиам-Гордунни",
					["encounterID"] = 1895,
				},
				[264448] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["encounterID"] = 1914,
				},
				[262401] = {
					["source"] = "Роммару-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203407] = {
					["source"] = "Krimpa-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Чиркас-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[324851] = {
					["source"] = "Зулджазим-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1079] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[51124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[172184] = {
					["source"] = "Верховный маг Накада",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 82564,
				},
				[106839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[268547] = {
					["source"] = "Дяня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Тхааида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Волма-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[270598] = {
					["type"] = "BUFF",
					["source"] = "Спокойное грозношеее",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126685,
				},
				[119381] = {
					["source"] = "Файнестхорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295169] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Взрывотрон Х-80\"",
					["npcID"] = 151476,
				},
				[301312] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кассиндра",
					["npcID"] = 0,
				},
				[269576] = {
					["source"] = "Ingward",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "\"Взрывотрон Х-80\"",
					["npcID"] = 151476,
				},
				[54452] = {
					["source"] = "Эрунда-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324860] = {
					["source"] = "Пухмех-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сосулько",
					["npcID"] = 0,
				},
				[324861] = {
					["source"] = "Павиф-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324862] = {
					["source"] = "Икугу-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310530] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каленлар",
					["npcID"] = 0,
				},
				[48438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[40504] = {
					["npcID"] = 17881,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эонус",
					["encounterID"] = 1919,
				},
				[268558] = {
					["type"] = "BUFF",
					["source"] = "Хрылак-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Малрога",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213652] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[70243] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хедда-Дракономор",
					["npcID"] = 0,
				},
				[324866] = {
					["source"] = "Бессовестти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245389] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204951] = {
					["source"] = "Хранитель портала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102336,
				},
				[267537] = {
					["source"] = "Кайфовая-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262419] = {
					["source"] = "Роммару-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324868] = {
					["source"] = "Тильриу-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314631] = {
					["source"] = "Паленкова-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157348] = {
					["source"] = "Изначальный элементаль бури",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77942,
				},
				[324870] = {
					["source"] = "Зулджазим-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172193] = {
					["source"] = "Снайпер 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149129,
				},
				[295183] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "\"Взрывотрон Х-80\"",
					["npcID"] = 151476,
				},
				[273685] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["source"] = "Кайфовая-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194717] = {
					["source"] = "Анжлилина-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295186] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197277] = {
					["source"] = "Камицу-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54710] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[296211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[280855] = {
					["source"] = "Эльсиролл-Разувий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27615] = {
					["encounterID"] = 1895,
					["source"] = "Кагани Ночной Удар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24557,
				},
				[209563] = {
					["source"] = "Гремимунд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293142] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Слезаогня-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[1543] = {
					["source"] = "Лисицанова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Дух огня",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69791,
				},
				[280861] = {
					["source"] = "Кайфовая-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88163] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Борджик-ЧерныйШрам",
					["npcID"] = 0,
				},
				[267553] = {
					["source"] = "Пчелопотам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134147,
				},
				[280862] = {
					["source"] = "Аезир-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Мерзопакость-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260242] = {
					["source"] = "Ingward",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даркнекогами",
					["npcID"] = 0,
				},
				[38843] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эредарский пожиратель душ",
					["npcID"] = 20879,
				},
				[196770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Витдол-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280866] = {
					["type"] = "BUFF",
					["source"] = "Кэлви-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Дотраэль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280867] = {
					["source"] = "Лираса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Амебовидное порождение",
					["npcID"] = 21395,
				},
				[22561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный драконаар",
					["npcID"] = 20910,
				},
				[324889] = {
					["source"] = "Арифуриет",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280868] = {
					["type"] = "BUFF",
					["source"] = "Кэлви-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298272] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Крорг",
					["npcID"] = 153662,
				},
				[299296] = {
					["source"] = "Халозил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алэз",
					["npcID"] = 0,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Укупкинский",
					["npcID"] = 0,
				},
				[204963] = {
					["source"] = "Лорд Малгат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102282,
				},
				[299298] = {
					["source"] = "Набрал-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Суок",
					["npcID"] = 0,
				},
				[294180] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сторожевой бот модели \"ПЕС\"",
					["npcID"] = 151773,
				},
				[316703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[299300] = {
					["source"] = "Лертана-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[14034] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[302372] = {
					["source"] = "Зёмкин-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 50023,
				},
				[44475] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг-стражник Солнечного Клинка",
					["npcID"] = 24683,
				},
				[299302] = {
					["source"] = "Лонариэль-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[272685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[299304] = {
					["source"] = "Ужасмэн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[14514] = {
					["type"] = "BUFF",
					["source"] = "Яззай",
					["npcID"] = 24561,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[253595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сэмдин",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[210598] = {
					["source"] = "Краппрон-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чернозубый тарантул",
					["npcID"] = 18983,
				},
				[116] = {
					["source"] = "Пенабуки-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273714] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[298286] = {
					["source"] = "Изгремнур-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 24685,
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
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[298287] = {
					["source"] = "Готка-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298288] = {
					["source"] = "Палайф-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[299313] = {
					["source"] = "Смурффа-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271672] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["encounterID"] = 1914,
				},
				[294195] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Оборонобот II\"",
					["npcID"] = 144298,
				},
				[303409] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ундана Ледяной Шип",
					["npcID"] = 153304,
				},
				[38846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Смертоносный эредар",
					["npcID"] = 20880,
				},
				[196782] = {
					["source"] = "Бьёрнольф-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43197] = {
					["type"] = "BUFF",
					["source"] = "Калмия-Ревущийфьорд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194223] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299316] = {
					["source"] = "Сахарок-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268604] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335148] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[12051] = {
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1914,
				},
				[44605] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Магистр Солнечного Клинка",
					["npcID"] = 24685,
				},
				[134847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-4000\"",
					["npcID"] = 43929,
				},
				[8212] = {
					["source"] = "Алисразор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Артексис-Гордунни",
					["encounterID"] = 1898,
				},
				[53563] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Войк-Азурегос",
					["npcID"] = 0,
				},
				[299320] = {
					["source"] = "Сефинрот-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[299321] = {
					["source"] = "Бромдяга-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[314678] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тургас",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Шенрира-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282943] = {
					["type"] = "DEBUFF",
					["source"] = "Таранный поршень",
					["npcID"] = 153202,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[234153] = {
					["source"] = "Бамбина",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210607] = {
					["type"] = "BUFF",
					["source"] = "Фаттиния-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299324] = {
					["source"] = "Чернуха-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[286016] = {
					["source"] = "Злобнолис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[255141] = {
					["source"] = "Къаара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лекарстон",
					["npcID"] = 0,
				},
				[81262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Период цветения",
					["npcID"] = 47649,
				},
				[305469] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глубинный кольчатый змей",
					["npcID"] = 145343,
				},
				[61882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[22883] = {
					["source"] = "Эфириал-жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18317,
				},
				[196277] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198837] = {
					["source"] = "Восставший тихоступ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[38592] = {
					["type"] = "BUFF",
					["source"] = "Темпорус",
					["npcID"] = 17880,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[313663] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38848] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Смертоносный эредар",
					["npcID"] = 20880,
				},
				[43199] = {
					["source"] = "Баблдрим-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["encounterID"] = 1897,
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314689] = {
					["source"] = "Синклит-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36033] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буян из клана Изувеченной Длани",
					["npcID"] = 16593,
				},
				[309571] = {
					["source"] = "Медодав",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[287049] = {
					["source"] = "Прототип бомбардировщика Поззика",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147945,
				},
				[122470] = {
					["source"] = "Анты-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Префикс",
					["npcID"] = 0,
				},
				[270670] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[288074] = {
					["source"] = "Тиранеса-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5211] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 1897,
				},
				[120679] = {
					["source"] = "Каканяшка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Федир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Темноводный кроколиск",
					["npcID"] = 17952,
				},
				[38593] = {
					["npcID"] = 17880,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Темпорус",
					["encounterID"] = 1921,
				},
				[272721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[38849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Освобожденный уничтожитель",
					["npcID"] = 20881,
				},
				[270674] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35010] = {
					["npcID"] = 17941,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Менну Предатель",
					["encounterID"] = 1939,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Иомочка",
					["npcID"] = 0,
				},
				[316744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сатис",
					["npcID"] = 0,
				},
				[272723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[183998] = {
					["source"] = "Альбедис-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэлдо-Азурегос",
					["npcID"] = 0,
				},
				[164547] = {
					["source"] = "Федир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Иомочка",
					["npcID"] = 0,
				},
				[305485] = {
					["source"] = "Лираса",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303438] = {
					["source"] = "Шайконг-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53822] = {
					["source"] = "Нидол-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203451] = {
					["type"] = "BUFF",
					["source"] = "Саванок-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306511] = {
					["source"] = "Медодав",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154154,
				},
				[11540] = {
					["source"] = "Таллири",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15667] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 21137,
				},
				[31458] = {
					["type"] = "BUFF",
					["source"] = "Темпорус",
					["npcID"] = 17880,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[190655] = {
					["source"] = "Слезаогня-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27619] = {
					["type"] = "BUFF",
					["source"] = "Яззай",
					["npcID"] = 24561,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[287062] = {
					["source"] = "Вэйдун-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Лонликен",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Кариюдо-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44353] = {
					["type"] = "DEBUFF",
					["source"] = "Вексалиус",
					["npcID"] = 24744,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1898,
				},
				[223929] = {
					["source"] = "Домекана-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216251] = {
					["source"] = "Алисинка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278876] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Квадракуб-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[285020] = {
					["npcID"] = 144244,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Платиновый лупцеватор\"",
					["encounterID"] = 2257,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295258] = {
					["source"] = "Нейтер-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[3166] = {
					["source"] = "Роннда-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272737] = {
					["source"] = "Дпска-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257715] = {
					["source"] = "Шэлти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[238264] = {
					["source"] = "Джеймстикир-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260787] = {
					["source"] = "Магвас-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дрюкар-Дракономор",
					["npcID"] = 0,
				},
				[44226] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1894,
				},
				[306524] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Девочкамоя-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273766] = {
					["source"] = "Часовой 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149446,
				},
				[273767] = {
					["source"] = "Пехотинец 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145179,
				},
				[6795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[221887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зера-Азурегос",
					["npcID"] = 0,
				},
				[273768] = {
					["source"] = "Викарий 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145178,
				},
				[224447] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 112742,
				},
				[38852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таящаяся ведьма",
					["npcID"] = 20882,
				},
				[304482] = {
					["type"] = "DEBUFF",
					["source"] = "Ридз",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273770] = {
					["source"] = "Викарий 7-го легиона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145178,
				},
				[19750] = {
					["source"] = "Паленкова-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279913] = {
					["source"] = "Бфгдевятьк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Кунфуциий-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44227] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1894,
				},
				[247483] = {
					["source"] = "Джейнлайолен-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3566] = {
					["source"] = "Раодогаст",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36677] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Энтропический глаз",
					["npcID"] = 20868,
				},
				[298343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[194249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Этерей",
					["npcID"] = 0,
				},
				[160978] = {
					["source"] = "Нучтонеждали",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298347] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 152676,
				},
				[160979] = {
					["source"] = "Нучтонеждали",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Миликсианг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267637] = {
					["source"] = "Нагорный вендиго",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131513,
				},
				[56641] = {
					["source"] = "Ingward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314730] = {
					["source"] = "Тисифон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157468,
				},
				[48707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[15284] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воитель резервуара Кривого Клыка",
					["npcID"] = 17957,
				},
				[224453] = {
					["source"] = "Послушник Саел'орн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112738,
				},
				[152279] = {
					["type"] = "BUFF",
					["source"] = "Аверсэн-Ревущийфьорд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1936,
				},
				[160981] = {
					["source"] = "Нучтонеждали",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15572] = {
					["type"] = "DEBUFF",
					["source"] = "Констебль Эстли",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142371,
				},
				[11541] = {
					["source"] = "Таллири",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160982] = {
					["source"] = "Аникса-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[27621] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[203981] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[224457] = {
					["source"] = "Послушница Саел'орн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112738,
				},
				[315763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Веристраз",
					["npcID"] = 0,
				},
				[274814] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[308599] = {
					["source"] = "Зёмкин-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Эрната-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46661] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тагзар",
					["npcID"] = 0,
				},
				[224459] = {
					["source"] = "Послушник Саел'орн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112738,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Артексис-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1898,
				},
				[39367] = {
					["npcID"] = 20870,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зерекет Бездонный",
					["encounterID"] = 1916,
				},
				[124275] = {
					["source"] = "Алькамалька-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224460] = {
					["source"] = "Ядошкурый тенеткач",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112733,
				},
				[261827] = {
					["source"] = "Порабощенный проклятием стражник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131534,
				},
				[196819] = {
					["source"] = "Ареда-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96890] = {
					["type"] = "BUFF",
					["source"] = "Эландис-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Пенабуки-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261828] = {
					["type"] = "BUFF",
					["source"] = "Порабощенная проклятием стражница",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131534,
				},
				[201427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[273798] = {
					["source"] = "Мичуру-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ведьма из клана Змеиных Колец",
					["npcID"] = 24696,
				},
				[205523] = {
					["source"] = "Кунфуциий-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[226510] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299394] = {
					["source"] = "Тисифон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157468,
				},
				[31589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[257223] = {
					["source"] = "Щепной зверь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131548,
				},
				[13877] = {
					["source"] = "Найтвингр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210643] = {
					["source"] = "Зулбой",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316801] = {
					["source"] = "Озарко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луару",
					["npcID"] = 0,
				},
				[224465] = {
					["source"] = "Ядошкурый тенеткач",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112733,
				},
				[5116] = {
					["encounterID"] = 1937,
					["source"] = "Веноми-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Непостижимая-Гордунни",
					["npcID"] = 0,
				},
				[193753] = {
					["source"] = "Филинхос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277901] = {
					["source"] = "Лейтенант Уильямс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131037,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[46151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ведьма из клана Змеиных Колец",
					["npcID"] = 24696,
				},
				[5308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[68996] = {
					["source"] = "Найтвингр-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пробудившийся мертвец",
					["npcID"] = 136490,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Засерулькин",
					["npcID"] = 0,
				},
				[275857] = {
					["source"] = "Слезаогня-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[22120] = {
					["source"] = "Нагорный вендиго",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131513,
				},
				[348] = {
					["source"] = "Страд-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30502] = {
					["type"] = "BUFF",
					["source"] = "Главный чернокнижник Пустоклят",
					["npcID"] = 16807,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1936,
				},
				[195292] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[175841] = {
					["type"] = "BUFF",
					["source"] = "Богурд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вэлвир",
					["npcID"] = 0,
				},
				[355] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
				},
				[235219] = {
					["source"] = "Рельда",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[124280] = {
					["source"] = "Бернин",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Переработчик отходов",
					["npcID"] = 144293,
				},
				[303504] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ширакесс - исказительница Бездны",
					["npcID"] = 153843,
				},
				[275863] = {
					["source"] = "Бульбасвист-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[51271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[51399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[193759] = {
					["source"] = "Ариданна-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202461] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фюрериска",
					["npcID"] = 0,
				},
				[285083] = {
					["source"] = "Тотемвпуть",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 93444,
				},
				[46153] = {
					["npcID"] = 24723,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Селин Огненное Сердце",
					["encounterID"] = 1897,
				},
				[181477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 90005,
				},
				[97153] = {
					["source"] = "Лучник Золотого Лотоса",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154274,
				},
				[8599] = {
					["source"] = "Эфириал - осквернитель гробниц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18311,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[403] = {
					["encounterID"] = 1897,
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[408] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Страд-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Диджитал-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[316826] = {
					["source"] = "Искаженный отросток",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[212704] = {
					["source"] = "Лучигор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259285] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Лукрец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[421] = {
					["source"] = "Алисинка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 91472,
				},
				[303520] = {
					["type"] = "BUFF",
					["source"] = "Мурилиня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[309664] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[19434] = {
					["source"] = "Ingward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Кэлви-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309666] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[310690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Борецсвета",
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
					["source"] = "Лукрец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292264] = {
					["npcID"] = 144249,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Омега-крушитель\"",
					["encounterID"] = 2260,
				},
				[313763] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[57288] = {
					["source"] = "Гремимунд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36941] = {
					["source"] = "Иловай-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316835] = {
					["source"] = "Искаженный отросток",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[317859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[227041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[46155] = {
					["npcID"] = 24723,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Селин Огненное Сердце",
					["encounterID"] = 1897,
				},
				[292267] = {
					["type"] = "DEBUFF",
					["source"] = "\"Омега-крушитель\"",
					["npcID"] = 144249,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[317861] = {
					["source"] = "Донэскобар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306600] = {
					["source"] = "Техностраза-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295339] = {
					["source"] = "Мояко",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Воитель резервуара Кривого Клыка",
					["npcID"] = 17957,
				},
				[272817] = {
					["source"] = "Мумимаг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 93489,
				},
				[313768] = {
					["source"] = "Солукс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157097,
				},
				[298412] = {
					["source"] = "Арнинггар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191212] = {
					["source"] = "Мариякюри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309674] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[273843] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309675] = {
					["source"] = "Торшег",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157156,
				},
				[298414] = {
					["source"] = "Экзистенция-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15254] = {
					["encounterID"] = 1899,
					["source"] = "Эфириальный маяк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18431,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[309676] = {
					["type"] = "BUFF",
					["source"] = "Хрылак-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298415] = {
					["source"] = "Бромдяга-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22570] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[256222] = {
					["source"] = "Горная коза",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136939,
				},
				[304559] = {
					["source"] = "Эрната-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Маг-стражник Солнечного Клинка",
					["npcID"] = 24683,
				},
				[33871] = {
					["source"] = "Эфириал-падальщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18309,
				},
				[217832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[31464] = {
					["npcID"] = 17880,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Темпорус",
					["encounterID"] = 1921,
				},
				[153848] = {
					["source"] = "Милистелла",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256735] = {
					["source"] = "Рийск-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294324] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Переработчик отходов",
					["npcID"] = 144293,
				},
				[63560] = {
					["source"] = "Бархан-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Кэлви-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["source"] = "Шифанг-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171253] = {
					["source"] = "Ззлойрокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314801] = {
					["source"] = "Огюст Мулен",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157700,
				},
				[299445] = {
					["source"] = "Николаис-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Интерстейлер-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36175] = {
					["npcID"] = 20885,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Даллия Глашатай Судьбы",
					["encounterID"] = 1913,
				},
				[46029] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь крови Солнечного Клинка",
					["npcID"] = 24684,
				},
				[295354] = {
					["type"] = "BUFF",
					["source"] = "Волма-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117892] = {
					["type"] = "BUFF",
					["source"] = "Соленоплавниковый пловец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126682,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йолька",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Фамимник-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256228] = {
					["source"] = "Горная коза",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136939,
				},
				[556] = {
					["source"] = "Рязакка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[30505] = {
					["npcID"] = 16807,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный чернокнижник Пустоклят",
					["encounterID"] = 1936,
				},
				[30633] = {
					["npcID"] = 16809,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "О'мрогг Завоеватель",
					["encounterID"] = 1937,
				},
				[298431] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Непостижимая-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[204019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[46030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рыцарь крови Солнечного Клинка",
					["npcID"] = 24684,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[27626] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[51533] = {
					["encounterID"] = 1899,
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[39376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Техник резервуара Кривого Клыка",
					["npcID"] = 17940,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мелиодар-Дракономор",
					["npcID"] = 0,
				},
				[295367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[115080] = {
					["source"] = "Анты-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281036] = {
					["type"] = "BUFF",
					["source"] = "Каканяшка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[193786] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54861] = {
					["type"] = "BUFF",
					["source"] = "Силена-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294349] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Живые отходы",
					["npcID"] = 144301,
				},
				[303563] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зоатроид",
					["npcID"] = 152812,
				},
				[686] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Веристраз",
					["npcID"] = 0,
				},
				[194812] = {
					["source"] = "Слайтеракс-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309708] = {
					["source"] = "Оживший страж",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153096,
				},
				[184575] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[11416] = {
					["source"] = "Гноманя-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290259] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[263642] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278999] = {
					["source"] = "Ринтуцуки",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264667] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Волк",
					["npcID"] = 91250,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пилика",
					["npcID"] = 0,
				},
				[31850] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1940,
				},
				[47568] = {
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1916,
				},
				[243955] = {
					["source"] = "Аё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275931] = {
					["type"] = "DEBUFF",
					["source"] = "Понгар-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Саргассо-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["source"] = "Карикун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295384] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[772] = {
					["source"] = "Ålka-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[286171] = {
					["source"] = "Лорилер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283100] = {
					["source"] = "Бояна-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[46033] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рыцарь крови Солнечного Клинка",
					["npcID"] = 24684,
				},
				[268769] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бобэс",
					["npcID"] = 0,
				},
				[204032] = {
					["source"] = "Хранитель портала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102337,
				},
				[303579] = {
					["source"] = "Чорныгвард-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312793] = {
					["source"] = "Аирунч-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Светлыйжнец",
					["npcID"] = 0,
				},
				[298461] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[818] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саландра",
					["npcID"] = 0,
				},
				[36052] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Послушник из клана Призрачной Луны",
					["npcID"] = 16594,
				},
				[193796] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312795] = {
					["source"] = "Паленкова-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304606] = {
					["source"] = "Фунчоз-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Миссисли-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буян из клана Изувеченной Длани",
					["npcID"] = 16593,
				},
				[274919] = {
					["source"] = "Дяня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31403] = {
					["source"] = "Эфириал - осквернитель гробниц",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18311,
				},
				[31467] = {
					["npcID"] = 17879,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель времени Дежа",
					["encounterID"] = 1920,
				},
				[256759] = {
					["source"] = "Тотемвпуть",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Варрак",
					["npcID"] = 0,
				},
				[304612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Варрак",
					["npcID"] = 0,
				},
				[302565] = {
					["type"] = "DEBUFF",
					["source"] = "Крематор-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178444] = {
					["source"] = "Джев",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Вейронити-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Префикс",
					["npcID"] = 0,
				},
				[46035] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Магистр Солнечного Клинка",
					["npcID"] = 24685,
				},
				[46163] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1894,
				},
				[303593] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 153738,
				},
				[89751] = {
					["source"] = "Араквазин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[7421] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кик'сжул Голос Глубин",
					["npcID"] = 153312,
				},
				[36054] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дикарь из клана Изувеченной Длани",
					["npcID"] = 16523,
				},
				[36694] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Энтропический глаз",
					["npcID"] = 20868,
				},
				[294384] = {
					["source"] = "Гормоош-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Веселыепятки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Черный ягуар",
					["npcID"] = 18982,
				},
				[279029] = {
					["source"] = "Шэлти-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Волхова",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Шамогон-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46036] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Магистр Солнечного Клинка",
					["npcID"] = 24685,
				},
				[50259] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[23214] = {
					["source"] = "Парохх",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Араквазин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[262652] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312816] = {
					["type"] = "DEBUFF",
					["source"] = "Рассерженный почтоменталь",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160699,
				},
				[279033] = {
					["source"] = "Веселыепятки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ширакесс-поработитель",
					["npcID"] = 152724,
				},
				[213771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203534] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[1022] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[73630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Инраэль-Дракономор",
					["npcID"] = 0,
				},
				[165144] = {
					["source"] = "Волнолом Сян",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147250,
				},
				[1044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[299513] = {
					["source"] = "Палайф-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1064] = {
					["encounterID"] = 1897,
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299514] = {
					["source"] = "Девочкамоя-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белокрылый",
					["npcID"] = 0,
				},
				[165658] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131890,
				},
				[303611] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ширакесс-разоритель",
					["npcID"] = 152827,
				},
				[292350] = {
					["source"] = "Убийца из ШРУ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145183,
				},
				[157981] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[236298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[303614] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ширакесс-разоритель",
					["npcID"] = 152827,
				},
				[1160] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["encounterID"] = 2257,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[236299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[289283] = {
					["source"] = "Моргаур-Подземье",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289284] = {
					["source"] = "Донмир-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[282119] = {
					["source"] = "Дяня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283143] = {
					["type"] = "BUFF",
					["source"] = "Магнитохват",
					["npcID"] = 145560,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[185113] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 91472,
				},
				[32173] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародейка резервуара Кривого Клыка",
					["npcID"] = 17961,
				},
				[261895] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133154,
				},
				[292359] = {
					["source"] = "Занавеска-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Каленлар",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Доктордруу-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Энтропический глаз",
					["npcID"] = 20868,
				},
				[179996] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Withered Leyfeeder",
					["npcID"] = 90377,
				},
				[299527] = {
					["source"] = "Нефритити",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Сантамуертэ-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Рейнари-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120471] = {
					["source"] = "Шелкоперый ястреб",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156931,
				},
				[184092] = {
					["source"] = "Борецсвета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58452] = {
					["source"] = "Брэнмур-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Джимрен-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Проснись-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309768] = {
					["source"] = "Тенеступ из клана Докани",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153107,
				},
				[34906] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Натуралист Кус",
					["npcID"] = 17893,
				},
				[203033] = {
					["type"] = "BUFF",
					["source"] = "Кровавая принцесса Тал'ена",
					["encounterID"] = 1855,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102431,
				},
				[207640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[44120] = {
					["type"] = "DEBUFF",
					["source"] = "Эрамас Сияющее Пламя",
					["npcID"] = 24554,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[44504] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Презренный-полутруп",
					["npcID"] = 24690,
				},
				[194844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[267798] = {
					["encounterID"] = 1900,
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205082] = {
					["source"] = "Могучий повелитель гнева",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102397,
				},
				[267799] = {
					["type"] = "DEBUFF",
					["source"] = "Камицу-Ясеневыйлес",
					["encounterID"] = 1900,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197916] = {
					["type"] = "BUFF",
					["source"] = "Сквиртохил",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298512] = {
					["source"] = "Вещииолег-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299538] = {
					["source"] = "Лертана-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1464] = {
					["source"] = "Паллас-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Присягнувший Свету анахорет",
					["npcID"] = 109751,
				},
				[23600] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[299540] = {
					["source"] = "Нефритити",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299541] = {
					["source"] = "Рейнари-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304660] = {
					["source"] = "Левиофанта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Холелеле-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тихий презренный",
					["npcID"] = 24688,
				},
				[36699] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Энтропический глаз",
					["npcID"] = 20868,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шерайа-Гордунни",
					["npcID"] = 0,
				},
				[61781] = {
					["source"] = "Озарко",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 58965,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[102560] = {
					["source"] = "Слвф",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[268836] = {
					["type"] = "BUFF",
					["source"] = "Ашблейк-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холимоули-Дракономор",
					["npcID"] = 0,
				},
				[205089] = {
					["source"] = "Пылающий инфернал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102398,
				},
				[193316] = {
					["source"] = "Найтвингр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[299550] = {
					["source"] = "Каладар-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30639] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бешеный бойцовый пес",
					["npcID"] = 17669,
				},
				[290337] = {
					["source"] = "Гелинион-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272934] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[1680] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чернокнижник Солнечного Клинка",
					["npcID"] = 24686,
				},
				[23601] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский лучник",
					["npcID"] = 20901,
				},
				[131894] = {
					["source"] = "Кицун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289318] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lîfe-Thunderhorn",
					["npcID"] = 0,
				},
				[263725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Сапожъник-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Рийск-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89766] = {
					["source"] = "Страж Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[53209] = {
					["source"] = "Кицун-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[108194] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[46043] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чернокнижник Солнечного Клинка",
					["npcID"] = 24686,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Истериика-Дракономор",
					["npcID"] = 0,
				},
				[39005] = {
					["npcID"] = 20870,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зерекет Бездонный",
					["encounterID"] = 1916,
				},
				[296492] = {
					["source"] = "Капля Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152669,
				},
				[309801] = {
					["source"] = "Оживший страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153096,
				},
				[287279] = {
					["source"] = "Джинсей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17843] = {
					["npcID"] = 24560,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
				},
				[287280] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271924] = {
					["type"] = "DEBUFF",
					["source"] = "Папафрэнку-ЧерныйШрам",
					["encounterID"] = 1899,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Арксан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 17835,
				},
				[264760] = {
					["source"] = "Констеллэйшн-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Элантугор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37470] = {
					["source"] = "Эфириал-чароплет",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18312,
				},
				[264761] = {
					["source"] = "Эпсилона-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бес Солнечного Клинка",
					["npcID"] = 24815,
				},
				[205099] = {
					["source"] = "Эредарский сумеречный целитель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102400,
				},
				[7870] = {
					["source"] = "Линни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[208683] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39006] = {
					["npcID"] = 20886,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Провидец Гнева Соккорат",
					["encounterID"] = 1915,
				},
				[264764] = {
					["source"] = "Паладинус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206636] = {
					["source"] = "Рубака из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145163,
				},
				[276026] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роксорз-Дракономор",
					["npcID"] = 0,
				},
				[290360] = {
					["source"] = "Горрина-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260384] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэтрия",
					["npcID"] = 0,
				},
				[36831] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский призыватель огня",
					["npcID"] = 20902,
				},
				[205102] = {
					["source"] = "Эредарский сумеречный целитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102400,
				},
				[53595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264769] = {
					["source"] = "Дантерсмонха",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[197937] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[39007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Провидец Гнева Соккорат",
					["npcID"] = 20886,
				},
				[271938] = {
					["source"] = "Гнездо",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138172,
				},
				[302651] = {
					["source"] = "Жрецыыще",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316985] = {
					["source"] = "Лайтенерд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264774] = {
					["source"] = "Дангалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Истериика-Дракономор",
					["npcID"] = 0,
				},
				[193333] = {
					["source"] = "Мэрэстри-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33377] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[46046] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Врач Солнечного Клинка",
					["npcID"] = 24687,
				},
				[46302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[313918] = {
					["source"] = "Шиннфейн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["source"] = "Элантугор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[289349] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13819] = {
					["source"] = "Проступок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31985] = {
					["npcID"] = 17941,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Менну Предатель",
					["encounterID"] = 1939,
				},
				[256451] = {
					["type"] = "BUFF",
					["source"] = "Ромути",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Лакиан-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156084] = {
					["type"] = "BUFF",
					["source"] = "Кофешлёп-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32369] = {
					["encounterID"] = 1899,
					["source"] = "Эфириал-ученик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18430,
				},
				[268877] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187395] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195503] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270302] = {
					["source"] = "Дозорный из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130073,
				},
				[268878] = {
					["source"] = "Бронтир-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204598] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270453] = {
					["source"] = "Геомант из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130075,
				},
				[279471] = {
					["source"] = "Бендерас-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270295] = {
					["source"] = "Фуражир из племени Шипошкурых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134141,
				},
				[270419] = {
					["source"] = "Рагна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134884,
				},
				[274838] = {
					["type"] = "DEBUFF",
					["source"] = "Бендерас-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[262483] = {
					["type"] = "BUFF",
					["source"] = "Дозорный из племени Шипошкурых",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130073,
				},
				[46047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Врач Солнечного Клинка",
					["npcID"] = 24687,
				},
				[285646] = {
					["type"] = "BUFF",
					["source"] = "Бендерас-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[274837] = {
					["type"] = "BUFF",
					["source"] = "Бендерас-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299510] = {
					["source"] = "Ноксарана-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273218] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139086,
				},
				[289577] = {
					["type"] = "BUFF",
					["source"] = "Браткондрат",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263165] = {
					["type"] = "BUFF",
					["source"] = "Браткондрат",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272679] = {
					["source"] = "Крематор-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[39009] = {
					["npcID"] = 20885,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Даллия Глашатай Судьбы",
					["encounterID"] = 1913,
				},
				[271544] = {
					["type"] = "DEBUFF",
					["source"] = "Вакулла",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271543] = {
					["type"] = "BUFF",
					["source"] = "Вакулла",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[282482] = {
					["type"] = "BUFF",
					["source"] = "Пристик-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[5487] = {
					["source"] = "Йотхе",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287809] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205648] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[269440] = {
					["source"] = "Поджигательница из Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138092,
				},
				[80256] = {
					["source"] = "Властан-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44640] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сестра Мучений",
					["npcID"] = 24697,
				},
				[11196] = {
					["type"] = "DEBUFF",
					["source"] = "Екстезич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124036] = {
					["type"] = "BUFF",
					["source"] = "Нежерога-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[259462] = {
					["source"] = "Коралловый щелкун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137763,
				},
				[269304] = {
					["type"] = "BUFF",
					["source"] = "Нефтедобытчик Торговой компании",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137065,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[265541] = {
					["source"] = "Диномант Закуру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145278,
				},
				[265527] = {
					["type"] = "BUFF",
					["source"] = "Диномант Закуру",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145278,
				},
				[280149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Монолитовец-Дракономор",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Ариданна-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[265532] = {
					["type"] = "BUFF",
					["source"] = "Диномант Закуру",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145278,
				},
				[44533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тихий презренный",
					["npcID"] = 24688,
				},
				[273988] = {
					["type"] = "BUFF",
					["source"] = "Буллка-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255852] = {
					["source"] = "Дикий когтерез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136416,
				},
				[275032] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Шайконг-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[298929] = {
					["source"] = "Эверлайнс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[219167] = {
					["source"] = "Солезубый морской ловец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139161,
				},
				[304722] = {
					["source"] = "Алисинка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167971] = {
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-7000\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153897,
				},
				[306770] = {
					["source"] = "Порабощенный оружейник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156641,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Анунаъх",
					["npcID"] = 0,
				},
				[304723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глубинный кольчатый удав",
					["npcID"] = 152551,
				},
				[154953] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22355] = {
					["source"] = "\"Блескотрон-6000\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101527,
				},
				[105174] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32370] = {
					["encounterID"] = 1899,
					["source"] = "Эфириал-ученик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18430,
				},
				[281178] = {
					["source"] = "Тхааида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192085] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223670] = {
					["type"] = "BUFF",
					["source"] = "Даанса-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312915] = {
					["source"] = "Джесуслкии-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223722] = {
					["type"] = "BUFF",
					["source"] = "Даанса-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118699] = {
					["type"] = "DEBUFF",
					["source"] = "Хрылак-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49248] = {
					["source"] = "Лоуси",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49376] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[15497] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[298584] = {
					["type"] = "BUFF",
					["source"] = "Порабощенный пехотинец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153760,
				},
				[224772] = {
					["source"] = "Дрешама-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33508] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Темный маг из клана Призрачной Луны",
					["npcID"] = 17694,
				},
				[49966] = {
					["source"] = "Разлом",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 76946,
				},
				[12540] = {
					["encounterID"] = 1895,
					["source"] = "Кагани Ночной Удар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24557,
				},
				[29332] = {
					["source"] = "Дерикус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[268897] = {
					["source"] = "Тряпко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193475] = {
					["type"] = "BUFF",
					["source"] = "Тухлоброс-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245760] = {
					["source"] = "Зизифус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296539] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[193345] = {
					["type"] = "BUFF",
					["source"] = "Кототрон-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51259] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 110708,
				},
				[181062] = {
					["source"] = "Таллария",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фарет",
					["npcID"] = 0,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[220124] = {
					["type"] = "BUFF",
					["source"] = "Сонарес-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225574] = {
					["type"] = "DEBUFF",
					["source"] = "Кардаж",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256792] = {
					["source"] = "Фрамганг-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пчпэ",
					["npcID"] = 0,
				},
				[286305] = {
					["type"] = "DEBUFF",
					["source"] = "Варок Саурфанг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146011,
				},
				[312922] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[8220] = {
					["type"] = "BUFF",
					["source"] = "Демалой-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30451] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[5176] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[183111] = {
					["source"] = "Страж Кирин-Тора",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104091,
				},
				[124218] = {
					["type"] = "BUFF",
					["source"] = "Дикийулитка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[170950] = {
					["type"] = "BUFF",
					["source"] = "Зазлатоземье-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[235794] = {
					["source"] = "Жестище",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208693] = {
					["type"] = "BUFF",
					["source"] = "Бяка-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["source"] = "Рейнд-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35944] = {
					["source"] = "Эфириал-жрец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18317,
				},
				[176458] = {
					["source"] = "Соратник-кузнец - Альянс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88403,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Риат",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Клирикк-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299297] = {
					["source"] = "Лауретто-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296547] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский призыватель огня",
					["npcID"] = 20902,
				},
				[126892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Майстар-Азурегос",
					["npcID"] = 0,
				},
				[57291] = {
					["type"] = "BUFF",
					["source"] = "Сабмедикус-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105683] = {
					["type"] = "BUFF",
					["source"] = "Сабмедикус-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255110] = {
					["source"] = "Горрина-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324852] = {
					["source"] = "Паладоская-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309819] = {
					["encounterID"] = 2338,
					["source"] = "Аллерия Ветрокрылая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152718,
				},
				[198069] = {
					["source"] = "Кайфовая-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308278] = {
					["encounterID"] = 2338,
					["source"] = "Аллерия Ветрокрылая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152718,
				},
				[312360] = {
					["encounterID"] = 2338,
					["source"] = "Аллерия Ветрокрылая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152718,
				},
				[211390] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308575] = {
					["type"] = "BUFF",
					["source"] = "Падший странник разломов",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158146,
				},
				[132951] = {
					["type"] = "DEBUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17695,
				},
				[308481] = {
					["source"] = "Падший странник разломов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158146,
				},
				[207685] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккирис Штормоход",
					["npcID"] = 20908,
				},
				[278124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[287338] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95034,
				},
				[273006] = {
					["source"] = "Роммару-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Холимоули-Дракономор",
					["npcID"] = 0,
				},
				[275054] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37605] = {
					["type"] = "BUFF",
					["source"] = "Эонус",
					["npcID"] = 17881,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[273455] = {
					["source"] = "Дедсаб",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298601] = {
					["source"] = "Злюча-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287340] = {
					["type"] = "BUFF",
					["source"] = "Одеялка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298770] = {
					["type"] = "DEBUFF",
					["source"] = "Надсмотрщик Ул'рок",
					["encounterID"] = 2375,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153541,
				},
				[298701] = {
					["type"] = "DEBUFF",
					["source"] = "Надсмотрщик Ул'рок",
					["encounterID"] = 2375,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153541,
				},
				[93622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[298691] = {
					["encounterID"] = 2375,
					["source"] = "Надсмотрщик Ул'рок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153541,
				},
				[298603] = {
					["source"] = "Френззи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316007] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298704] = {
					["type"] = "BUFF",
					["source"] = "Надсмотрщик Ул'рок",
					["encounterID"] = 2375,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153541,
				},
				[259387] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298604] = {
					["source"] = "Танюшко-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255065] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ярлинг",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Озмо",
					["npcID"] = 0,
				},
				[306795] = {
					["source"] = "Медодав",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 154154,
				},
				[35942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бешеный бойцовый пес",
					["npcID"] = 17669,
				},
				[292463] = {
					["source"] = "Звездулятор-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259388] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298606] = {
					["source"] = "Железнобокий-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[308380] = {
					["source"] = "Инквизитор Темнослов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158136,
				},
				[308366] = {
					["source"] = "Инквизитор Темнослов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158136,
				},
				[267198] = {
					["type"] = "BUFF",
					["source"] = "Екстезич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296537] = {
					["type"] = "BUFF",
					["source"] = "Сектант-мучитель",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158690,
				},
				[284275] = {
					["source"] = "Алистрен-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308408] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[182096] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chaos Spawn",
					["npcID"] = 92447,
				},
				[307822] = {
					["type"] = "DEBUFF",
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
				[296733] = {
					["source"] = "Безликий сокрушитель воли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152987,
				},
				[298609] = {
					["source"] = "Макгрим-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкабутуз-Дракономор",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Шифанг-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3928] = {
					["source"] = "Волхова",
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
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[308406] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[308432] = {
					["source"] = "Страж кузни Хуррул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158158,
				},
				[289298] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279160] = {
					["source"] = "Фитоняшко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вэлвир",
					["npcID"] = 0,
				},
				[33690] = {
					["source"] = "Частити-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202138] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296718] = {
					["source"] = "Безликий сокрушитель воли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 152987,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Умризараза",
					["npcID"] = 0,
				},
				[36872] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шквальник резервуара Кривого Клыка",
					["npcID"] = 21127,
				},
				[35943] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Послушник из клана Призрачной Луны",
					["npcID"] = 16594,
				},
				[314203] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318065] = {
					["source"] = "Инсалазарр-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Арфинка-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["encounterID"] = 1895,
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280187] = {
					["source"] = "Файнестхорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Бьёрнольф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Душегуб Эфириума",
					["npcID"] = 20896,
				},
				[49252] = {
					["source"] = "Сидорова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308308] = {
					["source"] = "Падший пронзатель сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158092,
				},
				[270505] = {
					["source"] = "Падший пронзатель сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158092,
				},
				[286331] = {
					["source"] = "Эсидрейн-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316767] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316768] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287769] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291295] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46181] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[299084] = {
					["source"] = "Антивкор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255299] = {
					["type"] = "DEBUFF",
					["source"] = "Назманийская воительница",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133122,
				},
				[298618] = {
					["source"] = "Сельма-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188034] = {
					["type"] = "BUFF",
					["source"] = "Булгатос-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298282] = {
					["source"] = "Антивкор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38759] = {
					["type"] = "BUFF",
					["source"] = "Пандемоний",
					["encounterID"] = 1900,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18341,
				},
				[85948] = {
					["source"] = "Бьёрнольф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34920] = {
					["source"] = "Эфириал-падальщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18309,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[281792] = {
					["type"] = "BUFF",
					["source"] = "Сплач",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298620] = {
					["source"] = "Хилинс-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[248646] = {
					["source"] = "Джейнлайолен-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309882] = {
					["source"] = "Сектант - погонщик рабов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157158,
				},
				[298621] = {
					["source"] = "Ягунчик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287360] = {
					["source"] = "Кайфовая-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6262] = {
					["source"] = "Екстезич",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Бьёрнольф-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304369] = {
					["type"] = "BUFF",
					["source"] = "Делориа-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["type"] = "BUFF",
					["source"] = "Ярантир-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298011] = {
					["source"] = "Тряпко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298623] = {
					["source"] = "Палайф-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13341] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[256778] = {
					["source"] = "Лиловая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Златоустик-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278149] = {
					["source"] = "Пойменный мустанг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142455,
				},
				[274376] = {
					["type"] = "BUFF",
					["source"] = "Джекилл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[253112] = {
					["source"] = "Синегласка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280413] = {
					["type"] = "BUFF",
					["source"] = "Демонсф-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46182] = {
					["npcID"] = 24554,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрамас Сияющее Пламя",
					["encounterID"] = 1895,
				},
				[209746] = {
					["source"] = "Эльсиролл-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288032] = {
					["source"] = "Никалаша",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Кунфуциий-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115181] = {
					["source"] = "Кунфуциий-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121253] = {
					["type"] = "DEBUFF",
					["source"] = "Кунфуциий-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38760] = {
					["encounterID"] = 1900,
					["source"] = "Пандемоний",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18341,
				},
				[286342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[307326] = {
					["type"] = "BUFF",
					["source"] = "Уничтожитель из клана Докани",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157287,
				},
				[23445] = {
					["type"] = "DEBUFF",
					["source"] = "Иррисска-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Сварожич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Сварожич",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286547] = {
					["source"] = "Санатка-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32752] = {
					["type"] = "BUFF",
					["source"] = "Хрылак-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305795] = {
					["source"] = "Хируна-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Кариюдо-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35945] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меткий стрелок из клана Изувеченной Длани",
					["npcID"] = 16704,
				},
				[298659] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гамаюн-Азурегос",
					["npcID"] = 0,
				},
				[305796] = {
					["source"] = "Хируна-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195125] = {
					["source"] = "Волма-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211284] = {
					["type"] = "BUFF",
					["source"] = "Эския",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126389] = {
					["type"] = "BUFF",
					["source"] = "Бормгар-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Заклинатель волн Эфириума",
					["npcID"] = 20897,
				},
				[77761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[264735] = {
					["type"] = "BUFF",
					["source"] = "Шпага",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69947,
				},
				[280204] = {
					["source"] = "Диадора-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308874] = {
					["type"] = "BUFF",
					["source"] = "Хэйси Повелитель Камня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157171,
				},
				[308886] = {
					["source"] = "Хэйси Повелитель Камня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157171,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[271105] = {
					["type"] = "BUFF",
					["source"] = "Понгар-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200200] = {
					["type"] = "DEBUFF",
					["source"] = "Саргассо-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46183] = {
					["npcID"] = 24554,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эрамас Сияющее Пламя",
					["encounterID"] = 1895,
				},
				[276111] = {
					["source"] = "Радорм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120517] = {
					["source"] = "Саргассо-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[273323] = {
					["type"] = "BUFF",
					["source"] = "Тормарин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["source"] = "Карательный-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38761] = {
					["encounterID"] = 1901,
					["source"] = "Таварок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18343,
				},
				[77762] = {
					["source"] = "Веселыепятки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39017] = {
					["npcID"] = 20912,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Предвестник Скайрисс",
					["encounterID"] = 1914,
				},
				[273232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[115385] = {
					["source"] = "Донный охотник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133285,
				},
				[206760] = {
					["source"] = "Ареда-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121118] = {
					["source"] = "Каканяшка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267924] = {
					["source"] = "Леусварский-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204121] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103146,
				},
				[48103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хентур",
					["npcID"] = 0,
				},
				[299661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тибблдорф-Азурегос",
					["npcID"] = 0,
				},
				[317065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэтрия",
					["npcID"] = 0,
				},
				[305804] = {
					["source"] = "Лиртейн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44520] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 24686,
				},
				[279187] = {
					["type"] = "BUFF",
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299770] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кельпин-разведчица",
					["npcID"] = 151300,
				},
				[311155] = {
					["source"] = "Рев Бури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157279,
				},
				[163201] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299663] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308877] = {
					["source"] = "Хэйси Повелитель Камня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157171,
				},
				[225603] = {
					["type"] = "BUFF",
					["source"] = "Ветерхант-Дракономор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80240] = {
					["source"] = "Мариарти-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сино",
					["npcID"] = 0,
				},
				[294133] = {
					["type"] = "BUFF",
					["source"] = "Уратох",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[301367] = {
					["type"] = "BUFF",
					["source"] = "Яркатучка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279767] = {
					["type"] = "BUFF",
					["source"] = "Тала Скальный Ветер",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140782,
				},
				[46184] = {
					["npcID"] = 24556,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
				},
				[96039] = {
					["type"] = "BUFF",
					["source"] = "Неболов-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[272278] = {
					["source"] = "Тотемвпуть",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36514] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародейский взрыв",
					["npcID"] = 21290,
				},
				[267201] = {
					["source"] = "Сайтилия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[77764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Омализумаб",
					["npcID"] = 0,
				},
				[25602] = {
					["source"] = "Маносос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19306,
				},
				[300691] = {
					["source"] = "Мадемуазель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[19705] = {
					["source"] = "Мариякюри",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252356] = {
					["source"] = "Дидиро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251808] = {
					["source"] = "Дидиро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[256757] = {
					["source"] = "Тотемвпуть",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[300693] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259408] = {
					["source"] = "Скат-илоед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126677,
				},
				[206685] = {
					["source"] = "Плюющаяся кобра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 104493,
				},
				[215387] = {
					["source"] = "Рироина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йотхе",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Паленкова-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Дебальтон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287045] = {
					["source"] = "Прототип бомбардировщика Поззика",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147945,
				},
				[263840] = {
					["type"] = "DEBUFF",
					["source"] = "Актар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 82308,
				},
				[33132] = {
					["npcID"] = 18179,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Оскверненный тотем вспышки",
					["encounterID"] = 1939,
				},
				[209785] = {
					["source"] = "Раайнар-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208086] = {
					["type"] = "DEBUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211805] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аверсэн-Ревущийфьорд",
					["npcID"] = 0,
				},
				[52437] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Турборука-Дракономор",
					["npcID"] = 0,
				},
				[46185] = {
					["type"] = "BUFF",
					["source"] = "Зелфан",
					["npcID"] = 24556,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[227847] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276840] = {
					["type"] = "BUFF",
					["source"] = "Тавая-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277156] = {
					["type"] = "BUFF",
					["source"] = "Идол глубин",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141782,
				},
				[101568] = {
					["source"] = "Улетная",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44202] = {
					["encounterID"] = 1894,
					["source"] = "Феникс",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24674,
				},
				[216413] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44290] = {
					["encounterID"] = 1895,
					["source"] = "Кагани Ночной Удар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24557,
				},
				[39019] = {
					["npcID"] = 20912,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Предвестник Скайрисс",
					["encounterID"] = 1914,
				},
				[49143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[46227] = {
					["type"] = "BUFF",
					["source"] = "Кагани Ночной Удар",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24557,
				},
				[46026] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[46189] = {
					["encounterID"] = 1895,
					["source"] = "Кагани Ночной Удар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24557,
				},
				[44289] = {
					["type"] = "DEBUFF",
					["source"] = "Кагани Ночной Удар",
					["encounterID"] = 1895,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 24557,
				},
				[285344] = {
					["npcID"] = 144244,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Платиновый лупцеватор\"",
					["encounterID"] = 2257,
				},
				[46180] = {
					["encounterID"] = 1895,
					["source"] = "Апоко",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24553,
				},
				[35948] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Язычник из клана Изувеченной Длани",
					["npcID"] = 17420,
				},
				[59547] = {
					["type"] = "BUFF",
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307220] = {
					["source"] = "Шичуан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Пенабуки-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117405] = {
					["type"] = "DEBUFF",
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[220510] = {
					["source"] = "Неподвластна-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274085] = {
					["source"] = "Ярость бури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148761,
				},
				[279204] = {
					["source"] = "Изерус-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109248] = {
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293854] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мехагонский боевой механик",
					["npcID"] = 144294,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Тотем земляной стены",
					["encounterID"] = 1897,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[307870] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Тотем конденсации",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[163073] = {
					["type"] = "BUFF",
					["source"] = "Татя-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274087] = {
					["source"] = "Ярость бури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148761,
				},
				[5394] = {
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайфли",
					["npcID"] = 0,
				},
				[247129] = {
					["source"] = "Берескан-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209788] = {
					["source"] = "Татя-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207203] = {
					["source"] = "Пакмэн-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77130] = {
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27576] = {
					["source"] = "Малрога",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38892] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сердитая искусительница",
					["npcID"] = 20883,
				},
				[39020] = {
					["npcID"] = 20912,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Предвестник Скайрисс",
					["encounterID"] = 1914,
				},
				[73920] = {
					["source"] = "Идхар-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190909] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194407] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32055] = {
					["npcID"] = 17942,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зыбун",
					["encounterID"] = 1940,
				},
				[273264] = {
					["type"] = "BUFF",
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257719] = {
					["source"] = "Шэлти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[35949] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Язычник из клана Изувеченной Длани",
					["npcID"] = 17420,
				},
				[263854] = {
					["source"] = "Кадавр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130727,
				},
				[264878] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Джейнлайолен-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158940] = {
					["type"] = "BUFF",
					["source"] = "Ядовитый угорь",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127600,
				},
				[290372] = {
					["type"] = "BUFF",
					["source"] = "Элсис",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89798] = {
					["source"] = "Лорд Виктор Нефарий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49799,
				},
				[272435] = {
					["encounterID"] = 1938,
					["source"] = "Гончая Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136408,
				},
				[272678] = {
					["encounterID"] = 1938,
					["source"] = "Веноми-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61671] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[30600] = {
					["encounterID"] = 1937,
					["source"] = "О'мрогг Завоеватель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16809,
				},
				[308355] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[285460] = {
					["type"] = "DEBUFF",
					["source"] = "Главный машинист Искроточец",
					["npcID"] = 144248,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Веноми-Разувий",
					["encounterID"] = 1936,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "Локе'нахак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[267218] = {
					["type"] = "BUFF",
					["source"] = "Эготика-Борейскаятундра",
					["encounterID"] = 1936,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46187] = {
					["npcID"] = 24556,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
				},
				[265187] = {
					["encounterID"] = 1936,
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30494] = {
					["type"] = "DEBUFF",
					["source"] = "Ползучий слизнюченыш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17357,
				},
				[37511] = {
					["source"] = "Караульный из клана Изувеченной Длани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 16507,
				},
				[58984] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[278145] = {
					["type"] = "DEBUFF",
					["source"] = "Кэлви-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аревэль-Азурегос",
					["npcID"] = 0,
				},
				[39021] = {
					["npcID"] = 21466,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Предвестник Скайрисс",
					["encounterID"] = 1914,
				},
				[35054] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 17839,
				},
				[59752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[51690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[39533] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69280] = {
					["source"] = "Bilgewater Mortar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 36768,
				},
				[134522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лайфли",
					["npcID"] = 0,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[35950] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Псарь из клана Изувеченной Длани",
					["npcID"] = 17670,
				},
				[44268] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[202090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холелеле-ЧерныйШрам",
					["npcID"] = 0,
				},
				[15230] = {
					["npcID"] = 17892,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хрономант из рода Бесконечности",
					["encounterID"] = 1920,
				},
				[279754] = {
					["source"] = "Литвинка-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30584] = {
					["npcID"] = 16809,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "О'мрогг Завоеватель",
					["encounterID"] = 1937,
				},
				[285362] = {
					["source"] = "Вульфкнайт-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304037] = {
					["source"] = "Сибириана-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["npcID"] = 17695,
				},
				[219874] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wild Dreamrunner",
					["npcID"] = 109819,
				},
				[223306] = {
					["source"] = "Шейнафа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["source"] = "Джейнлайолен-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256350] = {
					["source"] = "Завролиск-камнекус",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141641,
				},
				[179057] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["encounterID"] = 2257,
				},
				[290754] = {
					["source"] = "Ививайт-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[250208] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Солекаменная черепаха",
					["npcID"] = 130160,
				},
				[287811] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Coachified-Outland",
					["npcID"] = 0,
				},
				[152262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таллери-Азурегос",
					["npcID"] = 0,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[172714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 91472,
				},
				[216425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Херкуль-Азурегос",
					["npcID"] = 0,
				},
				[102342] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[274346] = {
					["source"] = "Валлх-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204331] = {
					["source"] = "Лираса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260366] = {
					["source"] = "Диномант Закуру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145278,
				},
				[265528] = {
					["source"] = "Диномант Закуру",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145278,
				},
				[276154] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[265522] = {
					["source"] = "Диномант Закуру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145278,
				},
				[48108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Boulder Caster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137078,
				},
				[288440] = {
					["source"] = "Буревестница Морка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148759,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[286393] = {
					["source"] = "Изерус-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305483] = {
					["source"] = "Лираса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[163505] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242926] = {
					["source"] = "Темная охотница Мутумба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144987,
				},
				[115006] = {
					["source"] = "Укин - ромовый сторож",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140209,
				},
				[209261] = {
					["source"] = "Тигруан",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271272] = {
					["source"] = "Шериф дома Штормсонгов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130008,
				},
				[277181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[306870] = {
					["source"] = "Налетчик из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153094,
				},
				[33865] = {
					["source"] = "Эфириал-падальщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18309,
				},
				[31326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 17835,
				},
				[302775] = {
					["source"] = "Пафунтик-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223829] = {
					["source"] = "Домекана-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201072] = {
					["source"] = "Борецсвета",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294909] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298466] = {
					["source"] = "Пятьлимонов-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256355] = {
					["source"] = "Завролиск-камнекус",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141641,
				},
				[313015] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нееленочка",
					["npcID"] = 0,
				},
				[275540] = {
					["source"] = "Скиазар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[306873] = {
					["source"] = "Налетчик из клана Цзань-Тень",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 153094,
				},
				[313899] = {
					["source"] = "Тзах'тал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157103,
				},
				[106951] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[187878] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55233] = {
					["source"] = "Колдран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267972] = {
					["source"] = "Демонический тиран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135002,
				},
				[38065] = {
					["source"] = "Ужасень Нексуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19307,
				},
				[306875] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260249] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259277] = {
					["source"] = "Тарантис",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50752,
				},
				[295838] = {
					["source"] = "Дэтппул-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Зулбой",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271045] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158014] = {
					["source"] = "Пойменный мустанг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142455,
				},
				[277829] = {
					["source"] = "Лейтенант Уильямс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131037,
				},
				[247456] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196980] = {
					["source"] = "Литвинка-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247454] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273570] = {
					["source"] = "Пеплохвостый бандинот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142454,
				},
				[185565] = {
					["source"] = "Гормоош-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203123] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[22907] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тюремщик Аркатраца",
					["npcID"] = 20859,
				},
				[33649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[118969] = {
					["source"] = "Лейтенант Уильямс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131037,
				},
				[287827] = {
					["source"] = "Куклик-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308875] = {
					["source"] = "Хэйси Повелитель Камня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157171,
				},
				[285381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[38384] = {
					["npcID"] = 24561,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яззай",
					["encounterID"] = 1895,
				},
				[271049] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268194] = {
					["source"] = "Мейлур-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27578] = {
					["type"] = "BUFF",
					["source"] = "Полководец Саларис",
					["npcID"] = 24559,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[38896] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заклинатель волн Эфириума",
					["npcID"] = 20897,
				},
				[281240] = {
					["source"] = "Лийан-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Гормоош-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[238265] = {
					["source"] = "Джеймстикир-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192077] = {
					["source"] = "Алисинка-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[37685] = {
					["source"] = "Ловчий смерти - убийца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148513,
				},
				[288455] = {
					["source"] = "Паллас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Шэлти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Мичуру-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35953] = {
					["npcID"] = 16807,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный чернокнижник Пустоклят",
					["encounterID"] = 1936,
				},
				[258920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Матлакс-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91021] = {
					["source"] = "Ареда-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273424] = {
					["source"] = "Ареда-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36593] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Труп тюремщика",
					["npcID"] = 21304,
				},
				[308179] = {
					["source"] = "Поработитель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157345,
				},
				[83242] = {
					["source"] = "Перчила-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257297] = {
					["source"] = "Пробудительница лоз из племени Шипошкурых",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132226,
				},
				[12294] = {
					["source"] = "Паллас-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аланнари",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Алисинка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["encounterID"] = 2257,
				},
				[5217] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285388] = {
					["type"] = "BUFF",
					["source"] = "\"Гномогедд-0Н\"",
					["npcID"] = 145185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[282894] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198111] = {
					["source"] = "Сиггейр-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Перчила-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Неизвестно",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[475] = {
					["source"] = "Диджитал-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291532] = {
					["source"] = "Волнолом Сян",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147250,
				},
				[273769] = {
					["source"] = "Викарий 7-го легиона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145178,
				},
				[155625] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заклинатель волн Эфириума",
					["npcID"] = 20897,
				},
				[34930] = {
					["source"] = "Эфириал-черный маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18331,
				},
				[31566] = {
					["source"] = "Темная охотница из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145180,
				},
				[200061] = {
					["source"] = "Моровка-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аласдейр",
					["npcID"] = 0,
				},
				[269651] = {
					["source"] = "Людася-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["source"] = "Оксурирьё",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299322] = {
					["source"] = "Ужасмэн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302796] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80009] = {
					["source"] = "Темный охотник из Армии Чести",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145028,
				},
				[265524] = {
					["source"] = "Диномант Закуру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145278,
				},
				[268856] = {
					["source"] = "Гормоош-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Nekaps-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201918] = {
					["source"] = "Оборонительная система",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 30837,
				},
				[195452] = {
					["source"] = "Ареда-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Kbrallan-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Локдорк",
					["npcID"] = 0,
				},
				[125883] = {
					["source"] = "Гайковерт-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300751] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тибблдорф-Азурегос",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[216441] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Херкуль-Азурегос",
					["npcID"] = 0,
				},
				[263897] = {
					["source"] = "Зубастый бобр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[15583] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 21137,
				},
				[298705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[46192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Врач Солнечного Клинка",
					["npcID"] = 24687,
				},
				[68054] = {
					["source"] = "Дживс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[198013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[105421] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[38844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 20880,
				},
				[261947] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[271071] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123904] = {
					["source"] = "Анты-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272090] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254240] = {
					["source"] = "Аникса-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[11328] = {
					["source"] = "Проффчик-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304851] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[28497] = {
					["source"] = "Лоуси",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30496] = {
					["npcID"] = 16807,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный чернокнижник Пустоклят",
					["encounterID"] = 1936,
				},
				[276187] = {
					["source"] = "Мадемуазель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пилика",
					["npcID"] = 0,
				},
				[298710] = {
					["source"] = "Павиф-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202473] = {
					["encounterID"] = 1851,
					["source"] = "Саел'орн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102387,
				},
				[205046] = {
					["source"] = "Лорд Малгат",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102282,
				},
				[224481] = {
					["source"] = "Ядошкурый тенеткач",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 112733,
				},
				[188290] = {
					["source"] = "Сонаку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[273844] = {
					["source"] = "Буревестница Морка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148759,
				},
				[207693] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255858] = {
					["source"] = "Дикий когтерез",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136416,
				},
				[207230] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аркерас-Гордунни",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Кастерли-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рилченса",
					["npcID"] = 0,
				},
				[12544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 35001,
				},
				[46193] = {
					["npcID"] = 24560,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
				},
				[300761] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205103] = {
					["source"] = "Эредарский сумеречный целитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102400,
				},
				[265954] = {
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[57912] = {
					["source"] = "Оборонительная система",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 30837,
				},
				[300762] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[102352] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279264] = {
					["source"] = "Темный охотник из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145028,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ёлк",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Борецсвета",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40248] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Псарь из клана Изувеченной Длани",
					["npcID"] = 17670,
				},
				[205088] = {
					["source"] = "Пылающий инфернал",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102398,
				},
				[210391] = {
					["source"] = "Паленкова-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58469] = {
					["source"] = "Ловец Скверны - разоритель",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102269,
				},
				[156132] = {
					["source"] = "Лисицанова",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[44274] = {
					["npcID"] = 24556,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
				},
				[204028] = {
					["source"] = "Хранитель портала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102337,
				},
				[257879] = {
					["source"] = "Перенастроенный уборочный голем",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130131,
				},
				[303837] = {
					["source"] = "Халозил",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224125] = {
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["encounterID"] = 1899,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нексуз",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Хлоя-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рилченса",
					["npcID"] = 0,
				},
				[267545] = {
					["source"] = "Пчелопотам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134147,
				},
				[299318] = {
					["source"] = "Стармист-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[299742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Анкоа - мастер клинка",
					["npcID"] = 154297,
				},
				[137619] = {
					["source"] = "Thebash-DunModr",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87840] = {
					["source"] = "Перфораторик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55342] = {
					["source"] = "Дяня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лортарион",
					["npcID"] = 0,
				},
				[46194] = {
					["npcID"] = 24561,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яззай",
					["encounterID"] = 1895,
				},
				[3409] = {
					["source"] = "Thebash-DunModr",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["source"] = "Дэляфэр-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[303405] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ундана Ледяной Шип",
					["npcID"] = 153304,
				},
				[224127] = {
					["type"] = "BUFF",
					["source"] = "Дух волка",
					["encounterID"] = 1899,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100820,
				},
				[178740] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[34933] = {
					["source"] = "Маносос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19306,
				},
				[115151] = {
					["source"] = "Жесткийалкаш-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267327] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324898] = {
					["source"] = "Салинген-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271083] = {
					["source"] = "Лоялист дома Штормсонгов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130006,
				},
				[203819] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79639] = {
					["source"] = "Рукопашный",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пранкерша",
					["npcID"] = 0,
				},
				[32315] = {
					["source"] = "Эфириал - осквернитель гробниц",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18311,
				},
				[157736] = {
					["source"] = "Страд-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["encounterID"] = 1899,
					["source"] = "Большой элементаль земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95072,
				},
				[299323] = {
					["source"] = "Гексаэдр-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3561] = {
					["source"] = "Блейса-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Окттавия-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[299751] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Охотник из клана Клинков Волн",
					["npcID"] = 150202,
				},
				[313060] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[268756] = {
					["source"] = "Ренфолд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165776] = {
					["source"] = "Люсиль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134296,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[17364] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79833] = {
					["source"] = "Кенарийская смотрительница",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 114297,
				},
				[205191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ветара-Азурегос",
					["npcID"] = 0,
				},
				[308967] = {
					["type"] = "BUFF",
					["source"] = "Падший надсмотрщик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158437,
				},
				[287825] = {
					["source"] = "Кударь-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Матлакс-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Охотник из клана Клинков Волн",
					["npcID"] = 150202,
				},
				[303852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кик'сжул Голос Глубин",
					["npcID"] = 153312,
				},
				[314087] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чудовищный магматический инфернал",
					["npcID"] = 20898,
				},
				[34934] = {
					["source"] = "Эфириал-призрак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18394,
				},
				[7457] = {
					["source"] = "Парохх",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46164] = {
					["npcID"] = 24664,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кель'тас Солнечный Скиталец",
					["encounterID"] = 1894,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[287471] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125557] = {
					["source"] = "Зловещийшп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285424] = {
					["source"] = "Пошлюка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267649] = {
					["source"] = "Сапер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134426,
				},
				[197003] = {
					["source"] = "Гормоош-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44276] = {
					["npcID"] = 24556,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зелфан",
					["encounterID"] = 1895,
				},
				[206803] = {
					["source"] = "Отлижу-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15232] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Темный маг из клана Призрачной Луны",
					["npcID"] = 17694,
				},
				[256455] = {
					["source"] = "Кассадин-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282502] = {
					["source"] = "Темная охотница Мутумба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144987,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Солфшп-Дракономор",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Миммишка",
					["npcID"] = 0,
				},
				[299759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Охотник из клана Клинков Волн",
					["npcID"] = 150202,
				},
				[276213] = {
					["source"] = "Укин - ромовый сторож",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140209,
				},
				[318187] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32365] = {
					["encounterID"] = 1899,
					["source"] = "Принц Шаффар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18344,
				},
				[299760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Охотник из клана Клинков Волн",
					["npcID"] = 150202,
				},
				[205708] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Солфшп-Дракономор",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анунаъх",
					["npcID"] = 0,
				},
				[1462] = {
					["source"] = "Карикун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Нидол-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259454] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йервальд",
					["npcID"] = 0,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дубохил-Азурегос",
					["npcID"] = 0,
				},
				[299762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анкоа - мастер клинка",
					["npcID"] = 154297,
				},
				[36782] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эредарский пожиратель душ",
					["npcID"] = 20879,
				},
				[27581] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[299539] = {
					["source"] = "Даркра-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[276217] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133980,
				},
				[259455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Калация",
					["npcID"] = 0,
				},
				[299764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шаман из клана Клинков Волн",
					["npcID"] = 154304,
				},
				[15531] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раб-бродяга пустошей",
					["npcID"] = 17963,
				},
				[257408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Харучка",
					["npcID"] = 0,
				},
				[36914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккирис Штормоход",
					["npcID"] = 20908,
				},
				[32316] = {
					["source"] = "Эфириал-чароплет",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18312,
				},
				[8097] = {
					["source"] = "Фаэтано",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Калация",
					["npcID"] = 0,
				},
				[299766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 151300,
				},
				[308980] = {
					["type"] = "DEBUFF",
					["source"] = "Заразная опухоль",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158478,
				},
				[116095] = {
					["source"] = "Nekaps-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кик'сжул Голос Глубин",
					["npcID"] = 153312,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вэлвир",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 113694,
				},
				[302842] = {
					["source"] = "Шэлти-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Кармиледи",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228128] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белокрылый",
					["npcID"] = 0,
				},
				[33907] = {
					["source"] = "Бролл Медвежья Шкура",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142294,
				},
				[300800] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алэз",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Паленкова-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Среброкрылая",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Нефритити",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Глер'тьогг",
					["npcID"] = 152968,
				},
				[38903] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чудовищный магматический инфернал",
					["npcID"] = 20898,
				},
				[131490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Херкуль-Азурегос",
					["npcID"] = 0,
				},
				[277943] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["source"] = "\"Блескотрон-6000\"",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 101527,
				},
				[190356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Хочупивас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39415] = {
					["npcID"] = 20912,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Предвестник Скайрисс",
					["encounterID"] = 1914,
				},
				[285440] = {
					["npcID"] = 144248,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный машинист Искроточец",
					["encounterID"] = 2259,
				},
				[294863] = {
					["type"] = "BUFF",
					["source"] = "Непримечательное растение",
					["npcID"] = 152033,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[253183] = {
					["source"] = "Морот",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176644] = {
					["source"] = "Грибсон-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drakier-DunModr",
					["npcID"] = 0,
				},
				[44534] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Презренный-костолом",
					["npcID"] = 24689,
				},
				[105688] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валпал",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207311] = {
					["source"] = "Артэсь-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гамаюн-Азурегос",
					["npcID"] = 0,
				},
				[295248] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[285443] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[186263] = {
					["source"] = "Никотрабл-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[305393] = {
					["type"] = "DEBUFF",
					["source"] = "\"Платиновый лупцеватор\"",
					["npcID"] = 144244,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[22911] = {
					["source"] = "Эфириал - осквернитель гробниц",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18311,
				},
				[210837] = {
					["source"] = "Шэлти-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278873] = {
					["source"] = "Джэйран",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279302] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[300801] = {
					["source"] = "Слезаогня-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Олдрев-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58867] = {
					["encounterID"] = 1899,
					["source"] = "Дух волка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 100820,
				},
				[38520] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 17835,
				},
				[300802] = {
					["source"] = "Искуи-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Яэтоджанк-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156064] = {
					["type"] = "BUFF",
					["source"] = "Даанса-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313088] = {
					["source"] = "Халозил",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314112] = {
					["source"] = "Заброшенный банк гильдии",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161293,
				},
				[186265] = {
					["source"] = "Дрейквуд-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кусьна",
					["npcID"] = 0,
				},
				[205097] = {
					["source"] = "Разведчик-убийца",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102395,
				},
				[132168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Малрога",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эредарский пожиратель душ",
					["npcID"] = 20879,
				},
				[291974] = {
					["npcID"] = 150397,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Король Мехагон",
					["encounterID"] = 2260,
				},
				[188089] = {
					["source"] = "Слезаогня-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44535] = {
					["source"] = "Кударь-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44503] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Презренный-полутруп",
					["npcID"] = 24690,
				},
				[31991] = {
					["npcID"] = 17941,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Менну Предатель",
					["encounterID"] = 1939,
				},
				[208705] = {
					["source"] = "Гремимунд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["source"] = "Малрога",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[254471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[318211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[298760] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ширакесс - исказительница Бездны",
					["npcID"] = 153843,
				},
				[227729] = {
					["source"] = "Энгорд-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308998] = {
					["source"] = "Падший надсмотрщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158437,
				},
				[257418] = {
					["source"] = "Адскийгость-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[274774] = {
					["source"] = "Бернин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2258,
				},
				[36828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Саргеронский лучник",
					["npcID"] = 20901,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[282604] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261602] = {
					["source"] = "Ерсак-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285454] = {
					["npcID"] = 144248,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный машинист Искроточец",
					["encounterID"] = 2259,
				},
				[257420] = {
					["source"] = "Тенеткач",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39033] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный драконаар",
					["npcID"] = 20910,
				},
				[294117] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Илаари-Азурегос",
					["npcID"] = 0,
				},
				[102793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[303080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ветара-Азурегос",
					["npcID"] = 0,
				},
				[299788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гунгнар",
					["npcID"] = 0,
				},
				[210824] = {
					["source"] = "Дяня",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[208284] = {
					["source"] = "Изайра-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299789] = {
					["source"] = "Джейнлайолен-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2258,
				},
				[80610] = {
					["source"] = "Начальник лагеря Брэк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 48255,
				},
				[319241] = {
					["source"] = "Хаомка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30500] = {
					["npcID"] = 16807,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Главный чернокнижник Пустоклят",
					["encounterID"] = 1936,
				},
				[291937] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2258,
				},
				[98444] = {
					["source"] = "Борецсвета",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290577] = {
					["source"] = "Поганище",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149555,
				},
				[156070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жрючка",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Локе'нахак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32517,
				},
				[318219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[108843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Эмпетусс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294161] = {
					["source"] = "Росбой",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гэймовер",
					["npcID"] = 0,
				},
				[5697] = {
					["source"] = "Бейжафлор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валпал",
					["npcID"] = 0,
				},
				[1449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[31422] = {
					["npcID"] = 17881,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эонус",
					["encounterID"] = 1919,
				},
				[202652] = {
					["encounterID"] = 1855,
					["source"] = "Кровавая принцесса Тал'ена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102431,
				},
				[982] = {
					["source"] = "Кицун-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318227] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[46968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[278296] = {
					["source"] = "Лукрец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[39034] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный драконаар",
					["npcID"] = 20910,
				},
				[35963] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тюремщик Аркатраца",
					["npcID"] = 20859,
				},
				[34925] = {
					["source"] = "Ужасень Нексуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19307,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гунгнар",
					["npcID"] = 0,
				},
				[124121] = {
					["source"] = "Готка-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208796] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156073] = {
					["source"] = "Сивыймерен",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272156] = {
					["encounterID"] = 1936,
					["source"] = "Ужасень Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136403,
				},
				[269085] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Матлакс-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[268062] = {
					["type"] = "BUFF",
					["source"] = "Винцесар",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34940] = {
					["source"] = "Ловчий нексуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18314,
				},
				[9080] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 17839,
				},
				[295269] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Харликинка-Дракономор",
					["npcID"] = 0,
				},
				[91800] = {
					["source"] = "Корнеголов",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26125,
				},
				[185763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[36716] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 21761,
				},
				[137639] = {
					["source"] = "Анты-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Дух земли",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[82326] = {
					["source"] = "Дебальтон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291613] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["npcID"] = 150396,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[283421] = {
					["npcID"] = 145185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
				},
				[285152] = {
					["npcID"] = 145185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
				},
				[326419] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рыжжулька",
					["npcID"] = 0,
				},
				[266018] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бразери",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Мукуро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[219589] = {
					["source"] = "Пафунтик-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рибозза",
					["npcID"] = 0,
				},
				[39028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аккирис Штормоход",
					["npcID"] = 20908,
				},
				[271138] = {
					["source"] = "Дирижабль-бомбардировщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129867,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Тотем земляной стены",
					["encounterID"] = 1897,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[309905] = {
					["source"] = "Мастер шпионажа Хул'ах",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157291,
				},
				[165802] = {
					["type"] = "BUFF",
					["source"] = "Хайдниш-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[313113] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[285472] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[156077] = {
					["source"] = "Нучтонеждали",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8096] = {
					["source"] = "Цукентаг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247191] = {
					["source"] = "Берескан-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44538] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Контрабандист Эфириума",
					["npcID"] = 24698,
				},
				[118000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Этерей",
					["npcID"] = 0,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[188838] = {
					["source"] = "Алисинка-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[44314] = {
					["npcID"] = 24723,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Селин Огненное Сердце",
					["encounterID"] = 1897,
				},
				[226512] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[302952] = {
					["source"] = "Дайкен-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Укротитель резервуара Кривого Клыка",
					["npcID"] = 17959,
				},
				[102351] = {
					["source"] = "Балбесонька-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215785] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
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
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148797,
				},
				[16380] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таящаяся ведьма",
					["npcID"] = 20882,
				},
				[216328] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31551] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крабстер",
					["npcID"] = 17816,
				},
				[17253] = {
					["source"] = "Тарантис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 50752,
				},
				[122589] = {
					["source"] = "Сидорова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Эрната-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156080] = {
					["source"] = "Конь-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281303] = {
					["source"] = "Шэлти-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[19714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аккирис Штормоход",
					["npcID"] = 20908,
				},
				[204596] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[39049] = {
					["npcID"] = 17881,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Эонус",
					["encounterID"] = 1919,
				},
				[293670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Защитник мастерской",
					["npcID"] = 144299,
				},
				[171804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Магошке-Гордунни",
					["npcID"] = 0,
				},
				[116768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[272172] = {
					["encounterID"] = 1936,
					["source"] = "Шиварра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136406,
				},
				[293671] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ладиол",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Страд-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15633] = {
					["source"] = "Волхова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[285482] = {
					["type"] = "BUFF",
					["source"] = "Нямус-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233375] = {
					["type"] = "DEBUFF",
					["source"] = "Маркагок",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кэллия",
					["npcID"] = 0,
				},
				[116858] = {
					["source"] = "Бфгдевятьк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61815] = {
					["source"] = "Трубру",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[291626] = {
					["type"] = "BUFF",
					["source"] = "Воздушное судно R-21/X",
					["npcID"] = 150396,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[194879] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[271550] = {
					["source"] = "Ринтуцуки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257946] = {
					["source"] = "Авикейчик-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даркбёрд",
					["npcID"] = 0,
				},
				[1833] = {
					["source"] = "Гормоош-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[38824] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Энтропический глаз",
					["npcID"] = 20868,
				},
				[307311] = {
					["source"] = "Призыватель из клана Цзань-Тень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153095,
				},
				[46195] = {
					["npcID"] = 24561,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яззай",
					["encounterID"] = 1895,
				},
				[293930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мехагонский механик",
					["npcID"] = 144295,
				},
				[126188] = {
					["source"] = "Алани",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163386,
				},
				[34942] = {
					["source"] = "Эфириал-черный маг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18331,
				},
				[14914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Реткон-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315176] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[208353] = {
					["source"] = "Чакураа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122633] = {
					["source"] = "Сидорова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46747] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Псина-Дракономор",
					["npcID"] = 0,
				},
				[281403] = {
					["source"] = "Витдол-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Шокнекритует-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285489] = {
					["source"] = "Фондя-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298948] = {
					["source"] = "Елена-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Камицу-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Мизак-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315179] = {
					["source"] = "Виилма-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мехагонский механик",
					["npcID"] = 144295,
				},
				[38850] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Освобожденный уничтожитель",
					["npcID"] = 20881,
				},
				[190446] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240034] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Митсури",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Вседеловомне-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33919] = {
					["encounterID"] = 1901,
					["source"] = "Таварок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18343,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[223143] = {
					["source"] = "Люцифераза-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224189] = {
					["source"] = "Ярлинг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280375] = {
					["source"] = "Борецсвета",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[44517] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чернокнижник Солнечного Клинка",
					["npcID"] = 24686,
				},
				[205228] = {
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Авикейчик-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255392] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тсилина",
					["npcID"] = 0,
				},
				[132563] = {
					["source"] = "Фиаса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Диадора-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183218] = {
					["encounterID"] = 1900,
					["source"] = "Камицу-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Иомочка",
					["npcID"] = 0,
				},
				[58448] = {
					["source"] = "Букшелф-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38816] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дозорный Смерти",
					["npcID"] = 20867,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хьельсунн-Азурегос",
					["npcID"] = 0,
				},
				[255393] = {
					["source"] = "Румпум",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223731] = {
					["source"] = "Зеленый защитник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148491,
				},
				[280165] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 66668,
				},
				[49020] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[2050] = {
					["source"] = "Одеялка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Хируна-Дракономор",
					["npcID"] = 0,
				},
				[34941] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заклинатель жизни из Эфириума",
					["npcID"] = 21702,
				},
				[259489] = {
					["source"] = "Жозет-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29335] = {
					["source"] = "Дерикус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Гросколд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283422] = {
					["npcID"] = 145185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
				},
				[304056] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[12611] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Миллхаус Манашторм",
					["npcID"] = 20977,
				},
				[198065] = {
					["source"] = "Браим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12675] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раб-бродяга пустошей",
					["npcID"] = 17963,
				},
				[194543] = {
					["source"] = "Сенатяночка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[8676] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[38911] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Освобожденный Носитель Рока",
					["npcID"] = 20900,
				},
				[279956] = {
					["source"] = "Даззлс-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эрче-Борейскаятундра",
					["npcID"] = 0,
				},
				[259491] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[312121] = {
					["type"] = "DEBUFF",
					["source"] = "Аллерия Ветрокрылая",
					["encounterID"] = 2338,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152718,
				},
				[280385] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202676] = {
					["encounterID"] = 1855,
					["source"] = "Кровавая принцесса Тал'ена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102431,
				},
				[302908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шейдапори-Азурегос",
					["npcID"] = 0,
				},
				[272790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гамаюн-Азурегос",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Суок",
					["npcID"] = 0,
				},
				[129697] = {
					["source"] = "Чут Шри Ну",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 65927,
				},
				[255909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Фархеим-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[303041] = {
					["source"] = "Рируля-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315195] = {
					["source"] = "Шайконг-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318391] = {
					["source"] = "Великий потусторонний червь",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[313148] = {
					["encounterID"] = 1899,
					["source"] = "Балбесонька-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[295343] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[102383] = {
					["encounterID"] = 1851,
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йолька",
					["npcID"] = 0,
				},
				[244808] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Песчаный краб",
					["npcID"] = 145337,
				},
				[2378] = {
					["source"] = "Ингрид-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309055] = {
					["source"] = "Камнемаг из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 155957,
				},
				[202164] = {
					["source"] = "Фидгар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даза",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[197561] = {
					["source"] = "Борецсвета",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55164] = {
					["source"] = "Лумпаакаумпа-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38912] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский лучник",
					["npcID"] = 20901,
				},
				[31553] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Караульный из клана Изувеченной Длани",
					["npcID"] = 16507,
				},
				[115175] = {
					["type"] = "BUFF",
					["source"] = "Сквиртохил",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32363] = {
					["encounterID"] = 1899,
					["source"] = "Принц Шаффар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18344,
				},
				[39013] = {
					["npcID"] = 20885,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Даллия Глашатай Судьбы",
					["encounterID"] = 1913,
				},
				[128228] = {
					["source"] = "Пежа Искристый Кремень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 64480,
				},
				[273845] = {
					["source"] = "Буревестница Морка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148759,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэтрия",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Фаршмакх-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лекарстон",
					["npcID"] = 0,
				},
				[298836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рилченса",
					["npcID"] = 0,
				},
				[302917] = {
					["source"] = "Шэлти-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223665] = {
					["type"] = "BUFF",
					["source"] = "Фалестия-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15615] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Легионер клана Изувеченной Длани",
					["npcID"] = 16700,
				},
				[20484] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2259,
				},
				[298823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мильпопс",
					["npcID"] = 0,
				},
				[308742] = {
					["source"] = "Вэйдун-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162759] = {
					["source"] = "Хмелевар Линь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148744,
				},
				[57724] = {
					["source"] = "Айварка-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[303943] = {
					["source"] = "Шайконг-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34980] = {
					["npcID"] = 17941,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Менну Предатель",
					["encounterID"] = 1939,
				},
				[215607] = {
					["source"] = "Рироина",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[186254] = {
					["source"] = "Шутоку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309063] = {
					["source"] = "Заступник из клана Барук",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153099,
				},
				[202168] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[2818] = {
					["source"] = "Малрога",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240559] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[697] = {
					["source"] = "Гулсан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25603] = {
					["source"] = "Эфириал-колдун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18313,
				},
				[273842] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280400] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[698] = {
					["source"] = "Приминик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[292686] = {
					["type"] = "BUFF",
					["source"] = "Слин-СтражСмерти",
					["encounterID"] = 1897,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30146] = {
					["source"] = "Хрылак-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16145] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 21140,
				},
				[197051] = {
					["source"] = "Supahotfia-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Алин Блэк",
					["npcID"] = 61834,
				},
				[305996] = {
					["source"] = "Медоносец-роевик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 154113,
				},
				[44544] = {
					["source"] = "Диджитал-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["source"] = "Квадракуб-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228600] = {
					["source"] = "Пенабуки-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315681] = {
					["source"] = "Калинтай",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сердитая искусительница",
					["npcID"] = 20883,
				},
				[273633] = {
					["source"] = "Стражница батальона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131361,
				},
				[280404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[273238] = {
					["source"] = "Ярутка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Хаггал-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 17839,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[15587] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Послушник из клана Призрачной Луны",
					["npcID"] = 16594,
				},
				[128999] = {
					["source"] = "Громовой волк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156778,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[16979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[139546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[198589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[31554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Защитник резервуара Кривого Клыка",
					["npcID"] = 17958,
				},
				[212283] = {
					["source"] = "Литвинка-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188526] = {
					["source"] = "Тотем землетрясения",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 95034,
				},
				[38914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский лучник",
					["npcID"] = 20901,
				},
				[114923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247218] = {
					["source"] = "Берсерк из Армии Чести",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149133,
				},
				[307026] = {
					["source"] = "Породистая-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256153] = {
					["source"] = "Эсидрейн-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11972] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воитель клана Изувеченной Длани",
					["npcID"] = 17671,
				},
				[47541] = {
					["source"] = "Бьёрнольф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[302932] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Бьёрнольф-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[277308] = {
					["source"] = "Зебэст Вечноживущий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141905,
				},
				[302933] = {
					["source"] = "Железнобокий-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275391] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288601] = {
					["source"] = "Даркстинг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[67826] = {
					["source"] = "Павиф-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298839] = {
					["source"] = "Джулим-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132169] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[280412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гуля-Азурегос",
					["npcID"] = 0,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Светлыйжнец",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Alzhyr-DunModr",
					["npcID"] = 0,
				},
				[256434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Энташелар",
					["npcID"] = 0,
				},
				[224186] = {
					["source"] = "Феддк-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115098] = {
					["source"] = "Йервальд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alzhyr-DunModr",
					["npcID"] = 0,
				},
				[37665] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чародейка резервуара Кривого Клыка",
					["npcID"] = 17961,
				},
				[1604] = {
					["source"] = "Эфириал-падальщик",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18309,
				},
				[50842] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кик'сжул Голос Глубин",
					["npcID"] = 153312,
				},
				[81141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Луриция-Дракономор",
					["npcID"] = 0,
				},
				[215997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Генератор защитного поля",
					["npcID"] = 151579,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сильфур",
					["npcID"] = 0,
				},
				[285500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шерайа-Гордунни",
					["npcID"] = 0,
				},
				[35076] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "А'дал",
					["npcID"] = 18481,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рыжжулька",
					["npcID"] = 0,
				},
				[178119] = {
					["source"] = "Мирослава-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[298605] = {
					["source"] = "Гросколд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32364] = {
					["encounterID"] = 1899,
					["source"] = "Принц Шаффар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18344,
				},
				[15503] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[596] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[300893] = {
					["source"] = "Слезаогня-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thistleleaf Ruffian",
					["npcID"] = 91474,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пчпэ",
					["npcID"] = 0,
				},
				[252342] = {
					["source"] = "Мумимаг",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36612] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Амебовидный ужас",
					["npcID"] = 20865,
				},
				[69369] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Этерей",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[132564] = {
					["source"] = "Скулкина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298848] = {
					["source"] = "Таликса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279397] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
				},
				[36862] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таящаяся ведьма",
					["npcID"] = 20882,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2259,
				},
				[294855] = {
					["npcID"] = 152033,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Непримечательное растение",
					["encounterID"] = 2259,
				},
				[871] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[278134] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байгрей",
					["npcID"] = 0,
				},
				[77489] = {
					["source"] = "Шизафреничка-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31555] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ворожея резервуара Кривого Клыка",
					["npcID"] = 17960,
				},
				[194575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дронуш-Борейскаятундра",
					["npcID"] = 0,
				},
				[39037] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный драконаар",
					["npcID"] = 20910,
				},
				[266091] = {
					["source"] = "Минстрав-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1921,
				},
				[295373] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[309673] = {
					["source"] = "Кусьна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278377] = {
					["type"] = "BUFF",
					["source"] = "Нямус-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Nekaps-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[95988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Майстар-Азурегос",
					["npcID"] = 0,
				},
				[270188] = {
					["type"] = "BUFF",
					["source"] = "Поджигательница из Торговой компании",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138092,
				},
				[213405] = {
					["source"] = "Кимая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44291] = {
					["type"] = "BUFF",
					["source"] = "Жрица Делрисса",
					["npcID"] = 24560,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[210372] = {
					["type"] = "BUFF",
					["source"] = "Рыжмонд-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44547] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сестра Мучений",
					["npcID"] = 24697,
				},
				[3562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fifini-Silvermoon",
					["npcID"] = 0,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[43198] = {
					["source"] = "Озбор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2257,
				},
				[298452] = {
					["source"] = "Вещииолег-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Методд-СвежевательДуш",
					["npcID"] = 0,
				},
				[39036] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сумеречный драконаар",
					["npcID"] = 20910,
				},
				[27577] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[27584] = {
					["npcID"] = 24559,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Полководец Саларис",
					["encounterID"] = 1895,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[85222] = {
					["source"] = "Дебальтон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 155761,
				},
				[27609] = {
					["npcID"] = 24560,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жрица Делрисса",
					["encounterID"] = 1895,
				},
				[156079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гринхилл",
					["npcID"] = 0,
				},
				[269169] = {
					["source"] = "Рубака из Армии Чести",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145163,
				},
				[251836] = {
					["source"] = "Вэлвир",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21104,
				},
				[203720] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16172] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Укротитель резервуара Кривого Клыка",
					["npcID"] = 17959,
				},
				[3714] = {
					["source"] = "Алисразор-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22273] = {
					["source"] = "Эфириал-колдун",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 18313,
				},
				[130778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Салли \"Рассольный\" Маклири",
					["npcID"] = 66501,
				},
				[311309] = {
					["source"] = "Джесуслкии-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Kbrallan-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17735] = {
					["source"] = "Якраксэ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58960,
				},
				[280433] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265077] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275429] = {
					["source"] = "Приминик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Валпал",
					["npcID"] = 0,
				},
				[309776] = {
					["source"] = "Тенеступ из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153107,
				},
				[265931] = {
					["source"] = "Бамбина",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Мяукала-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Варрак",
					["npcID"] = 0,
				},
				[297840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бобэс",
					["npcID"] = 0,
				},
				[19134] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Воитель резервуара Кривого Клыка",
					["npcID"] = 17957,
				},
				[258908] = {
					["source"] = "Солукс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157097,
				},
				[312794] = {
					["source"] = "Нидол-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298197] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[45444] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Убийца из клана Изувеченной Длани",
					["npcID"] = 17695,
				},
				[307281] = {
					["source"] = "Аккнология-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264057] = {
					["source"] = "Оксурирьё",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Владкон-Дракономор",
					["npcID"] = 0,
				},
				[267288] = {
					["source"] = "Шаман Служителей Земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135671,
				},
				[303566] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зоатроид",
					["npcID"] = 152812,
				},
				[160726] = {
					["source"] = "Абадона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Лукрец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298866] = {
					["encounterID"] = 2375,
					["source"] = "Бичующее щупальце",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153887,
				},
				[38534] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21148,
				},
				[126935] = {
					["source"] = "Шэлти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297971] = {
					["source"] = "Шаолень-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38918] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Саргеронский призыватель огня",
					["npcID"] = 20902,
				},
				[90361] = {
					["encounterID"] = 1895,
					["source"] = "Слин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33776,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Слин-СтражСмерти",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34922] = {
					["source"] = "Ужасень Нексуса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19307,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[209693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[66789] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297845] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бобэс",
					["npcID"] = 0,
				},
				[273836] = {
					["source"] = "Мактурион-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Страд-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122583] = {
					["source"] = "Сидорова",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273276] = {
					["source"] = "Зет'джирская ваятельница волн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139124,
				},
				[255937] = {
					["source"] = "Изерус-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[288803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[203812] = {
					["source"] = "Кэлинна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20615] = {
					["type"] = "DEBUFF",
					["source"] = "Полководец Саларис",
					["npcID"] = 24559,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[77758] = {
					["source"] = "Мактурион-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286587] = {
					["source"] = "Хаомка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Илаари-Азурегос",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Райнок-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278878] = {
					["source"] = "Файт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Элантугор-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Нецер-Галакронд",
					["npcID"] = 0,
				},
				[317301] = {
					["type"] = "DEBUFF",
					["source"] = "К'тир - призыватель Бездны",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161815,
				},
				[198097] = {
					["source"] = "Гормоош-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Раайнар-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38535] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21148,
				},
				[26573] = {
					["source"] = "Дебальтон-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Каракача-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308354] = {
					["source"] = "Заклинатель крови из клана Докани",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153106,
				},
				[44406] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Яркочешуйчатый змей",
					["npcID"] = 24761,
				},
				[51460] = {
					["source"] = "Фархеим-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Эготика-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Долехем-Азурегос",
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
				[1719] = {
					["source"] = "Балатран-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[280084] = {
					["source"] = "Слезаогня-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272260] = {
					["source"] = "Засмущаю",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пламя горнила",
					["npcID"] = 151930,
				},
				[311163] = {
					["type"] = "BUFF",
					["source"] = "Рев Бури",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157279,
				},
				[256453] = {
					["source"] = "Шимитус-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226175] = {
					["source"] = "Фиаса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ельпал-Гордунни",
					["npcID"] = 0,
				},
				[45062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айронборг",
					["npcID"] = 0,
				},
				[246809] = {
					["source"] = "Жесткийалкаш-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44335] = {
					["type"] = "DEBUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1898,
				},
				[273286] = {
					["source"] = "Hijex-Blackhand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Убийца из рода Бесконечности",
					["npcID"] = 21137,
				},
				[46188] = {
					["type"] = "DEBUFF",
					["source"] = "Зелфан",
					["npcID"] = 24556,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1895,
				},
				[216016] = {
					["type"] = "BUFF",
					["source"] = "Мукуро",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Идхар-ЧерныйШрам",
					["encounterID"] = 1898,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[299905] = {
					["source"] = "Пятьлимонов-Голдринн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275712] = {
					["source"] = "Люсиль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134296,
				},
				[109304] = {
					["source"] = "Ingward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202708] = {
					["source"] = "Ядошкурый тенеткач",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112733,
				},
				[38536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21148,
				},
				[89597] = {
					["source"] = "Кайнен",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Левониус-СтражСмерти",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314671] = {
					["source"] = "Сонаку",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бразери",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Фаршмакх-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221885] = {
					["source"] = "Амадо-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270219] = {
					["source"] = "Хмелевар Линь",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148744,
				},
				[256456] = {
					["source"] = "Эрната-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38900] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заклинатель жизни из Эфириума",
					["npcID"] = 21702,
				},
				[294198] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299757] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кельпин-разведчица",
					["npcID"] = 151300,
				},
				[45524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аркерас-Гордунни",
					["npcID"] = 0,
				},
				[165777] = {
					["source"] = "Гелиосир-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198103] = {
					["encounterID"] = 1899,
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Артэсь-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Малрога",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ренфолд",
					["encounterID"] = 2257,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Фаршмакх-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314685] = {
					["source"] = "Синклит-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12542] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Хранительница временного разлома",
					["npcID"] = 21104,
				},
				[35760] = {
					["source"] = "Большой крабстер",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17817,
				},
				[32182] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["source"] = "Дебальтон-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Эрната-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271439] = {
					["source"] = "Дирижабль-бомбардировщик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136958,
				},
				[38153] = {
					["type"] = "BUFF",
					["source"] = "Зыбун",
					["npcID"] = 17942,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1940,
				},
				[16953] = {
					["source"] = "Ренфолд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256374] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Виндикто-ТкачСмерти",
					["npcID"] = 0,
				},
				[38537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель временного разлома",
					["npcID"] = 21140,
				},
				[29166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[55173] = {
					["source"] = "Санниел-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[63619] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Исчадие Тьмы",
					["npcID"] = 19668,
				},
				[34331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Крикун Негатона",
					["npcID"] = 20875,
				},
				[273298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[205081] = {
					["source"] = "Могучий повелитель гнева",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 102397,
				},
				[256460] = {
					["source"] = "Вакурочка-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224449] = {
					["source"] = "Дитя Саел'орн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112732,
				},
				[273299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Лейасиль-Азурегос",
					["npcID"] = 0,
				},
				[286031] = {
					["source"] = "Ласскаа-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[306474] = {
					["source"] = "Инифер-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Интерстейлер-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30470] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дикарь из клана Изувеченной Длани",
					["npcID"] = 16523,
				},
				[2367] = {
					["source"] = "Страпонкаа-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280286] = {
					["source"] = "Музафака-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269206] = {
					["type"] = "BUFF",
					["source"] = "Нефтедобытчик Торговой компании",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137065,
				},
				[121536] = {
					["source"] = "Олдрев-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202779] = {
					["type"] = "DEBUFF",
					["source"] = "Кровавая принцесса Тал'ена",
					["encounterID"] = 1855,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 102431,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэблита",
					["npcID"] = 0,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[200389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ренфолд",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Майтрэйн-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223819] = {
					["source"] = "Изерус-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293511] = {
					["source"] = "Лайлинель",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitziblitzi-Blackmoore",
					["npcID"] = 0,
				},
				[275351] = {
					["source"] = "Ангелэльфдх-Ревущийфьорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242642] = {
					["source"] = "Фрилия-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293779] = {
					["source"] = "Гуайре-Дракономор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80534] = {
					["source"] = "Диньдиниэль-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38538] = {
					["npcID"] = 17879,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель времени Дежа",
					["encounterID"] = 1920,
				},
				[116844] = {
					["source"] = "Мэриленн-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318587] = {
					["npcID"] = 145185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"Гномогедд-0Н\"",
					["encounterID"] = 2257,
				},
				[262094] = {
					["type"] = "BUFF",
					["source"] = "Друляляляха-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102740] = {
					["source"] = "Камицу-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["source"] = "Тэна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147833] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311185] = {
					["source"] = "Френззи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258200] = {
					["source"] = "Стрелок из племени Шипошкурых",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129750,
				},
				[167164] = {
					["source"] = "Беспокойный камень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134966,
				},
				[16739] = {
					["source"] = "Погодка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311186] = {
					["source"] = "Дётти-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Тхааида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35008] = {
					["npcID"] = 17991,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рокмар Трескун",
					["encounterID"] = 1941,
				},
				[44425] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элиэн-ЧерныйШрам",
					["npcID"] = 0,
				},
				[311187] = {
					["source"] = "Ужасмэн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Бульбенька-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272285] = {
					["source"] = "Повелительница лоз Гафф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132162,
				},
				[187874] = {
					["source"] = "Папафрэнку-ЧерныйШрам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Мукуро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160067] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50752,
				},
				[201695] = {
					["source"] = "Карэлайн-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267402] = {
					["type"] = "BUFF",
					["source"] = "Маклиам-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 1919,
				},
				[201787] = {
					["source"] = "Мичуру-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Мичуру-Гордунни",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274061] = {
					["source"] = "Перерожденный сектант",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130098,
				},
				[204255] = {
					["source"] = "Ярутка-Галакронд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 18482,
				},
				[198793] = {
					["source"] = "Лонариэль-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224869] = {
					["source"] = "Дангалар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273312] = {
					["source"] = "Шильда-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268552] = {
					["source"] = "Жозет-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38539] = {
					["npcID"] = 17879,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель времени Дежа",
					["encounterID"] = 1920,
				},
				[162794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мелодиум",
					["npcID"] = 0,
				},
				[259430] = {
					["source"] = "Нучтонеждали",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283551] = {
					["type"] = "BUFF",
					["source"] = "\"Омега-крушитель\"",
					["npcID"] = 144249,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2260,
				},
				[201334] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Демонджс",
					["npcID"] = 0,
				},
				[199854] = {
					["source"] = "Паллас-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Иомочка",
					["npcID"] = 0,
				},
				[44224] = {
					["npcID"] = 24664,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кель'тас Солнечный Скиталец",
					["encounterID"] = 1894,
				},
				[199721] = {
					["source"] = "Юмитор-Ревущийфьорд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30151] = {
					["type"] = "BUFF",
					["source"] = "Акинзерас",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[298909] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кил'каррокский командир",
					["npcID"] = 145346,
				},
				[48265] = {
					["source"] = "Ансаро-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Сейлуаль-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Илаари-Азурегос",
					["npcID"] = 0,
				},
				[30471] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Разоритель из клана Изувеченной Длани",
					["npcID"] = 16699,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белокрылый",
					["npcID"] = 0,
				},
				[297133] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Оборонобот II\"",
					["npcID"] = 144298,
				},
				[77575] = {
					["source"] = "Бьёрнольф-Азурегос",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Темная охотница из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145180,
				},
				[34026] = {
					["source"] = "Лучигор-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Тенеткач",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276160] = {
					["source"] = "Призывательница духов из Армии Чести",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145181,
				},
				[278826] = {
					["source"] = "Скиазар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[288675] = {
					["source"] = "Алисинка-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134644] = {
					["source"] = "Таллария",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["source"] = "Тенеткач",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гэймовер",
					["npcID"] = 0,
				},
				[297162] = {
					["source"] = "Ренфолд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тьмавсарае",
					["npcID"] = 0,
				},
				[278981] = {
					["source"] = "Литвинка-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[38540] = {
					["npcID"] = 17879,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Повелитель времени Дежа",
					["encounterID"] = 1920,
				},
				[275672] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Макстмс",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Нюраха-Голдринн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daïsu-Archimonde",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Лираса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262145] = {
					["source"] = "Неизвестно",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144897,
				},
				[276110] = {
					["source"] = "Партизан-вырвиглаз",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144897,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Даркбёрд",
					["npcID"] = 0,
				},
				[23881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Лироойдженки",
					["npcID"] = 0,
				},
				[212061] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148044,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Virass-Arthas",
					["encounterID"] = 2257,
				},
				[311202] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liselotté-Arthas",
					["npcID"] = 0,
				},
				[309669] = {
					["source"] = "Ониксовый боевой змей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 153208,
				},
				[212754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arkan-Runetotem",
					["npcID"] = 0,
				},
				[219873] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wild Dreamrunner",
					["npcID"] = 109819,
				},
				[311203] = {
					["source"] = "Смяшной",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48778] = {
					["source"] = "Астрианна-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186548] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thistleleaf Menace",
					["npcID"] = 94262,
				},
				[188456] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thistleleaf Ruffian",
					["npcID"] = 91474,
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
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
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["aura_timer"] = false,
			["indicator_enemyclass"] = true,
		},
	},
}
