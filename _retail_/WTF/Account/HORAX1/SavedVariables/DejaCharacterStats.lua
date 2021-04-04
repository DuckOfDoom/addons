
DejaCharacterStatsDB = {
	["gdbdefaults"] = {
		["dejacharacterstatsHideAlsoIfNotExactlyZeroChecked"] = {
			["SetChecked"] = true,
		},
		["dejacharacterstatsHideAtZeroChecked"] = {
			["SetChecked"] = true,
		},
		["dejacharacterstatsShowItemRepairChecked"] = {
			["ShowItemRepairSetChecked"] = false,
		},
		["dejacharacterstatsShowDecimalsChecked"] = {
			["SetChecked"] = true,
		},
		["dejacharacterstatsShowItemLevelChecked"] = {
			["ShowItemLevelSetChecked"] = true,
		},
		["dejacharacterstatsHideatZeroChecked"] = {
			["SetChecked"] = true,
		},
		["dejacharacterstatsExpandButtonChecked"] = {
			["ExpandButtonSetChecked"] = true,
		},
		["dejacharacterstatsShowAverageRepairChecked"] = {
			["ShowAverageRepairSetChecked"] = false,
		},
		["dejacharacterstatsDCSZeroChecked"] = {
			["SetChecked"] = false,
		},
		["dejacharacterstatsItemLevelChecked"] = {
			["ItemLevelTwoDecimalsSetChecked"] = true,
			["ItemLevelEQ_AV_SetChecked"] = true,
			["ItemLevelDecimalsSetChecked"] = false,
			["ItemLevelClassColorSetChecked"] = true,
		},
		["dejacharacterstatsLoginCounter"] = {
			["Count"] = 0,
		},
		["dejacharacterstatsShowClassicChecked"] = {
			["SetChecked"] = true,
		},
		["DCS_TableRelevantStatsChecked"] = {
			["RelevantStatsSetChecked"] = false,
		},
		["dejacharacterstatsShowDuraChecked"] = {
			["ShowDuraSetChecked"] = false,
		},
		["dejacharacterstatsSimpleItemColorChecked"] = {
			["SimpleItemColorChecked"] = false,
			["DarkerItemColorChecked"] = false,
		},
		["dejacharacterstatsShowDuraTextureChecked"] = {
			["ShowDuraTextureSetChecked"] = true,
		},
		["dejacharacterstatsHideMasteryChecked"] = {
			["SetChecked"] = true,
		},
		["dejacharacterstatsClassBackgroundChecked"] = {
			["ClassBackgroundChecked"] = true,
		},
		["dejacharacterstatsConfigButtonChecked"] = {
			["ConfigButtonSetChecked"] = true,
		},
		["dejacharacterstatsExpandChecked"] = {
			["ExpandSetChecked"] = true,
		},
		["dejacharacterstatsAlternateInfoPlacement"] = {
			["AlternateInfoPlacementChecked"] = false,
		},
		["dejacharacterstatsScrollbarChecked"] = {
			["ScrollbarSetChecked"] = false,
		},
	},
}
DCS_ClassSpecDB = {
	["Thalassa:Lightning's Blade:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "OffenseCategory",
		}, -- [15]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [16]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [17]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [18]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [19]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [22]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [23]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [24]
		{
			["statKey"] = "GCD",
		}, -- [25]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [26]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "DefenseCategory",
		}, -- [33]
		{
			["statKey"] = "ARMOR",
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = false,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [38]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Thalassa:Lightning's Blade:1",
	},
	["Шемрок:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "OffenseCategory",
		}, -- [44]
		{
			["statKey"] = "GeneralCategory",
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [57]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шемрок:Вечная Песня:3",
	},
	["Шемрок:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шемрок:Вечная Песня:1",
	},
	["Ozric:Lightbringer:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ozric:Lightbringer:2",
	},
	["Ozric:Lightbringer:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ozric:Lightbringer:3",
	},
	["Ozric:Runetotem:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = false,
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ozric:Runetotem:1",
	},
	["Кассис:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Кассис:Вечная Песня:3",
	},
	["Селмер:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		["uniqueKey"] = "Селмер:Вечная Песня:1",
	},
	["Инзу:Галакронд:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [51]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Инзу:Галакронд:1",
	},
	["Virran:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Virran:Ravencrest:5",
	},
	["Самскар:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
		}, -- [47]
		["uniqueKey"] = "Самскар:Вечная Песня:3",
	},
	["Erwyn:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Erwyn:Ravencrest:3",
	},
	["Ozric:Stormreaver:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Ozric:Stormreaver:3",
	},
	["Ренфолд:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "OffenseCategory",
		}, -- [19]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [20]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [21]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [22]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [23]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [26]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [27]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [28]
		{
			["statKey"] = "GCD",
		}, -- [29]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [30]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "DefenseCategory",
		}, -- [37]
		{
			["statKey"] = "ARMOR",
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ренфолд:Вечная Песня:3",
	},
	["Шалкуар:Азурегос:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		["uniqueKey"] = "Шалкуар:Азурегос:1",
	},
	["Барличиз:Гордунни:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Барличиз:Гордунни:1",
	},
	["Ranvyr:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Ranvyr:Ravencrest:2",
	},
	["Ravnir:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ravnir:Ravencrest:1",
	},
	["Erwyn:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Erwyn:Ravencrest:5",
	},
	["Инзу:Галакронд:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		["uniqueKey"] = "Инзу:Галакронд:2",
	},
	["Ozric:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ozric:Ravencrest:1",
	},
	["Ayreon:Lightning's Blade:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ayreon:Lightning's Blade:3",
	},
	["Мукуро:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [43]
		{
			["statKey"] = "RatingCategory",
		}, -- [44]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "OffenseCategory",
		}, -- [46]
		{
			["statKey"] = "GeneralCategory",
		}, -- [47]
		{
			["statKey"] = "DefenseCategory",
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Мукуро:Вечная Песня:1",
	},
	["Sherinian:Doomhammer:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		["uniqueKey"] = "Sherinian:Doomhammer:1",
	},
	["Ozric:Runetotem:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ozric:Runetotem:3",
	},
	["Ozric:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Ozric:Ravencrest:3",
	},
	["Ardenis:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ardenis:Ravencrest:1",
	},
	["Theonard:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Theonard:Ravencrest:2",
	},
	["Шанами:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [51]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шанами:Вечная Песня:2",
	},
	["Ньярли:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Ньярли:Вечная Песня:2",
	},
	["Merlwyb:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Merlwyb:Ravencrest:1",
	},
	["Ingward:Lightning's Blade:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Ingward:Lightning's Blade:3",
	},
	["Мукуро:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [16]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [17]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [18]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [19]
		{
			["statKey"] = "GCD",
		}, -- [20]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [21]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [22]
		{
			["statKey"] = "MOVESPEED",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Мукуро:Вечная Песня:3",
	},
	["Nyarly:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Nyarly:Ravencrest:1",
	},
	["Erwyn:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Erwyn:Ravencrest:1",
	},
	["Ньярли:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [43]
		{
			["statKey"] = "RatingCategory",
		}, -- [44]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "OffenseCategory",
		}, -- [47]
		{
			["statKey"] = "DefenseCategory",
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ньярли:Вечная Песня:1",
	},
	["Шанами:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [51]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шанами:Вечная Песня:3",
	},
	["Nyarly:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Nyarly:Ravencrest:3",
	},
	["Nyarly:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Nyarly:Ravencrest:2",
	},
	["Аринэр:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		["uniqueKey"] = "Аринэр:Вечная Песня:1",
	},
	["Ozric:Stormscale:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ozric:Stormscale:3",
	},
	["Лайчи:Азурегос:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [43]
		{
			["statKey"] = "RatingCategory",
		}, -- [44]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "OffenseCategory",
		}, -- [46]
		{
			["statKey"] = "GeneralCategory",
		}, -- [47]
		{
			["statKey"] = "DefenseCategory",
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		["uniqueKey"] = "Лайчи:Азурегос:2",
	},
	["Рэтью:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Рэтью:Вечная Песня:2",
	},
	["Thalassa:Lightning's Blade:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Thalassa:Lightning's Blade:3",
	},
	["Meowrice:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Meowrice:Ravencrest:2",
	},
	["Nyarlond:Stormscale:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Nyarlond:Stormscale:5",
	},
	["Theonard:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Theonard:Ravencrest:1",
	},
	["Ренфолд:Вечная Песня:4"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ренфолд:Вечная Песня:4",
	},
	["Ardenis:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ardenis:Ravencrest:3",
	},
	["Кассис:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Кассис:Вечная Песня:1",
	},
	["Meowrice:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Meowrice:Ravencrest:1",
	},
	["Ranvyr:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ranvyr:Ravencrest:1",
	},
	["Эйреон:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
		}, -- [47]
		["uniqueKey"] = "Эйреон:Вечная Песня:3",
	},
	["Лайчи:Азурегос:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		["uniqueKey"] = "Лайчи:Азурегос:1",
	},
	["Рэтью:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Рэтью:Вечная Песня:3",
	},
	["Meowrice:Ravencrest:4"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Meowrice:Ravencrest:4",
	},
	["Viren:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Viren:Ravencrest:5",
	},
	["Zayhad:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Zayhad:Ravencrest:5",
	},
	["Zelios:Stormscale:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Zelios:Stormscale:1",
	},
	["Zelios:Stormscale:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Zelios:Stormscale:3",
	},
	["Ranvir:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ranvir:Ravencrest:2",
	},
	["Zayhad:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Zayhad:Ravencrest:3",
	},
	["Ozric:Sunstrider:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Ozric:Sunstrider:2",
	},
	["Meowrice:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["hidden"] = false,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Meowrice:Ravencrest:3",
	},
	["Ranvir:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ranvir:Ravencrest:5",
	},
	["Хвостур:Азурегос:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		["uniqueKey"] = "Хвостур:Азурегос:1",
	},
	["Merlwyb:Ravencrest:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Merlwyb:Ravencrest:5",
	},
	["Шалкуар:Азурегос:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		["uniqueKey"] = "Шалкуар:Азурегос:3",
	},
	["Ayreon:Lightning's Blade:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = false,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ayreon:Lightning's Blade:1",
	},
	["Ozric:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Ozric:Ravencrest:2",
	},
	["Nyquist:Stormscale:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Nyquist:Stormscale:5",
	},
	["Ozric:Sunstrider:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Ozric:Sunstrider:3",
	},
	["Ренфолд:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ренфолд:Вечная Песня:1",
	},
	["Ayreon:Lightning's Blade:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Ayreon:Lightning's Blade:2",
	},
	["Ingward:Lightning's Blade:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ingward:Lightning's Blade:2",
	},
	["Ozric:Bladefist:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Ozric:Bladefist:3",
	},
	["Тайхэй:Азурегос:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "OffenseCategory",
		}, -- [15]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [16]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [17]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [18]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [19]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [22]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [24]
		{
			["statKey"] = "GCD",
		}, -- [25]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [26]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "DefenseCategory",
		}, -- [33]
		{
			["statKey"] = "ARMOR",
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
		}, -- [47]
		["uniqueKey"] = "Тайхэй:Азурегос:2",
	},
	["Ravnir:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ravnir:Ravencrest:2",
	},
	["Ренфолд:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ренфолд:Вечная Песня:2",
	},
	["Шалкуар:Азурегос:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		["uniqueKey"] = "Шалкуар:Азурегос:2",
	},
	["Хвостур:Азурегос:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [57]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Хвостур:Азурегос:2",
	},
	["Ньярли:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [43]
		{
			["statKey"] = "RatingCategory",
		}, -- [44]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [48]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "OffenseCategory",
		}, -- [50]
		{
			["statKey"] = "GeneralCategory",
		}, -- [51]
		{
			["statKey"] = "DefenseCategory",
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Ньярли:Вечная Песня:3",
	},
	["Шемрок:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
			["hidden"] = false,
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
			["hidden"] = false,
		}, -- [2]
		{
			["statKey"] = "HEALTH",
			["hidden"] = false,
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
			["hidden"] = false,
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
			["hidden"] = false,
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = false,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
			["hidden"] = false,
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
			["hidden"] = false,
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
			["hidden"] = false,
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
			["hidden"] = false,
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = false,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = false,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = false,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
			["hidden"] = false,
		}, -- [14]
		{
			["statKey"] = "ARMOR",
			["hidden"] = false,
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
			["hidden"] = false,
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = false,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = false,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = false,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = false,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = false,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = false,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
			["hidden"] = false,
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = false,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
			["hidden"] = false,
		}, -- [25]
		{
			["statKey"] = "GCD",
			["hidden"] = false,
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
			["hidden"] = false,
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = false,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = false,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = false,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шемрок:Вечная Песня:2",
	},
	["Кассис:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Кассис:Вечная Песня:2",
	},
	["Zelios:Stormscale:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = false,
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Zelios:Stormscale:2",
	},
	["Селмер:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Селмер:Вечная Песня:2",
	},
	["Ranvyr:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Ranvyr:Ravencrest:3",
	},
	["Ozric:Sunstrider:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		["uniqueKey"] = "Ozric:Sunstrider:1",
	},
	["Ozric:Lightbringer:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ozric:Lightbringer:1",
	},
	["Лайчи:Азурегос:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		["uniqueKey"] = "Лайчи:Азурегос:3",
	},
	["Erwyn:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Erwyn:Ravencrest:2",
	},
	["Sherinian:Doomhammer:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		["uniqueKey"] = "Sherinian:Doomhammer:2",
	},
	["Ravnir:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Ravnir:Ravencrest:3",
	},
	["Ozric:Stormscale:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "OffenseCategory",
		}, -- [27]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [28]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [29]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [30]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [31]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [34]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [36]
		{
			["statKey"] = "GCD",
		}, -- [37]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [39]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "DefenseCategory",
		}, -- [45]
		{
			["statKey"] = "ARMOR",
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = false,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [50]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ozric:Stormscale:1",
	},
	["Рэтью:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		["uniqueKey"] = "Рэтью:Вечная Песня:1",
	},
	["Thalassa:Lightning's Blade:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Thalassa:Lightning's Blade:2",
	},
	["Эйреон:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [51]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Эйреон:Вечная Песня:1",
	},
	["Zelios:Stormscale:5"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Zelios:Stormscale:5",
	},
	["Ranvir:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ranvir:Ravencrest:1",
	},
	["Самскар:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
		}, -- [47]
		["uniqueKey"] = "Самскар:Вечная Песня:1",
	},
	["Инзу:Галакронд:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "RatingCategory",
		}, -- [43]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "OffenseCategory",
		}, -- [45]
		{
			["statKey"] = "GeneralCategory",
		}, -- [46]
		{
			["statKey"] = "DefenseCategory",
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		["uniqueKey"] = "Инзу:Галакронд:3",
	},
	["Эйреон:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "OffenseCategory",
		}, -- [15]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [16]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [17]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [18]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [19]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [22]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [24]
		{
			["statKey"] = "GCD",
		}, -- [25]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [26]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "DefenseCategory",
		}, -- [33]
		{
			["statKey"] = "ARMOR",
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Эйреон:Вечная Песня:2",
	},
	["Theonard:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Theonard:Ravencrest:3",
	},
	["Шанами:Вечная Песня:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [48]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [50]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [51]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [52]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Шанами:Вечная Песня:1",
	},
	["Sasdgqwfc:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [61]
		["uniqueKey"] = "Sasdgqwfc:Ravencrest:2",
	},
	["Хвостур:Азурегос:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		["uniqueKey"] = "Хвостур:Азурегос:3",
	},
	["Ardenis:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Ardenis:Ravencrest:2",
	},
	["Мукуро:Вечная Песня:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "AttributesCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ARMOR",
		}, -- [6]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [7]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [8]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "STAMINA",
		}, -- [10]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [11]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [12]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [13]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [14]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [17]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [19]
		{
			["statKey"] = "MOVESPEED",
		}, -- [20]
		{
			["statKey"] = "GCD",
		}, -- [21]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [22]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [23]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [24]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [25]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [26]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [27]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [43]
		{
			["statKey"] = "RatingCategory",
		}, -- [44]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
		}, -- [46]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "CorruptionCategory",
		}, -- [48]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "OffenseCategory",
		}, -- [50]
		{
			["statKey"] = "GeneralCategory",
		}, -- [51]
		{
			["statKey"] = "DefenseCategory",
		}, -- [52]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Мукуро:Вечная Песня:2",
	},
	["Zayhad:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hideAt"] = 0,
			["hidden"] = true,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Zayhad:Ravencrest:2",
	},
	["Ozric:Stormscale:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [53]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
		}, -- [54]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [55]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
		}, -- [56]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
		}, -- [57]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
		}, -- [58]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [59]
		{
			["statKey"] = "HonorCategory",
		}, -- [60]
		{
			["statKey"] = "ConquestCategory",
		}, -- [61]
		["uniqueKey"] = "Ozric:Stormscale:2",
	},
	["Селмер:Вечная Песня:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "GeneralCategory",
		}, -- [6]
		{
			["statKey"] = "HEALTH",
		}, -- [7]
		{
			["statKey"] = "DCS_POWER",
		}, -- [8]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [9]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "MOVESPEED",
		}, -- [11]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [12]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [13]
		{
			["statKey"] = "AttributesCategory",
		}, -- [14]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [15]
		{
			["statKey"] = "AGILITY",
		}, -- [16]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "STAMINA",
		}, -- [18]
		{
			["statKey"] = "ARMOR",
		}, -- [19]
		{
			["statKey"] = "OffenseCategory",
		}, -- [20]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [21]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [22]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [23]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [24]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [26]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [27]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [28]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [29]
		{
			["statKey"] = "GCD",
		}, -- [30]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [31]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [34]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [35]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [36]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [37]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [49]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		["uniqueKey"] = "Селмер:Вечная Песня:3",
	},
	["Merlwyb:Ravencrest:3"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [61]
		["uniqueKey"] = "Merlwyb:Ravencrest:3",
	},
	["Мириэл:Пиратская Бухта:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["hidden"] = true,
			["hideAt"] = 0,
			["roles"] = {
				"TANK", -- [1]
			},
		}, -- [49]
		["uniqueKey"] = "Мириэл:Пиратская Бухта:1",
	},
	["Zayhad:Ravencrest:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
			["hidden"] = true,
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
			["hidden"] = true,
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
			["hidden"] = true,
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
			["hidden"] = true,
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Zayhad:Ravencrest:1",
	},
	["Ingward:Lightning's Blade:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		["uniqueKey"] = "Ingward:Lightning's Blade:1",
	},
	["Oldfield:Doomhammer:1"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "GeneralCategory",
		}, -- [2]
		{
			["statKey"] = "HEALTH",
		}, -- [3]
		{
			["statKey"] = "DCS_POWER",
		}, -- [4]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [5]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [6]
		{
			["statKey"] = "MOVESPEED",
		}, -- [7]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [8]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [9]
		{
			["statKey"] = "AttributesCategory",
		}, -- [10]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "AGILITY",
		}, -- [12]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "STAMINA",
		}, -- [14]
		{
			["statKey"] = "ARMOR",
		}, -- [15]
		{
			["statKey"] = "OffenseCategory",
		}, -- [16]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [17]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [18]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [19]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [20]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [21]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [22]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [23]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [24]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [25]
		{
			["statKey"] = "GCD",
		}, -- [26]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [27]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [28]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [29]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [30]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [31]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [32]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [33]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [35]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "BLOCK",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [37]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [38]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [39]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [40]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [41]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [42]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [43]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [44]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [45]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		["uniqueKey"] = "Oldfield:Doomhammer:1",
	},
	["Merlwyb:Ravencrest:2"] = {
		{
			["statKey"] = "ItemLevelFrame",
		}, -- [1]
		{
			["statKey"] = "CorruptionCategory",
			["hidden"] = true,
		}, -- [2]
		{
			["statKey"] = "CR_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [3]
		{
			["statKey"] = "CR_CORRUPTION_RESISTANCE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [4]
		{
			["statKey"] = "CR_TOTAL_CORRUPTION",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [5]
		{
			["statKey"] = "HonorCategory",
		}, -- [6]
		{
			["statKey"] = "HONOR_PROGRESS",
			["hideAt"] = 0,
		}, -- [7]
		{
			["statKey"] = "HONOR_LEVEL",
			["hideAt"] = 0,
		}, -- [8]
		{
			["statKey"] = "ConquestCategory",
			["hidden"] = true,
		}, -- [9]
		{
			["statKey"] = "RATING_2V2",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [10]
		{
			["statKey"] = "RATING_3V3",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [11]
		{
			["statKey"] = "RATING_RBG",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [12]
		{
			["statKey"] = "CONQUEST_PROGRESS",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [13]
		{
			["statKey"] = "GeneralCategory",
		}, -- [14]
		{
			["statKey"] = "HEALTH",
		}, -- [15]
		{
			["statKey"] = "DCS_POWER",
		}, -- [16]
		{
			["statKey"] = "DCS_ALTERNATEMANA",
		}, -- [17]
		{
			["statKey"] = "ITEMLEVEL",
			["hidden"] = true,
		}, -- [18]
		{
			["statKey"] = "MOVESPEED",
		}, -- [19]
		{
			["statKey"] = "DURABILITY_STAT",
		}, -- [20]
		{
			["statKey"] = "REPAIR_COST",
		}, -- [21]
		{
			["statKey"] = "AttributesCategory",
		}, -- [22]
		{
			["statKey"] = "STRENGTH",
			["hidden"] = true,
		}, -- [23]
		{
			["statKey"] = "AGILITY",
		}, -- [24]
		{
			["statKey"] = "INTELLECT",
			["hidden"] = true,
		}, -- [25]
		{
			["statKey"] = "STAMINA",
		}, -- [26]
		{
			["statKey"] = "ARMOR",
		}, -- [27]
		{
			["statKey"] = "OffenseCategory",
		}, -- [28]
		{
			["statKey"] = "ATTACK_DAMAGE",
		}, -- [29]
		{
			["statKey"] = "ATTACK_AP",
		}, -- [30]
		{
			["statKey"] = "DCS_ATTACK_ATTACKSPEED",
		}, -- [31]
		{
			["statKey"] = "WEAPON_DPS",
		}, -- [32]
		{
			["statKey"] = "SPELLPOWER",
			["hidden"] = true,
		}, -- [33]
		{
			["statKey"] = "MANAREGEN",
			["hidden"] = true,
		}, -- [34]
		{
			["statKey"] = "ENERGY_REGEN",
		}, -- [35]
		{
			["statKey"] = "DCS_RUNEREGEN",
			["hidden"] = true,
		}, -- [36]
		{
			["statKey"] = "FOCUS_REGEN",
		}, -- [37]
		{
			["statKey"] = "GCD",
		}, -- [38]
		{
			["statKey"] = "EnhancementsCategory",
		}, -- [39]
		{
			["statKey"] = "CRITCHANCE",
			["hideAt"] = 0,
		}, -- [40]
		{
			["statKey"] = "HASTE",
			["hideAt"] = 0,
		}, -- [41]
		{
			["statKey"] = "VERSATILITY",
			["hideAt"] = 0,
		}, -- [42]
		{
			["statKey"] = "MASTERY",
			["hideAt"] = 0,
		}, -- [43]
		{
			["statKey"] = "LIFESTEAL",
			["hideAt"] = 0,
		}, -- [44]
		{
			["statKey"] = "AVOIDANCE",
			["hideAt"] = 0,
		}, -- [45]
		{
			["statKey"] = "DefenseCategory",
			["hidden"] = true,
		}, -- [46]
		{
			["statKey"] = "DODGE",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [47]
		{
			["statKey"] = "PARRY",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [48]
		{
			["statKey"] = "BLOCK",
			["hidden"] = true,
			["hideAt"] = 0,
		}, -- [49]
		{
			["statKey"] = "RatingCategory",
			["hidden"] = true,
		}, -- [50]
		{
			["statKey"] = "CRITCHANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [51]
		{
			["statKey"] = "HASTE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [52]
		{
			["statKey"] = "VERSATILITY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [53]
		{
			["statKey"] = "MASTERY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [54]
		{
			["statKey"] = "LIFESTEAL_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [55]
		{
			["statKey"] = "AVOIDANCE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [56]
		{
			["statKey"] = "DODGE_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [57]
		{
			["statKey"] = "PARRY_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [58]
		{
			["statKey"] = "SPEED_RATING",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [59]
		{
			["statKey"] = "SPEED",
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [60]
		{
			["statKey"] = "STAGGER",
			["roles"] = {
				"TANK", -- [1]
			},
			["hideAt"] = 0,
			["hidden"] = true,
		}, -- [61]
		["uniqueKey"] = "Merlwyb:Ravencrest:2",
	},
}
