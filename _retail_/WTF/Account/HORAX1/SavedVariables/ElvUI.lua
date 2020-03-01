
ElvDB = {
	["profileKeys"] = {
		["Шаналотта - Азурегос"] = "Дефолтный",
		["Ригби - Вечная Песня"] = "Дефолтный",
		["Ньярли - Вечная Песня"] = "Дефолтный",
		["Шалкуар - Азурегос"] = "Дефолтный",
		["Мукуро - Вечная Песня"] = "Дефолтный",
		["Хвостур - Азурегос"] = "Дефолтный",
		["Лайчи - Азурегос"] = "Дефолтный",
		["Шемрок - Вечная Песня"] = "Дефолтный",
		["Инзу - Галакронд"] = "Дефолтный",
	},
	["gold"] = {
		["Азурегос"] = {
			["Хвостур"] = 1358935,
			["Лайчи"] = 3598217,
			["Шалкуар"] = 7032198,
		},
		["Вечная Песня"] = {
			["Мукуро"] = 8372939,
			["Шемрок"] = 194611878,
			["Ньярли"] = 12142078,
		},
		["Галакронд"] = {
			["Инзу"] = 67978818,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["unitframe"] = {
			["buffwatchBackup"] = {
				["DEATHKNIGHT"] = {
					[49016] = {
					},
				},
				["WARRIOR"] = {
					[114030] = {
					},
					[3411] = {
					},
					[114029] = {
					},
				},
				["SHAMAN"] = {
					[61295] = {
					},
					[51945] = {
					},
					[974] = {
					},
				},
				["MAGE"] = {
					[111264] = {
					},
				},
				["PRIEST"] = {
					[47788] = {
					},
					[17] = {
					},
					[41635] = {
					},
					[33206] = {
					},
					[6788] = {
					},
					[139] = {
					},
					[10060] = {
					},
					[123258] = {
					},
				},
				["PALADIN"] = {
					[53563] = {
					},
					[1022] = {
					},
					[1038] = {
					},
					[156322] = {
					},
					[6940] = {
					},
					[114039] = {
					},
					[148039] = {
					},
					[1044] = {
					},
				},
				["HUNTER"] = {
				},
				["PET"] = {
					[19615] = {
					},
					[136] = {
					},
				},
				["DRUID"] = {
					[774] = {
					},
					[8936] = {
					},
					[48438] = {
					},
					[33763] = {
					},
				},
				["MONK"] = {
					[119611] = {
					},
					[132120] = {
					},
					[116849] = {
					},
					[124081] = {
					},
				},
				["ROGUE"] = {
					[57934] = {
					},
				},
			},
			["ChannelTicks"] = {
				["Безумие"] = 3,
				["Пытка разума"] = 3,
				["Исповедь"] = 3,
			},
			["aurafilters"] = {
				["Blacklist"] = {
					["spells"] = {
						["Опутанный звездный поток"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Острый дзуки"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Ослабление силы"] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
		},
		["general"] = {
			["smallerWorldMap"] = false,
			["autoScale"] = false,
		},
		["uiScale"] = "0.64999997615814",
	},
	["profiles"] = {
		["Minimalistic"] = {
			["nameplate"] = {
				["debuffs"] = {
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["buffs"] = {
					["font"] = "Expressway",
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_BodyGuardMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-651,-586",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["consolidatedBuffs"] = {
					["font"] = "Expressway",
				},
				["font"] = "Expressway",
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["fontSize"] = 11,
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["bodyguard"] = {
						["enable"] = false,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["tapFontSize"] = 11,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
		},
		["SHAMAN"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,764",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,424",
			},
		},
		["Ригби - Вечная Песня"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentBOTTOMLEFT4424",
				["ShiftAB"] = "TOPLEFTElvUIParentBOTTOMLEFT41196",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_RaidMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4427",
				["ElvUF_RaidpetMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4736",
			},
		},
		["Азурегос"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1178",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
			},
		},
		["Шалкуар - Азурегос"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentBOTTOMLEFT4424",
				["ShiftAB"] = "TOPLEFTElvUIParentBOTTOMLEFT41196",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_RaidMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4427",
				["ElvUF_RaidpetMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4736",
			},
		},
		["Шемрок - Вечная Песня"] = {
			["currentTutorial"] = 2,
			["bossAuraFiltersConverted"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,424",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Ньярли - Вечная Песня"] = {
			["currentTutorial"] = 1,
			["bossAuraFiltersConverted"] = true,
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,335,943",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1178",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,335,403",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,335,635",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,335,631",
			},
		},
		["Дефолтный"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 14,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,285,230",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,551",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,212,768",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,768",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-285,200",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,211,763",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,285,200",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,506,74",
				["ElvUF_BodyGuardMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-182,283",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,221",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-286,239",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,286",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,482,531",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-373,267",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["font"] = "Friz Quadrata TT",
				["emotionIcons"] = false,
				["panelHeight"] = 250,
				["tabFont"] = "Friz Quadrata TT",
				["tabFontSize"] = 13,
				["panelWidth"] = 500,
			},
			["auras"] = {
				["font"] = "Friz Quadrata TT",
			},
			["unitframe"] = {
				["fontSize"] = 15,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.04,
						["g"] = 0.49,
						["r"] = 1,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["target"] = {
						["customTexts"] = {
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current]",
						},
					},
					["party"] = {
						["healPrediction"] = true,
						["showPlayer"] = false,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["growthDirection"] = "UP_LEFT",
					},
					["player"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:current]",
						},
					},
					["raid"] = {
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["font"] = "Friz Quadrata TT",
				["fontOutline"] = "OUTLINE",
				["macrotext"] = true,
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "tank",
			["general"] = {
				["fontSize"] = 14,
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["font"] = "Friz Quadrata TT",
				["topPanel"] = true,
			},
			["nameplates"] = {
				["fontSize"] = 12,
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["PLAYER"] = {
						["alwaysShow"] = true,
						["healthbar"] = {
							["text"] = {
								["format"] = "DEFICIT",
							},
						},
						["enable"] = true,
					},
				},
			},
			["bags"] = {
				["sortInverted"] = false,
			},
		},
		["Вечная Песня"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1178",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Шаналотта - Азурегос"] = "Шаналотта - Азурегос",
		["Шемрок - Вечная Песня"] = "Шемрок - Вечная Песня",
		["Ньярли - Вечная Песня"] = "Ньярли - Вечная Песня",
		["Ригби - Вечная Песня"] = "Ригби - Вечная Песня",
		["Вернись - Азурегос"] = "Вернись - Азурегос",
		["Шалкуар - Азурегос"] = "Шалкуар - Азурегос",
		["Хвостур - Азурегос"] = "Хвостур - Азурегос",
		["Лайчи - Азурегос"] = "Лайчи - Азурегос",
		["Мукуро - Вечная Песня"] = "Мукуро - Вечная Песня",
		["Инзу - Галакронд"] = "Инзу - Галакронд",
	},
	["profiles"] = {
		["Шаналотта - Азурегос"] = {
			["theme"] = "class",
			["general"] = {
				["dmgfont"] = "Arial Narrow",
				["namefont"] = "Arial Narrow",
			},
			["install_complete"] = "7.62",
		},
		["Шемрок - Вечная Песня"] = {
			["general"] = {
				["namefont"] = "Friz Quadrata TT",
				["chatBubbleFont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "10.08",
		},
		["Ньярли - Вечная Песня"] = {
			["install_complete"] = "7.62",
		},
		["Ригби - Вечная Песня"] = {
			["theme"] = "class",
			["install_complete"] = "8.11",
		},
		["Вернись - Азурегос"] = {
			["install_complete"] = "8.11",
		},
		["Шалкуар - Азурегос"] = {
			["install_complete"] = "7.62",
		},
		["Хвостур - Азурегос"] = {
			["theme"] = "class",
			["general"] = {
				["namefont"] = "Friz Quadrata TT",
				["replaceBlizzFonts"] = false,
			},
			["install_complete"] = "7.61",
		},
		["Лайчи - Азурегос"] = {
			["theme"] = "class",
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "7.62",
		},
		["Мукуро - Вечная Песня"] = {
			["install_complete"] = "7.62",
		},
		["Инзу - Галакронд"] = {
			["theme"] = "class",
			["install_complete"] = "7.62",
		},
	},
}
