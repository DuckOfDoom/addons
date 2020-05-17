
TellMeWhenDB = {
	["global"] = {
		["TextLayouts"] = {
			["icon1"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			["bar2"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			["TMW:textlayout:1Oel8RXKYOFn"] = {
				{
					["DefaultText"] = "[Duration(gcd=true):TMWFormatDuration]",
					["Anchors"] = {
						{
							["relativeTo"] = "IconModule_TimerBar_BarDisplayTimerBar",
						}, -- [1]
					},
					["SkinAs"] = "Count",
					["Name"] = "Friz Quadrata TT",
					["StringName"] = "Duration",
					["Height"] = 4,
					["Outline"] = "OUTLINE",
				}, -- [1]
				["GUID"] = "TMW:textlayout:1Oel8RXKYOFn",
				["Name"] = "DurationOnly",
			},
		},
		["HelpSettings"] = {
			["SCROLLBAR_DROPDOWN"] = true,
			["SUG_FIRSTHELP"] = true,
			["ICON_POCKETWATCH_FIRSTSEE"] = true,
			["ICON_EXPORT_DOCOPY"] = true,
		},
		["AllowCombatConfig"] = true,
	},
	["Version"] = 87401,
	["profileKeys"] = {
		["Шанами - Вечная Песня"] = "Шанами - Вечная Песня",
		["Барличиз - Гордунни"] = "Барличиз - Гордунни",
		["Тайхэй - Азурегос"] = "Тайхэй - Азурегос",
		["Шемрок - Вечная Песня"] = "Шемрок - Вечная Песня",
		["Ozric - Stormscale"] = "Ozric - Stormscale",
		["Кассис - Вечная Песня"] = "Кассис - Вечная Песня",
		["Мукуро - Вечная Песня"] = "Default",
		["Хвостур - Азурегос"] = "Хвостур - Азурегос",
		["Лайчи - Азурегос"] = "Лайчи - Азурегос",
		["Инзу - Галакронд"] = "Инзу - Галакронд",
		["Мириэл - Пиратская Бухта"] = "Мириэл - Пиратская Бухта",
		["Эйреон - Вечная Песня"] = "Эйреон - Вечная Песня",
		["Аринэр - Вечная Песня"] = "Аринэр - Вечная Песня",
		["Ренфолд - Вечная Песня"] = "Ренфолд - Вечная Песня",
		["Шалкуар - Азурегос"] = "Шалкуар - Азурегос",
		["Thalassa - Lightning's Blade"] = "Thalassa - Lightning's Blade",
		["Самскар - Вечная Песня"] = "Самскар - Вечная Песня",
		["Ньярли - Вечная Песня"] = "Ньярли - Вечная Песня",
	},
	["profiles"] = {
		["Шанами - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Name"] = "Retr/Holy",
					["Point"] = {
						["y"] = -200,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар воина Света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Клинок справедливости; Шок небес",
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Вердикт храмовника; Свет зари",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар духов стихии",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Порыв ветра",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Гром и молния",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Правосудие",
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Locked"] = true,
					["Level"] = 9,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Scale"] = 1.5,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1UPcAJ9_ywCP",
					["Point"] = {
						["y"] = -200,
						["x"] = -6.103515625e-05,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[65] = false,
						[70] = false,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Молот праведника; Благословенный молот",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["Name"] = "Щит праведника",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Щит мстителя",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Возложение рук",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благословение защиты",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Свет защитника; Жертвенное благословение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Частица добродетели",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Владение аурами",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Правосудие света",
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Защитный панцирь",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественный щит",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественная защита; Щит возмездия",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Гнев карателя",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
				}, -- [3]
				{
					["LayoutDirection"] = 3,
					["Name"] = "Misc",
					["Point"] = {
						["y"] = -230,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Смертный приговор; Освящение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Дарование Веры; Молот света; Дознание; Молот гнева",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Сосредоточенный огонь; Голодное пламя; Воспоминания о снах наяву",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["Name"] = "Божественная призма; Испепеляющий след; Святой каратель; Эгида света",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
				}, -- [4]
				{
					["Enabled"] = false,
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Язык пламени",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Ледяное клеймо",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Божественный скакун",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [6]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Огненный шок",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "Ele Buffs",
					["Locked"] = true,
					["Point"] = {
						["y"] = -95,
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["GUID"] = "TMW:group:1PgidI5KzsXf",
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Покорение стихий",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль земли",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль огня",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
				}, -- [8]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Наставления предков",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем разразившегося ливня",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Перерождение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем духовной связи",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем целительного прилива",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Благосклонность предков",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Астральный сдвиг",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
				}, -- [9]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Молот правосудия",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
				}, -- [10]
			},
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
		},
		["Барличиз - Гордунни"] = {
			["Locked"] = true,
			["Version"] = 87401,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Uf5rzgDezCp",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [1]
			},
		},
		["Тайхэй - Азурегос"] = {
			["Locked"] = true,
			["Version"] = 84305,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1QaIBd0rxNih",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [1]
			},
		},
		["Шемрок - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Name"] = "Main",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 180,
						["x"] = -6.103515625e-05,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Камнедробитель",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар бури",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Сокрушающая молния",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Ледяное клеймо",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Point"] = {
						["y"] = -91.52316284179688,
						["x"] = -266.953857421875,
					},
					["Name"] = "CDs",
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Грозовой заряд",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Дух дикого зверя",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Перерождение",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Героизм",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Астральный сдвиг",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [2]
				{
					["LayoutDirection"] = 3,
					["Point"] = {
						["y"] = 150,
						["x"] = -6.103515625e-05,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Name"] = "Misc",
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Раскол",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Пронизывающий ветер",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свирепый выпад; Тотем ветряного порыва; Ливень",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Земляной шип",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["Point"] = {
						["y"] = 110.0000457763672,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["Name"] = "Язык пламени",
							["TimerBar_StartColor"] = "ff00ff00",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Ледяное клеймо",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Point"] = {
						["y"] = 175,
						["x"] = 150,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Columns"] = 1,
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Scale"] = 1.5,
					["Name"] = "Sprint",
					["EnabledSpecs"] = {
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Поступь духа; Гром и молния",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Предвидение Велена",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем разразившегося ливня",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем духовной связи",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем целительного прилива",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Благосклонность предков",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Астральный сдвиг",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Columns"] = 5,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 175,
						["x"] = -150,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем конденсации; Тотем хватки земли",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "CC",
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [10]
			},
			["NumGroups"] = 7,
			["TextureName"] = "Smooth",
		},
		["Ozric - Stormscale"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["NumGroups"] = 8,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYZj_2x1iWp",
					["Point"] = {
						["y"] = -140,
					},
					["Scale"] = 1.5,
					["Alpha"] = 0.96,
					["TextureName"] = "Smooth",
					["Locked"] = true,
					["Level"] = 13,
					["EnabledSpecs"] = {
						[71] = false,
						[72] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Боевой крик",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Мощный удар щитом",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Реванш",
							["ManaCheck"] = true,
							["OnlyEquipped"] = true,
							["OnlyInBags"] = true,
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар грома",
							["Enabled"] = true,
							["ManaCheck"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYmUHwqZGXs",
					["Columns"] = 5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["EnabledSpecs"] = {
						[72] = false,
					},
					["Scale"] = 1.5,
					["Locked"] = true,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Глухая оборона; Бой насмерть",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ни шагу назад",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Аватара",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Деморализующий крик; Ободряющий клич",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Блок щитом; Вихрь клинков",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["TextureName"] = "Smooth",
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYmW0wrwJs6",
					["Point"] = {
						["y"] = -170,
					},
					["Scale"] = 1.5,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[72] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Ярость Нелтариона",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Перехват; Рывок",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Зуботычина",
							["Enabled"] = true,
							["ManaCheck"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Отражение заклинаний",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1Oa4yHqXmJ2R",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Героический прыжок",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Point"] = {
						["y"] = 180,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1Oa6FKZltj97",
					["Role"] = 1,
					["Point"] = {
						["y"] = -140,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[73] = false,
						[71] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ярость Одина",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Яростный выпад",
							["CooldownCheck"] = true,
							["Type"] = "reactive",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Кровожадность",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Боевой крик",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1Oa6Ko7Jry84",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[71] = false,
						[73] = false,
					},
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["Type"] = "reactive",
							["Name"] = "Казнь",
							["UseActvtnOverlay"] = true,
							["IgnoreNomana"] = true,
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["Type"] = "reactive",
							["Name"] = "Буйство",
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1OamYpEyuvvr",
					["Columns"] = 1,
					["Name"] = "KJBW",
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Ударная волна; Удар громовержца",
							["Enabled"] = true,
							["ManaCheck"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Type"] = "item",
							["Name"] = "Перерожденная ненависть Архимонда",
							["OnlyEquipped"] = true,
							["OnlyInBags"] = true,
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["Point"] = {
						["y"] = 150,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [7]
				{
					["GUID"] = "TMW:group:1Ob7c=Lh1ULK",
					["Point"] = {
						["y"] = -140,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[73] = false,
						[72] = false,
					},
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Мощный удар",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Смертельный удар",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Миротворец",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Превосходство",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [8]
			},
		},
		["Кассис - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Point"] = {
						["y"] = -200,
					},
					["Name"] = "Retr/Holy",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар воина Света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Клинок справедливости; Шок небес",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Вердикт храмовника; Свет зари",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар духов стихии",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Порыв ветра",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Гром и молния",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Scale"] = 1.5,
					["Level"] = 9,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Locked"] = true,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1UPcAJ9_ywCP",
					["Point"] = {
						["y"] = -200,
						["x"] = -6.103515625e-05,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[65] = false,
						[70] = false,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["Name"] = "Молот праведника; Благословенный молот",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Щит праведника",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Щит мстителя",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Возложение рук",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благословение защиты",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свет защитника; Жертвенное благословение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Частица добродетели",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Владение аурами",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Защитный панцирь",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественный щит",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественная защита; Щит возмездия",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Гнев карателя",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
				}, -- [3]
				{
					["LayoutDirection"] = 3,
					["Point"] = {
						["y"] = -230,
					},
					["Name"] = "Misc",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Смертный приговор; Освящение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Дарование Веры; Молот света; Дознание",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Сосредоточенный огонь",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественная призма; Испепеляющий след; Святой каратель",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [4]
				{
					["Enabled"] = false,
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Язык пламени",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Ледяное клеймо",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественный скакун",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [6]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Огненный шок",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "Ele Buffs",
					["Locked"] = true,
					["Point"] = {
						["y"] = -95,
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["GUID"] = "TMW:group:1PgidI5KzsXf",
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Перерождение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Покорение стихий",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Элементаль земли",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Элементаль огня",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
				}, -- [8]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Наставления предков",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем разразившегося ливня",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем духовной связи",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем целительного прилива",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благосклонность предков",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Астральный сдвиг",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
				}, -- [9]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Молот правосудия",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
				}, -- [10]
			},
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
		},
		["Шалкуар - Азурегос"] = {
			["HideBlizzCDBling"] = false,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Name"] = "Retr/Holy",
					["Point"] = {
						["y"] = -200,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар воина Света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Клинок справедливости; Шок небес",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Вердикт храмовника; Свет зари",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар духов стихии",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Порыв ветра",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Гром и молния",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Locked"] = true,
					["Level"] = 9,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Scale"] = 1.5,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1UPcAJ9_ywCP",
					["Point"] = {
						["y"] = -200,
						["x"] = -6.103515625e-05,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[65] = false,
						[70] = false,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Молот праведника; Благословенный молот",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Щит праведника",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Щит мстителя",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Возложение рук",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благословение защиты",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свет защитника; Жертвенное благословение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Частица добродетели",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Владение аурами",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Защитный панцирь",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественный щит",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественная защита; Щит возмездия",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Гнев карателя",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
				}, -- [3]
				{
					["LayoutDirection"] = 3,
					["Name"] = "Misc",
					["Point"] = {
						["y"] = -230,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Смертный приговор; Освящение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Дарование Веры; Молот света; Дознание; Молот гнева",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Сосредоточенный огонь; Голодное пламя; Воспоминания о снах наяву",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Божественная призма; Испепеляющий след; Святой каратель; Эгида света",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
				}, -- [4]
				{
					["Enabled"] = false,
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Язык пламени",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Ледяное клеймо",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Божественный скакун",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [6]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Огненный шок",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "Ele Buffs",
					["Locked"] = true,
					["Point"] = {
						["y"] = -95,
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["GUID"] = "TMW:group:1PgidI5KzsXf",
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Перерождение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Покорение стихий",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Элементаль земли",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Элементаль огня",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
				}, -- [8]
				{
					["Enabled"] = false,
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Наставления предков",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем разразившегося ливня",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем духовной связи",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем целительного прилива",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благосклонность предков",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Астральный сдвиг",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
				}, -- [9]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Молот правосудия",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
				}, -- [10]
			},
			["Locked"] = true,
			["Version"] = 87401,
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
		},
		["Хвостур - Азурегос"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ud2ZnCIMbas",
					["Name"] = "Unbearable",
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Трепка",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Увечье",
							["Enabled"] = true,
							["ClockGCD"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Взбучка; Взбучка",
							["Enabled"] = true,
							["ClockGCD"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Железный мех",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Point"] = {
						["y"] = 180,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1UPcAJ9_ywCP",
					["Name"] = "Main",
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[70] = false,
						[65] = false,
						[102] = false,
						[104] = false,
						[105] = false,
					},
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Полоснуть",
							["RangeCheck"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свирепый укус",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Разорвать",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Тигриное неистовство",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Point"] = {
						["y"] = 180,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Columns"] = 5,
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Возложение рук",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Благословение защиты",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Свет защитника; Жертвенное благословение",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Частица добродетели",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Владение аурами",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Правосудие света",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Защитный панцирь",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Божественный щит",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Инстинкты выживания",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Берсерк",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
				}, -- [3]
				{
					["LayoutDirection"] = 3,
					["Scale"] = 1.5,
					["Name"] = "Misc",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Смертный приговор; Освящение",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Лобовая атака",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Стремительный рывок",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Размах",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Point"] = {
						["y"] = -230,
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Порыв",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Name"] = "CC",
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Мощное оглушение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [6]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [9]
			},
			["NumGroups"] = 6,
			["TextureName"] = "Smooth",
		},
		["Лайчи - Азурегос"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Name"] = "Main",
					["Point"] = {
						["y"] = -140,
					},
					["Locked"] = true,
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Коварный удар; Удар в спину",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Устранение; Потрошение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Промеж глаз; Удар по почкам",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Выстрел из пистоли; Символы смерти",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
					},
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
					},
					["Scale"] = 1.5,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Columns"] = 5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Выброс адреналина; Теневые клинки; Вендетта",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Плащ теней",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Отражение ударов; Ускользание",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Исчезновение",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Алый фиал",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Locked"] = true,
					["Name"] = "CDs",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
				}, -- [2]
				{
					["LayoutDirection"] = 3,
					["Name"] = "Misc",
					["Point"] = {
						["y"] = -170,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Натиск клинка; Тайный прием; Череда убийств",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Пинок",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Абордажный крюк; Шаг сквозь тень",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Танец теней; Пускание крови",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Locked"] = true,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["Name"] = "Язык пламени",
							["TimerBar_StartColor"] = "ff00ff00",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["Name"] = "Ледяное клеймо",
							["TimerBar_StartColor"] = "ff00ff00",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["Alpha"] = 0.97,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Спринт",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[264] = false,
					},
					["Columns"] = 1,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Point"] = {
						["y"] = -155,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар духов стихии",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Выброс лавы",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Землетрясение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ледяная ярость",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Хранитель бурь",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Порыв ветра",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Пронизывающий ветер",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем жидкой магмы",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "EleMain",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Enabled"] = false,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PgidI5KzsXf",
					["Point"] = {
						["y"] = -95,
					},
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "Огненный шок",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "Ele Buffs",
					["Locked"] = true,
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Enabled"] = false,
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Пылкое желание Кил'джедена",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль огня",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль земли",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
				}, -- [8]
				{
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Предвидение Велена",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем разразившегося ливня",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Перерождение",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем духовной связи",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем целительного прилива",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Благосклонность предков",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Астральный сдвиг",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Columns"] = 5,
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Enabled"] = false,
				}, -- [9]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем конденсации; Тотем хватки земли",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
				}, -- [10]
			},
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
		},
		["Инзу - Галакронд"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Name"] = "Main",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -140,
					},
					["EnabledSpecs"] = {
						[269] = false,
						[264] = false,
						[262] = false,
						[270] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Взрывной бочонок",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар бочонком",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Нокаутирующая атака",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Пламенное дыхание",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [12]
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Name"] = "CDs",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Укрепляющий отвар",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Дар наару",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Астральный сдвиг",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Целебный эликсир",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Name"] = "Misc",
					["Point"] = {
						["y"] = -170,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[269] = false,
						[264] = false,
						[262] = false,
						[270] = false,
					},
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Земляной шип",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Рука-копье",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Кувырок",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["LayoutDirection"] = 3,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Язык пламени",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Name"] = "Ледяное клеймо",
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Columns"] = 1,
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тигриное рвение",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Name"] = "Sprint",
				}, -- [5]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Круговой удар ногой",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CC",
				}, -- [6]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [8]
			},
			["NumGroups"] = 6,
			["TextureName"] = "Smooth",
		},
		["Мириэл - Пиратская Бухта"] = {
			["Version"] = 85301,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1RZPaop7vSgy",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [1]
			},
		},
		["Эйреон - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 87401,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Locked"] = true,
					["Point"] = {
						["y"] = -200,
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Scale"] = 1.5,
					["Level"] = 9,
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Разлом; Укус демона; Иссечение",
							["Enabled"] = true,
							["ClockGCD"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Раскалывание душ; Удар хаоса",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Пронзающий взгляд; Огненное клеймо",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Танец клинков; Обжигающий жар",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар духов стихии",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Порыв ветра",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Гром и молния",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Правосудие",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Retr/Holy",
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Возложение рук",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Благословение защиты",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Свет защитника; Жертвенное благословение",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Частица добродетели",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Правосудие света",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Защитный панцирь",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Призрачный барьер",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Пленение",
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Метаморфоза",
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [2]
				{
					["LayoutDirection"] = 3,
					["Locked"] = true,
					["Point"] = {
						["y"] = -230,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Печать огня; Черная рана; Клинок скверны",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Печать страдания; Обжигающий жар",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["Name"] = "Голодное пламя; Сосредоточенный огонь",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Печать немоты; Обстрел скверны",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Misc",
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["Name"] = "Язык пламени",
							["TimerBar_StartColor"] = "ff00ff00",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["TimerBar_CompleteColor"] = "ffff0000",
							["OnlyMine"] = true,
							["Name"] = "Ледяное клеймо",
							["TimerBar_StartColor"] = "ff00ff00",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Enabled"] = false,
					["Name"] = "Buffs",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "icon2",
						},
					},
					["Locked"] = true,
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Alpha"] = 0.97,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Инфернальный удар; Коварное отступление",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 1,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1PgidI5KzsXf",
					["Point"] = {
						["y"] = -95,
					},
					["Scale"] = 2.2,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "Огненный шок",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
					},
					["Name"] = "Ele Buffs",
					["Locked"] = true,
					["Enabled"] = false,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [6]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Перерождение",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Покорение стихий",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль земли",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Элементаль огня",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
				}, -- [7]
				{
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Наставления предков",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем разразившегося ливня",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Перерождение",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем духовной связи",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Тотем целительного прилива",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Благосклонность предков",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Астральный сдвиг",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Resto CDs",
					["Enabled"] = false,
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Columns"] = 5,
				}, -- [8]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Name"] = "CC",
					["Icons"] = {
						{
							["GCDAsUnusable"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Name"] = "Инфернальный удар; Рывок скверны",
							["Enabled"] = true,
							["ClockGCD"] = true,
							["Type"] = "cooldown",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [10]
			},
			["NumGroups"] = 9,
			["TextureName"] = "Smooth",
		},
		["Аринэр - Вечная Песня"] = {
			["Locked"] = true,
			["Version"] = 87401,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1UeqDLmq8fqj",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [1]
			},
		},
		["Default"] = {
			["HideBlizzCDBling"] = false,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Point"] = {
						["y"] = -200,
					},
					["Name"] = "Main",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Мощный удар; Яростный выпад; Сокрушение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Смертельный удар; Кровожадность; Мощный удар щитом",
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Вихрь; Стойкость к боли",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Превосходство; Безрассудство; Блок щитом",
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар духов стихии",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Порыв ветра",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Гром и молния",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Scale"] = 1.5,
					["Level"] = 9,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Locked"] = true,
				}, -- [1]
				{
					["LayoutDirection"] = 3,
					["Point"] = {
						["y"] = -230,
					},
					["Name"] = "Main2",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Миротворец; Удар грома",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Зуботычина",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Рывок",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Вихрь клинков; Реванш; Буйство",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Возложение рук",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Благословение защиты",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свет защитника; Жертвенное благословение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Частица добродетели",
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Владение аурами",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Правосудие света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Защитный панцирь",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ни шагу назад",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Глухая оборона",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Аватара",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Героический прыжок",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingX"] = 100,
							["SpacingY"] = -3,
						},
					},
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 1,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Молот правосудия",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
				}, -- [5]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [6]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [10]
			},
			["Locked"] = true,
			["Version"] = 87401,
			["NumGroups"] = 5,
			["TextureName"] = "Smooth",
		},
		["Ренфолд - Вечная Песня"] = {
			["Version"] = 87401,
			["NumGroups"] = 5,
			["TextureName"] = "Smooth",
			["HideBlizzCDBling"] = false,
			["Groups"] = {
				{
					["Scale"] = 1.5,
					["Locked"] = true,
					["Level"] = 9,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Полоснуть",
							["GCDAsUnusable"] = true,
							["ClockGCD"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Свирепый укус; Железный мех",
							["ClockGCD"] = true,
							["ManaCheck"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Жестокий удар когтями",
							["ClockGCD"] = true,
							["ManaCheck"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Тигриное неистовство",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар духов стихии",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [5]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Порыв ветра",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [6]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Гром и молния",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [7]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Правосудие",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Name"] = "Cat/Bear",
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Point"] = {
						["y"] = -200,
					},
				}, -- [1]
				{
					["Point"] = {
						["y"] = -80,
						["x"] = -268,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Возложение рук",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Благословение защиты",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Свет защитника; Жертвенное благословение",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Частица добродетели",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Владение аурами",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [5]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Правосудие света",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
						}, -- [6]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Защитный панцирь",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [7]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Божественный щит",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [8]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Инстинкты выживания",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [9]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Берсерк; Дубовая кожа",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [10]
					},
					["Name"] = "CDs",
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
				}, -- [2]
				{
					["Scale"] = 1.5,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Смертный приговор; Освящение",
							["GCDAsUnusable"] = true,
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
							["ShowTimerText"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["GCDAsUnusable"] = true,
							["ClockGCD"] = true,
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["Name"] = "Стремительный рывок",
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["GCDAsUnusable"] = true,
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["RangeCheck"] = true,
							["Enabled"] = true,
							["Name"] = "Сосредоточенный огонь; Голодное пламя; Воспоминания о снах наяву",
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["GCDAsUnusable"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "Глубокая рана",
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["LayoutDirection"] = 3,
					["Name"] = "Misc",
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Point"] = {
						["y"] = -230,
					},
				}, -- [3]
				{
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 1.5,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 1,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Порыв",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Name"] = "Sprint",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingY"] = -3,
							["SpacingX"] = 100,
						},
					},
					["GUID"] = "TMW:group:1OkzVS2Tvpaj",
				}, -- [4]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Scale"] = 1.5,
					["Columns"] = 1,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Мощное оглушение; Массовое оплетение",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 1,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Name"] = "CC",
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [5]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [6]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
					},
				}, -- [10]
			},
		},
		["Ньярли - Вечная Песня"] = {
			["Locked"] = true,
			["Version"] = 87401,
			["Groups"] = {
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1ToniJvH4ta2",
				}, -- [1]
			},
		},
		["Самскар - Вечная Песня"] = {
			["Locked"] = true,
			["Version"] = 84305,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1QVlQHjJt_AF",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [1]
			},
		},
		["Thalassa - Lightning's Blade"] = {
			["Locked"] = true,
			["Version"] = 87401,
			["Groups"] = {
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Rk7mp8stF0a",
				}, -- [1]
			},
		},
	},
}
