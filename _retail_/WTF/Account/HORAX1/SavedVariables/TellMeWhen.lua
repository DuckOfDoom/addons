
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
		["Sherinian - Doomhammer"] = "Sherinian - Doomhammer",
		["Шанами - Вечная Песня"] = "Шанами - Вечная Песня",
		["Тайхэй - Азурегос"] = "Тайхэй - Азурегос",
		["Шемрок - Вечная Песня"] = "Шемрок - Вечная Песня",
		["Ozric - Stormscale"] = "Ozric - Stormscale",
		["Ingward - Lightning's Blade"] = "Ingward - Lightning's Blade",
		["Хвостур - Азурегос"] = "Хвостур - Азурегос",
		["Лайчи - Азурегос"] = "Лайчи - Азурегос",
		["Инзу - Галакронд"] = "Инзу - Галакронд",
		["Мириэл - Пиратская Бухта"] = "Мириэл - Пиратская Бухта",
		["Oldfield - Doomhammer"] = "Oldfield - Doomhammer",
		["Ньярли - Вечная Песня"] = "Ньярли - Вечная Песня",
		["Самскар - Вечная Песня"] = "Самскар - Вечная Песня",
		["Шалкуар - Азурегос"] = "Шалкуар - Азурегос",
		["Thalassa - Lightning's Blade"] = "Thalassa - Lightning's Blade",
		["Мукуро - Вечная Песня"] = "Default",
		["Эйреон - Вечная Песня"] = "Эйреон - Вечная Песня",
	},
	["profiles"] = {
		["Sherinian - Doomhammer"] = {
			["Locked"] = true,
			["Version"] = 85301,
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
					["GUID"] = "TMW:group:1RaiVOcz3rf=",
				}, -- [1]
			},
		},
		["Шанами - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 85403,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Name"] = "Prot",
					["Locked"] = true,
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[70] = false,
						[264] = false,
						[262] = false,
						[65] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Молот праведника; Благословенный молот",
							["Enabled"] = true,
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
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Щит праведника",
							["Enabled"] = true,
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Щит мстителя",
							["Enabled"] = true,
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
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Освящение",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
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
					["Point"] = {
						["y"] = -140,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Name"] = "Retr/Holy",
					["Locked"] = true,
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[66] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Удар воина Света",
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
							["Name"] = "Клинок справедливости; Шок небес",
							["Enabled"] = true,
							["RangeCheck"] = true,
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Вердикт храмовника; Свет зари",
							["Enabled"] = true,
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
						}, -- [3]
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
						}, -- [4]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Удар духов стихии",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Порыв ветра",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Гром и молния",
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
							["Name"] = "Правосудие",
							["Enabled"] = true,
							["RangeCheck"] = true,
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
						["y"] = -140,
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Возложение рук",
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
							["Name"] = "Свет защитника; Жертвенное благословение",
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
							["Name"] = "Правосудие света",
							["Enabled"] = true,
							["RangeCheck"] = true,
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
							["Name"] = "Божественная защита; Щит возмездия",
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
							["Name"] = "Гнев карателя",
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
					["Name"] = "CDs",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 5,
				}, -- [3]
				{
					["LayoutDirection"] = 3,
					["Locked"] = true,
					["Point"] = {
						["y"] = -170,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Icons"] = {
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
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Дарование Веры; Молот света",
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
							["Name"] = "Божественная призма",
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
						}, -- [3]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Избавление Тира; Испепеляющий след",
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
					["Name"] = "Misc",
				}, -- [4]
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
				}, -- [5]
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
					["Columns"] = 1,
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
							["Type"] = "buff",
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
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["Scale"] = 1.5,
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
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
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
							["Name"] = "Тотем разразившегося ливня",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Перерождение",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Тотем духовной связи",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Тотем целительного прилива",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Благосклонность предков",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Астральный сдвиг",
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
				}, -- [9]
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
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [10]
			},
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
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
					["Point"] = {
						["y"] = -140,
					},
					["Locked"] = true,
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
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ледяное клеймо",
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
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
					},
					["Scale"] = 1.5,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Name"] = "CDs",
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Грозовой заряд",
							["States"] = {
								{
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
							["Name"] = "Дух дикого зверя",
							["States"] = {
								{
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
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Героизм",
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
							["Name"] = "Астральный сдвиг",
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
					["Columns"] = 5,
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
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Свирепый выпад; Тотем ветряного порыва; Ливень",
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
							["Name"] = "Поступь духа; Гром и молния",
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
					["Name"] = "EleMain",
					["Point"] = {
						["y"] = -155,
					},
					["Icons"] = {
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
							["Name"] = "Ледяная ярость",
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
						}, -- [4]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Хранитель бурь",
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
							["Name"] = "Молния-лассо",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Тотем жидкой магмы",
							["States"] = {
								{
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
					["Locked"] = true,
					["Rows"] = 2,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Scale"] = 1.5,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PgidI5KzsXf",
					["Point"] = {
						["y"] = -95,
					},
					["Name"] = "Ele Buffs",
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
					["Locked"] = true,
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Scale"] = 2.2,
				}, -- [7]
				{
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["Name"] = "Ele CDs",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
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
							["ShowTimerText"] = true,
							["Name"] = "Пылкое желание Кил'джедена",
							["States"] = {
								{
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
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
				}, -- [8]
				{
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
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
							["Name"] = "Предвидение Велена",
							["States"] = {
								{
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
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
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
							["Name"] = "Тотем конденсации; Тотем хватки земли",
							["States"] = {
								{
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
		["Ozric - Stormscale"] = {
			["Version"] = 87401,
			["NumGroups"] = 8,
			["HideBlizzCDBling"] = false,
			["Groups"] = {
				{
					["Scale"] = 1.5,
					["TextureName"] = "Smooth",
					["Locked"] = true,
					["Level"] = 13,
					["EnabledSpecs"] = {
						[71] = false,
						[72] = false,
					},
					["GUID"] = "TMW:group:1OYZj_2x1iWp",
					["Alpha"] = 0.96,
					["Point"] = {
						["y"] = -140,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
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
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Мощный удар щитом",
							["States"] = {
								{
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
							["OnlyEquipped"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Реванш",
							["Enabled"] = true,
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
							["OnlyInBags"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Удар грома",
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
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["TextureName"] = "Smooth",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[72] = false,
					},
					["Columns"] = 5,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Блок щитом; Вихрь клинков",
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
					},
					["GUID"] = "TMW:group:1OYmUHwqZGXs",
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYmW0wrwJs6",
					["Scale"] = 1.5,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[72] = false,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Name"] = "Ярость Нелтариона",
							["States"] = {
								{
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
							["Name"] = "Перехват; Рывок",
							["States"] = {
								{
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
							["Name"] = "Зуботычина",
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
							["Name"] = "Отражение заклинаний",
							["States"] = {
								{
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
						["y"] = -170,
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1Oa4yHqXmJ2R",
					["Scale"] = 1.5,
					["Columns"] = 1,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
					["Scale"] = 1.5,
					["Role"] = 1,
					["EnabledSpecs"] = {
						[73] = false,
						[71] = false,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Name"] = "Яростный выпад",
							["CooldownCheck"] = true,
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
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [4]
					},
					["Point"] = {
						["y"] = -140,
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1Oa6Ko7Jry84",
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
							["Type"] = "reactive",
							["IgnoreNomana"] = true,
							["Name"] = "Казнь",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [3]
						{
							["Type"] = "reactive",
							["Name"] = "Буйство",
							["ManaCheck"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [4]
					},
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1OamYpEyuvvr",
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Columns"] = 1,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "Ударная волна; Удар громовержца",
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
						}, -- [1]
						{
							["ShowTimer"] = true,
							["OnlyEquipped"] = true,
							["Type"] = "item",
							["ShowTimerText"] = true,
							["Name"] = "Перерожденная ненависть Архимонда",
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
					["Name"] = "KJBW",
					["Point"] = {
						["y"] = 150,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [7]
				{
					["GUID"] = "TMW:group:1Ob7c=Lh1ULK",
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[73] = false,
						[72] = false,
					},
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Мощный удар",
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
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Смертельный удар",
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
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [4]
					},
					["Point"] = {
						["y"] = -140,
					},
				}, -- [8]
			},
			["Locked"] = true,
		},
		["Ingward - Lightning's Blade"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 85403,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Name"] = "Main",
					["Point"] = {
						["y"] = -140,
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Kill Command",
							["States"] = {
								{
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
							["Name"] = "Carve",
							["Enabled"] = true,
							["Type"] = "cooldown",
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Wildfire Bomb",
							["Enabled"] = true,
							["Type"] = "cooldown",
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
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
					},
					["Locked"] = true,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Name"] = "CDs",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Icons"] = {
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
							["Name"] = "Элементаль земли",
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
							["Name"] = "Дар наару",
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
							["Name"] = "Exhilaration",
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
					["Scale"] = 1.5,
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [2]
				{
					["LayoutDirection"] = 3,
					["Point"] = {
						["y"] = -170,
					},
					["Name"] = "Misc",
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Раскол",
							["Enabled"] = true,
							["Type"] = "cooldown",
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
						}, -- [1]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Muzzle",
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
							["Name"] = "Harpoon",
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
					["Scale"] = 1.5,
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
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
							["Name"] = "Disengage",
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
					["Name"] = "EleMain",
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
					["Scale"] = 1.5,
					["Rows"] = 2,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PgidI5KzsXf",
					["Name"] = "Ele Buffs",
					["Point"] = {
						["y"] = -95,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "Огненный шок",
							["Type"] = "buff",
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
					["Scale"] = 2.2,
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Locked"] = true,
				}, -- [7]
				{
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["Name"] = "Ele CDs",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
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
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Columns"] = 5,
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
		["Хвостур - Азурегос"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 86801,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Strata"] = "BACKGROUND",
					["Name"] = "Main Cat",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -140,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
						[105] = false,
						[102] = false,
						[104] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Бешенство Пеплошкурой",
							["Type"] = "cooldown",
							["Enabled"] = true,
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
							["ClockGCD"] = true,
							["Name"] = "Глубокая рана",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["ManaCheck"] = true,
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "Разорвать",
							["States"] = {
								{
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
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "Полоснуть",
							["States"] = {
								{
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
						{
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
					["Name"] = "CDs Cat",
					["SettingsPerView"] = {
						["icon"] = {
							["SpacingY"] = -1,
						},
					},
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
						[105] = false,
						[102] = false,
						[104] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Берсерк",
							["States"] = {
								{
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
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Наставление элуны",
							["States"] = {
								{
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
					["GUID"] = "TMW:group:1OerWuW_vf9w",
					["Point"] = {
						["y"] = -95,
						["x"] = -1.66459517045455e-05,
					},
					["Scale"] = 2.2,
					["Alpha"] = 0.97,
					["Name"] = "Buffs Cat",
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
							["BuffOrDebuff"] = "HARMFUL",
							["TimerBar_CompleteColor"] = "ffff0000",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Type"] = "buff",
							["Name"] = "Глубокая рана",
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
							["BuffOrDebuff"] = "HARMFUL",
							["TimerBar_CompleteColor"] = "ffff0000",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["TimerBar_StartColor"] = "ff00ff00",
							["Type"] = "buff",
							["Name"] = "Разорвать",
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
						[105] = false,
						[102] = false,
						[104] = false,
					},
					["Columns"] = 5,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1Pd8SCIHVy16",
					["Name"] = "Main Bear",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -140,
					},
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Железный мех",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
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
							["Name"] = "Неистовое восстановление",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
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
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Увечье",
							["States"] = {
								{
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
							["Name"] = "Взбучка",
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
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
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PcNr24QvxoW",
					["Name"] = "CDs Bear",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[102] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "Лунный луч",
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
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "Ярость Спящего",
							["States"] = {
								{
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
							["Name"] = "Дубовая кожа",
							["States"] = {
								{
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
				}, -- [5]
				{
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Name"] = "Misc",
					["Point"] = {
						["y"] = -170,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Наставление элуны",
							["States"] = {
								{
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
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Лобовая атака",
							["States"] = {
								{
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
							["ManaCheck"] = true,
							["Type"] = "cooldown",
							["Name"] = "Стремительный рывок",
							["States"] = {
								{
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
							["Name"] = "Жестокий удар когтями",
							["States"] = {
								{
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
					["LayoutDirection"] = 3,
				}, -- [6]
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
						{
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
				}, -- [7]
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
							["Name"] = "Тревожный рев",
							["States"] = {
								{
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
				}, -- [8]
			},
			["NumGroups"] = 8,
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
					["Scale"] = 1.5,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
					},
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["RangeCheck"] = true,
							["ClockGCD"] = true,
							["Name"] = "Коварный удар; Удар в спину",
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Устранение; Потрошение",
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Промеж глаз; Удар по почкам",
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
							["Name"] = "Выстрел из пистоли; Символы смерти",
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
					["Point"] = {
						["y"] = -140,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Scale"] = 1.5,
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Locked"] = true,
					["Columns"] = 5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Выброс адреналина; Теневые клинки; Вендетта",
							["States"] = {
								{
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
							["Name"] = "Плащ теней",
							["States"] = {
								{
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
							["Name"] = "Отражение ударов; Ускользание",
							["States"] = {
								{
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
							["Name"] = "Исчезновение",
							["States"] = {
								{
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
							["Name"] = "Алый фиал",
							["States"] = {
								{
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
					["Name"] = "CDs",
				}, -- [2]
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
							["Name"] = "Натиск клинка; Тайный прием; Череда убийств",
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
							["Type"] = "cooldown",
							["Name"] = "Пинок",
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
							["Name"] = "Абордажный крюк; Шаг сквозь тень",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Танец теней; Пускание крови",
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
						["y"] = -170,
					},
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
					["Columns"] = 5,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
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
							["Name"] = "Спринт",
							["States"] = {
								{
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
					["Point"] = {
						["y"] = 170,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [5]
				{
					["Enabled"] = false,
					["Point"] = {
						["y"] = -155,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Удар духов стихии",
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
							["RangeCheck"] = true,
							["Name"] = "Выброс лавы",
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
							["Name"] = "Землетрясение",
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
							["RangeCheck"] = true,
							["Name"] = "Ледяная ярость",
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
							["Name"] = "Хранитель бурь",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Порыв ветра",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Пронизывающий ветер",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Тотем жидкой магмы",
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
					},
					["Name"] = "EleMain",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
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
					["GUID"] = "TMW:group:1PgidI5KzsXf",
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -95,
					},
				}, -- [7]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["Scale"] = 1.5,
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
							["Name"] = "Пылкое желание Кил'джедена",
							["States"] = {
								{
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
						}, -- [3]
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
						}, -- [4]
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
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
							["Name"] = "Предвидение Велена",
							["States"] = {
								{
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
							["Name"] = "Тотем разразившегося ливня",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Перерождение",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Тотем духовной связи",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Тотем целительного прилива",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Благосклонность предков",
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
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Астральный сдвиг",
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
					["GUID"] = "TMW:group:1Oe_w3bgf28A",
					["Level"] = 11,
					["EnabledSpecs"] = {
						[262] = false,
						[263] = false,
					},
					["Point"] = {
						["y"] = -110,
						["x"] = -200,
					},
				}, -- [9]
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
							["Name"] = "Тотем конденсации; Тотем хватки земли",
							["States"] = {
								{
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
					["Columns"] = 1,
					["Name"] = "Sprint",
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
		["Oldfield - Doomhammer"] = {
			["Locked"] = true,
			["Version"] = 85301,
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
					["GUID"] = "TMW:group:1RaOwl8sQwM_",
				}, -- [1]
			},
		},
		["Ньярли - Вечная Песня"] = {
			["Locked"] = true,
			["Version"] = 87203,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1ToniJvH4ta2",
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
							["Name"] = "Боевой крик",
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Мощный удар щитом",
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
							["Name"] = "Ни шагу назад",
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
							["Name"] = "Аватара",
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
							["Name"] = "Блок щитом; Вихрь клинков",
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
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Ярость Нелтариона",
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Перехват; Рывок",
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
							["Name"] = "Отражение заклинаний",
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
					},
					["EnabledSpecs"] = {
						[72] = false,
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1Oa4yHqXmJ2R",
					["Point"] = {
						["y"] = 180,
						["x"] = 100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
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
					["Columns"] = 1,
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
							["Name"] = "Яростный выпад",
							["Enabled"] = true,
							["ShowTimerText"] = true,
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
							["Name"] = "Кровожадность",
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
					["Point"] = {
						["y"] = 150,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Columns"] = 1,
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
							["Name"] = "Перерожденная ненависть Архимонда",
							["OnlyInBags"] = true,
							["Type"] = "item",
							["ShowTimerText"] = true,
							["OnlyEquipped"] = true,
							["States"] = {
								{
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
					["Name"] = "KJBW",
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
							["Name"] = "Мощный удар",
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
							["Name"] = "Превосходство",
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
					},
				}, -- [8]
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
			["Version"] = 85403,
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
		["Шалкуар - Азурегос"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1OYlbjqerQxW",
					["Point"] = {
						["y"] = -130,
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Type"] = "cooldown",
							["Name"] = "Ярость света",
							["States"] = {
								{
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
							["Name"] = "Исповедь",
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["Enabled"] = true,
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
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["Name"] = "Слово силы: Утешение",
							["States"] = {
								{
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
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Type"] = "cooldown",
							["Name"] = "Подавление боли",
							["States"] = {
								{
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
					["EnabledSpecs"] = {
						[257] = false,
						[258] = false,
					},
					["Columns"] = 3,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYlll80Pf3r",
					["Point"] = {
						["y"] = -160,
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["Name"] = "Схизма",
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
					["EnabledSpecs"] = {
						[257] = false,
						[258] = false,
					},
					["Columns"] = 1,
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlpMK=f5fi",
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[257] = false,
						[258] = false,
					},
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Придание сил",
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["Enabled"] = true,
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
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["Enabled"] = true,
							["Name"] = "вознесение",
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
							["ManaCheck"] = true,
							["Name"] = "Слово силы: Барьер",
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["ManaCheck"] = true,
							["Enabled"] = true,
							["Name"] = "Подавление боли",
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
					},
				}, -- [3]
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
				}, -- [4]
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
						{
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
						{
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
			},
			["Locked"] = true,
			["Version"] = 84305,
			["NumGroups"] = 3,
			["ForceNoBlizzCC"] = true,
		},
		["Эйреон - Вечная Песня"] = {
			["HideBlizzCDBling"] = false,
			["Version"] = 85403,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Ob4SqDvOJvL",
					["Locked"] = true,
					["Point"] = {
						["y"] = -155,
					},
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
						[581] = false,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Танец клинков",
							["Enabled"] = true,
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
						}, -- [1]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Удар хаоса",
							["Enabled"] = true,
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
						}, -- [2]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Пронзающий взгляд",
							["Enabled"] = true,
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
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Клинок скверны",
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
							["Name"] = "Ярость иллидари",
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
							["Name"] = "Рывок скверны",
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
						}, -- [6]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Поглощение магии",
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
							["Name"] = "Коварное отступление",
							["Enabled"] = true,
							["RangeCheck"] = true,
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
					},
					["Name"] = "Havoc",
				}, -- [1]
				{
					["GUID"] = "TMW:group:1OYb=Gnq28BH",
					["Locked"] = true,
					["Point"] = {
						["y"] = -155,
					},
					["EnabledSpecs"] = {
						[264] = false,
						[262] = false,
						[577] = false,
					},
					["Scale"] = 1.5,
					["Rows"] = 2,
					["Icons"] = {
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Разлом",
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
							["Name"] = "Раскалывание душ",
							["Enabled"] = true,
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
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["ClockGCD"] = true,
							["Name"] = "Печать огня",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
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
								[102] = {
									["Alpha"] = 1,
								},
							},
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Демонические шипы",
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Огненное клеймо",
							["Enabled"] = true,
							["RangeCheck"] = true,
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
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["Name"] = "Инфернальный удар",
							["Enabled"] = true,
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
						}, -- [6]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["RangeCheck"] = true,
							["Name"] = "Прерывание",
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
							["Name"] = "Усиление оберегов",
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
						{
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
					["Name"] = "Ven geance",
				}, -- [2]
				{
					["GUID"] = "TMW:group:1OYlXG7b8ZoD",
					["Name"] = "CDs",
					["Locked"] = true,
					["Scale"] = 1.5,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Icons"] = {
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
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Type"] = "cooldown",
							["Name"] = "Метаморфоза",
							["States"] = {
								{
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
							["Name"] = "Призрачный барьер; Демоническое насыщение",
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
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1OkzYOQI_XPO",
					["Columns"] = 1,
					["Scale"] = 1.5,
					["Name"] = "CC",
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Клинок скверны; Извержение скверны",
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
					},
					["Point"] = {
						["y"] = 170,
						["x"] = -100,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1Oeks7EQopHd",
					["Point"] = {
						["y"] = -170,
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Земляной шип",
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
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Пронизывающий ветер",
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
						}, -- [2]
						{
							["ManaCheck"] = true,
							["ShowTimer"] = true,
							["Name"] = "Свирепый выпад; Тотем ветряного порыва; Ливень",
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
						}, -- [3]
						{
							["ClockGCD"] = true,
							["ShowTimer"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "Ветра Рока",
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
					["LayoutDirection"] = 3,
					["Name"] = "Misc",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Enabled"] = false,
				}, -- [5]
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
							["ClockGCD"] = true,
							["OnlyMine"] = true,
							["Name"] = "Жар преисподней",
							["TimerBar_StartColor"] = "ff00ff00",
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
									["Alpha"] = 0.8,
								}, -- [1]
								{
									["Alpha"] = 0.2,
								}, -- [2]
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
				}, -- [6]
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
							["Name"] = "Поступь духа",
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
					["Enabled"] = false,
					["EnabledSpecs"] = {
						[262] = false,
						[264] = false,
					},
					["Columns"] = 1,
				}, -- [7]
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
							["Type"] = "buff",
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
				}, -- [8]
				{
					["Enabled"] = false,
					["Name"] = "Ele CDs",
					["GUID"] = "TMW:group:1Pj4IZZ1kFQO",
					["Scale"] = 1.5,
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
					["EnabledSpecs"] = {
						[263] = false,
						[264] = false,
					},
					["Point"] = {
						["y"] = -125,
						["x"] = -200,
					},
				}, -- [9]
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
				}, -- [10]
			},
			["NumGroups"] = 10,
			["TextureName"] = "Smooth",
		},
	},
}
