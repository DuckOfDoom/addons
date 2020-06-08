
OmniCCDB = {
	["global"] = {
		["addonVersion"] = "8.3.5",
		["dbVersion"] = 5,
	},
	["profileKeys"] = {
		["Ozric - Bladefist"] = "Default",
		["Шанами - Вечная Песня"] = "По умолчанию",
		["Барличиз - Гордунни"] = "По умолчанию",
		["Шемрок - Вечная Песня"] = "По умолчанию",
		["Селмер - Вечная Песня"] = "По умолчанию",
		["Ozric - Stormscale"] = "Default",
		["Кассис - Вечная Песня"] = "По умолчанию",
		["Мукуро - Вечная Песня"] = "По умолчанию",
		["Хвостур - Азурегос"] = "По умолчанию",
		["Лайчи - Азурегос"] = "По умолчанию",
		["Инзу - Галакронд"] = "По умолчанию",
		["Эйреон - Вечная Песня"] = "По умолчанию",
		["Ozric - Lightbringer"] = "Default",
		["Ozric - Sunstrider"] = "Default",
		["Thalassa - Lightning's Blade"] = "Default",
		["Рэтью - Вечная Песня"] = "По умолчанию",
		["Ренфолд - Вечная Песня"] = "По умолчанию",
		["Ньярли - Вечная Песня"] = "По умолчанию",
		["Шалкуар - Азурегос"] = "По умолчанию",
		["Аринэр - Вечная Песня"] = "По умолчанию",
		["Ozric - Stormreaver"] = "Default",
		["Ingward - Lightning's Blade"] = "Default",
	},
	["profiles"] = {
		["По умолчанию"] = {
			["themes"] = {
				["По умолчанию"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
					["spiralOpacity"] = 1.00999997742474,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["minutes"] = {
						},
						["soon"] = {
						},
					},
				},
			},
			["rules"] = {
				{
					["id"] = "Plater Nameplates Rule",
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["theme"] = "Plater Nameplates Theme",
					["priority"] = 1,
				}, -- [1]
			},
		},
		["Default"] = {
			["rules"] = {
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 1,
					["theme"] = "Plater Nameplates Theme",
				}, -- [1]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = {
	["groups"] = {
	},
	["version"] = "8.2.5",
	["groupSettings"] = {
		["base"] = {
			["minDuration"] = 2,
			["styles"] = {
				["seconds"] = {
				},
				["minutes"] = {
				},
				["soon"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["mmSSDuration"] = 0,
			["spiralOpacity"] = 1.00999997742474,
		},
	},
}
