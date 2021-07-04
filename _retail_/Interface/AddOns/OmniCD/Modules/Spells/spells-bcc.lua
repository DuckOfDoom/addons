-- $ comments stripped

local E, L, C = select(2, ...):unpack()

if not E.isBCC then return end

E.spell_db = {
	["DRUID"] = {
		{ spellID = 16979,  duration = 15,  type = "interrupt", spec = true },
		{ spellID = 5211,   duration = 60,  type = "cc"         },
		{ spellID = 22812,  duration = 60,  type = "defensive"  },
		{ spellID = 22842,  duration = 180, type = "defensive"  },
		{ spellID = 16689,  duration = 60,  type = "defensive", spec = true },
		{ spellID = 18562,  duration = 15,  type = "defensive", spec = true },
		{ spellID = 740,    duration = 600, type = "raidDefensive"  },
		{ spellID = 16914,  duration = 60,  type = "offensive"  },
		{ spellID = 33878,  duration = 6,   type = "offensive"  },
		{ spellID = 5209,   duration = 600, type = "other"      },
		{ spellID = 8998,   duration = 10,  type = "other"      },
		{ spellID = 1850,   duration = 300, type = "other"      },
		{ spellID = 5229,   duration = 60,  type = "other"      },
		{ spellID = 16857,  duration = 6,   type = "other",     spec = true },
		{ spellID = 33831,  duration = 180, type = "other",     spec = true },
		{ spellID = 6795,   duration = 10,  type = "other"      },
		{ spellID = 29166,  duration = 360, type = "other"      },
		{ spellID = 17116,  duration = 180, type = "other",     spec = true },
		{ spellID = 5215,   duration = 10,  type = "other"      },
		{ spellID = 20484,  duration = 1200,    type = "other"  },
	},
	["HUNTER"] = {
		{ spellID = 19801,  duration = 20,  type = "dispel"     },
		{ spellID = 1499,   duration = 30,  type = "cc"         },
		{ spellID = 19577,  duration = 60,  type = "cc",        spec = true },
		{ spellID = 1513,   duration = 30,  type = "cc"         },
		{ spellID = 19503,  duration = 30,  type = "cc",        spec = true },
		{ spellID = 19386,  duration = 120, type = "cc",        spec = true },
		{ spellID = 34490,  duration = 20,  type = "disarm",    spec = true },
		{ spellID = 19263,  duration = 300, type = "defensive", spec = true },
		{ spellID = 5384,   duration = 30,  type = "defensive"  },
		{ spellID = 23989,  duration = 300, type = "defensive", spec = true },
		{ spellID = 19434,  duration = 6,   type = "offensive", spec = true },
		{ spellID = 3044,   duration = 6,   type = "offensive"  },
		{ spellID = 19574,  duration = 120, type = "offensive", spec = true },
		{ spellID = 19306,  duration = 5,   type = "offensive", spec = true },
		{ spellID = 13813,  duration = 30,  type = "offensive"  },
		{ spellID = 13795,  duration = 30,  type = "offensive"  },
		{ spellID = 34026,  duration = 5,   type = "offensive"  },
		{ spellID = 1495,   duration = 5,   type = "offensive"  },
		{ spellID = 2643,   duration = 10,  type = "offensive"  },
		{ spellID = 3045,   duration = 300, type = "offensive"  },
		{ spellID = 2973,   duration = 6,   type = "offensive"  },
		{ spellID = 34600,  duration = 30,  type = "offensive"  },
		{ spellID = 1510,   duration = 60,  type = "offensive"  },
		{ spellID = 5116,   duration = 12,  type = "other"      },
		{ spellID = 781,    duration = 5,   type = "other"      },
		{ spellID = 20736,  duration = 8,   type = "other"      },
		{ spellID = 1543,   duration = 20,  type = "other"      },
		{ spellID = 13809,  duration = 30,  type = "other"      },
		{ spellID = 34477,  duration = 120, type = "other"      },
		{ spellID = 3034,   duration = 15,  type = "other"      },















	},
	["MAGE"] = {
		{ spellID = 2139,   duration = 24,  type = "interrupt"  },
		{ spellID = 31661,  duration = 20,  type = "cc",        spec = true },
		{ spellID = 122,    duration = 25,  type = "disarm"     },
		{ spellID = 45438,  duration = 300, type = "immunity"   },
		{ spellID = 11958,  duration = 480, type = "defensive", spec = true },
		{ spellID = 543,    duration = 30,  type = "defensive"  },
		{ spellID = 6143,   duration = 30,  type = "defensive"  },
		{ spellID = 11426,  duration = 30,  type = "defensive", spec = true },
		{ spellID = 66,     duration = 300, type = "defensive"  },
		{ spellID = 12042,  duration = 180, type = "offensive", spec = true },
		{ spellID = 11113,  duration = 30,  type = "offensive", spec = true },
		{ spellID = 11129,  duration = 180, type = "offensive", spec = true },
		{ spellID = 2136,   duration = 8,   type = "offensive"  },
		{ spellID = 12472,  duration = 180, type = "offensive", spec = true },
		{ spellID = 12043,  duration = 180, type = "offensive", spec = true },
		{ spellID = 31687,  duration = 180, type = "offensive", spec = true },
		{ spellID = 1953,   duration = 15,  type = "other"      },
		{ spellID = 120,    duration = 10,  type = "other"      },
		{ spellID = 12051,  duration = 480, type = "other"      },
		{ spellID = 43987,  duration = 300, type = "other"      },
	},
	["PALADIN"] = {
		{ spellID = 853,    duration = 60,  type = "cc"         },
		{ spellID = 20066,  duration = 30,  type = "cc",        spec = true },
		{ spellID = 10326,  duration = 30,  type = "cc"         },
		{ spellID = 2878,   duration = 30,  type = "cc"         },
		{ spellID = 498,    duration = 300, type = "immunity"   },
		{ spellID = 642,    duration = 300, type = "immunity"   },
		{ spellID = 1022,   duration = 300, type = "externalDefensive"  },
		{ spellID = 6940,   duration = 30,  type = "externalDefensive"  },
		{ spellID = 19752,  duration = 3600,    type = "externalDefensive"  },
		{ spellID = 20216,  duration = 120, type = "defensive", spec = true },
		{ spellID = 20925,  duration = 10,  type = "defensive", spec = true },
		{ spellID = 633,    duration = 3600,type = "defensive"  },
		{ spellID = 31935,  duration = 30,  type = "offensive", spec = true },
		{ spellID = 31884,  duration = 180, type = "offensive"  },
		{ spellID = 26573,  duration = 8,   type = "offensive"  },
		{ spellID = 35395,  duration = 6,   type = "offensive", spec = true },
		{ spellID = 879,    duration = 15,  type = "offensive"  },
		{ spellID = 24275,  duration = 6,   type = "offensive"  },
		{ spellID = 20473,  duration = 15,  type = "offensive", spec = true },
		{ spellID = 2812,   duration = 60,  type = "offensive"  },
		{ spellID = 20271,  duration = 10,  type = "offensive"  },
		{ spellID = 1044,   duration = 25,  type = "other"      },
		{ spellID = 31842,  duration = 180, type = "other",     spec = true },
		{ spellID = 31789,  duration = 15,  type = "other"      },
	},

	["PRIEST"] = {
		{ spellID = 8122,   duration = 30,  type = "cc"         },
		{ spellID = 44041,  duration = 30,  type = "disarm",    spec = {3,11}   },
		{ spellID = 15487,  duration = 45,  type = "disarm",    spec = true },
		{ spellID = 33206,  duration = 120, type = "externalDefensive", spec = true },
		{ spellID = 13908,  duration = 600, type = "defensive", spec = {1,3}    },
		{ spellID = 2944,   duration = 180, type = "defensive", spec = {5}  },
		{ spellID = 2651,   duration = 180, type = "defensive", spec = {4}  },
		{ spellID = 13896,  duration = 180, type = "defensive", spec = {1}  },
		{ spellID = 724,    duration = 360, type = "defensive", spec = true },
		{ spellID = 17,     duration = 4,   type = "defensive"  },
		{ spellID = 33076,  duration = 10,  type = "defensive"  },
		{ spellID = 15286,  duration = 10,  type = "defensive", spec = true },
		{ spellID = 14751,  duration = 180, type = "offensive", spec = true },
		{ spellID = 8092,   duration = 8,   type = "offensive"  },
		{ spellID = 10060,  duration = 180, type = "offensive", spec = true },
		{ spellID = 32379,  duration = 12,  type = "offensive"  },
		{ spellID = 34433,  duration = 300, type = "offensive"  },
		{ spellID = 15473,  duration = 90,  type = "offensive", spec = true },
		{ spellID = 10797,  duration = 30,  type = "offensive", spec = {4}  },
		{ spellID = 6346,   duration = 180, type = "counterCC"  },
		{ spellID = 32676,  duration = 120, type = "other",     spec = {10} },
		{ spellID = 586,    duration = 30,  type = "other"      },
		{ spellID = 32548,  duration = 300, type = "other",     spec = {11} },
	},
	["ROGUE"] = {
		{ spellID = 1766,   duration = 10,  type = "interrupt"  },
		{ spellID = 2094,   duration = 180, type = "cc"         },
		{ spellID = 1776,   duration = 10,  type = "cc"         },
		{ spellID = 408,    duration = 20,  type = "cc"         },
		{ spellID = 14251,  duration = 6,   type = "disarm",    spec = true },
		{ spellID = 31224,  duration = 60,  type = "defensive"  },
		{ spellID = 5277,   duration = 300, type = "defensive"  },
		{ spellID = 14185,  duration = 600, type = "defensive", spec = true },
		{ spellID = 1856,   duration = 300, type = "defensive"  },
		{ spellID = 13750,  duration = 300, type = "offensive", spec = true },
		{ spellID = 13877,  duration = 120, type = "offensive", spec = true },
		{ spellID = 14177,  duration = 180, type = "offensive", spec = true },
		{ spellID = 14278,  duration = 20,  type = "offensive", spec = true },
		{ spellID = 14183,  duration = 120, type = "offensive", spec = true },
		{ spellID = 1725,   duration = 30,  type = "other"      },
		{ spellID = 1966,   duration = 10,  type = "other"      },
		{ spellID = 36554,  duration = 30,  type = "other",     spec = true },
		{ spellID = 2983,   duration = 300, type = "other"      },
		{ spellID = 1784,   duration = 10,  type = "other"      },
	},
	["SHAMAN"] = {
		{ spellID = 8042,   duration = 6,   type = "interrupt"  },
		{ spellID = 30823,  duration = 120, type = "defensive", spec = true },
		{ spellID = 2825,   duration = 600, type = "offensive"  },

		{ spellID = 421,    duration = 6,   type = "offensive"  },
		{ spellID = 1535,   duration = 15,  type = "offensive"  },
		{ spellID = 2894,   duration = 1200,    type = "offensive"  },
		{ spellID = 8050,   duration = 6,   type = "offensive"  },
		{ spellID = 16166,  duration = 180, type = "offensive", spec = true },
		{ spellID = 17364,  duration = 10,  type = "offensive", spec = true },
		{ spellID = 8177,   duration = 15,  type = "counterCC"  },
		{ spellID = 2062,   duration = 1200,    type = "other"  },
		{ spellID = 2484,   duration = 15,  type = "other"      },
		{ spellID = 8056,   duration = 6,   type = "other"      },
		{ spellID = 16190,  duration = 300, type = "other",     spec = true },
		{ spellID = 16188,  duration = 180, type = "other",     spec = true },
		{ spellID = 20608,  duration = 3600,    type = "other"  },
		{ spellID = 5730,   duration = 30,  type = "other"      },
	},
	["WARLOCK"] = {
		{ spellID = 6789,   duration = 120, type = "cc"         },
		{ spellID = 5484,   duration = 40,  type = "cc",        },
		{ spellID = 30283,  duration = 20,  type = "cc",        spec = true },
		{ spellID = 6229,   duration = 30,  type = "defensive"  },
		{ spellID = 18288,  duration = 180, type = "offensive", spec = true },
		{ spellID = 17962,  duration = 10,  type = "offensive", spec = true },
		{ spellID = 603,    duration = 60,  type = "offensive"  },
		{ spellID = 1122,   duration = 3600,    type = "offensive"  },
		{ spellID = 17877,  duration = 15,  type = "offensive", spec = true },
		{ spellID = 6353,   duration = 60,  type = "offensive"  },
		{ spellID = 18708,  duration = 900, type = "other",     spec = true },
		{ spellID = 18540,  duration = 3600,    type = "other"  },
		{ spellID = 29893,  duration = 300, type = "other"      },
		{ spellID = 29858,  duration = 300, type = "other"      },

		{ spellID = 19244,  duration = 24,  type = "interrupt"  },
		{ spellID = 19505,  duration = 8,   type = "dispel"     },

		{ spellID = 7814,   duration = 12,  type = "other"      },


		{ spellID = 4511,   duration = 10,  type = "other"      },

		{ spellID = 17735,  duration = 120, type = "other"      },

	},
	["WARRIOR"] = {
		{ spellID = 6552,   duration = 10,  type = "interrupt"  },
		{ spellID = 72,     duration = 12,  type = "interrupt"  },
		{ spellID = 100,    duration = 15,  type = "cc"         },
		{ spellID = 12809,  duration = 45,  type = "cc",        spec = true },
		{ spellID = 20252,  duration = 30,  type = "cc"         },
		{ spellID = 5246,   duration = 180, type = "cc"         },
		{ spellID = 676,    duration = 60,  type = "disarm"     },
		{ spellID = 12975,  duration = 480, type = "defensive", spec = true },
		{ spellID = 2565,   duration = 5,   type = "defensive"  },
		{ spellID = 871,    duration = 1800,    type = "defensive"  },
		{ spellID = 2687,   duration = 60,  type = "offensive"  },
		{ spellID = 23881,  duration = 6,   type = "offensive", spec = true },
		{ spellID = 12292,  duration = 180, type = "offensive", spec = true },
		{ spellID = 12294,  duration = 6,   type = "offensive", spec = true },
		{ spellID = 7384,   duration = 5,   type = "offensive"  },
		{ spellID = 1719,   duration = 1800,    type = "offensive"  },
		{ spellID = 20230,  duration = 1800,    type = "offensive"  },
		{ spellID = 6572,   duration = 5,   type = "offensive"  },
		{ spellID = 23922,  duration = 6,   type = "offensive", spec = true },
		{ spellID = 12328,  duration = 30,  type = "offensive", spec = true },
		{ spellID = 6343,   duration = 4,   type = "offensive"  },
		{ spellID = 1680,   duration = 10,  type = "offensive"  },
		{ spellID = 18499,  duration = 30,  type = "counterCC"  },
		{ spellID = 3411,   duration = 30,  type = "counterCC"  },
		{ spellID = 23920,  duration = 10,  type = "counterCC"  },
		{ spellID = 1161,   duration = 600, type = "other"      },
		{ spellID = 694,    duration = 120, type = "other"      },
		{ spellID = 355,    duration = 10,  type = "other"      },
	},
	["PVPTRINKET"] = {
		{ spellID = 42292,  duration = {[18859]=300,default=120},   type = "pvptrinket",    item = 37864,   item2 = 18859   },
	},
	["RACIAL"] = {
		{ spellID = 28730,  duration = 120, type = "racial",    race = 10   },
		{ spellID = 26297,  duration = 180, type = "racial",    race =  8   },
		{ spellID = 20572,  duration = 120, type = "racial",    race =  2   },
		{ spellID = 20589,  duration = 105, type = "racial",    race =  7   },
		{ spellID = 28880,  duration = 180, type = "racial",    race = 11   },
		{ spellID = 20600,  duration = 180, type = "racial",    race =  1   },
		{ spellID = 20580,  duration = 10,  type = "racial",    race =  4   },
		{ spellID = 20594,  duration = 180, type = "racial",    race =  3   },
		{ spellID = 20549,  duration = 90,  type = "racial",    race =  6   },
		{ spellID = 7744,   duration = 120, type = "racial",    race =  5   },
	},
	["TRINKET"] = {
		{ spellID = 35166,  duration = 120, type = "trinket",   item = 29383    },
		{ spellID = 35163,  duration = 120, type = "trinket",   item = 29370    },
		{ spellID = 46784,  duration = 90,  type = "trinket",   item = 35702    },
		{ spellID = 35165,  duration = 120, type = "trinket",   item = 29376    },
		{ spellID = 29601,  duration = 120, type = "trinket",   item = 28727    },
		{ spellID = 38332,  duration = 120, type = "trinket",   item = 28590    },
		{ spellID = 40396,  duration = 120, type = "trinket",   item = 32483    },
		{ spellID = 35169,  duration = 120, type = "trinket",   item = 29387    },
		{ spellID = 34519,  duration = 120, type = "trinket",   item = 28528    },
		{ spellID = 43716,  duration = 120, type = "trinket",   item = 33831    },
		{ spellID = 33828,  duration = 120, type = "trinket",   item = 25829    },
		{ spellID = 32140,  duration = 120, type = "trinket",   item = 24551    },
		{ spellID = 35352,  duration = 120, type = "trinket",   item = 29181    },
		{ spellID = 43712,  duration = 120, type = "trinket",   item = 33829    },
		{ spellID = 46783,  duration = 120, type = "trinket",   item = 35700    },
		{ spellID = 40464,  duration = 180, type = "trinket",   item = 32501    },
		{ spellID = 45064,  duration = 120, type = "trinket",   item = 34471    },
		{ spellID = 40402,  duration = 120, type = "trinket",   item = 30665    },
		{ spellID = 38325,  duration = 120, type = "trinket",   item = 30620    },
		{ spellID = 45049,  duration = 300, type = "trinket",   item = 34428    },
		{ spellID = 51953,  duration = 120, type = "trinket",   item = 38290    },
		{ spellID = 46780,  duration = 120, type = "trinket",   item = 35693    },
		{ spellID = 45052,  duration = 300, type = "trinket",   item = 34430    },
		{ spellID = 43713,  duration = 120, type = "trinket",   item = 33830    },
		{ spellID = 46782,  duration = 300, type = "trinket",   item = 35694    },
		{ spellID = 51955,  duration = 120, type = "trinket",   item = 38287    },
		{ spellID = 38351,  duration = 180, type = "trinket",   item = 30629    },
		{ spellID = 46785,  duration = 180, type = "trinket",   item = 35703    },
		{ spellID = 51952,  duration = 120, type = "trinket",   item = 38289    },
		{ spellID = 43710,  duration = 120, type = "trinket",   item = 33828    },
		{ spellID = 43995,  duration = 600, type = "trinket",   item = 34029    },
		{ spellID = 51954,  duration = 120, type = "trinket",   item = 38288    },
		{ spellID = 48042,  duration = 600, type = "trinket",   item = 37128    },
		{ spellID = 48041,  duration = 600, type = "trinket",   item = 37127    },
		{ spellID = 32604,  duration = 120, type = "trinket",   item = 25798    },
		{ spellID = 44055,  duration = 180, type = "trinket",   item = 34050    },
	},
}

local BLANK = {}
local iconFix = BLANK
local buffFix = BLANK
E.buffFixNoCLEU = BLANK

for k, v in pairs(E.spell_db) do
	local n = #v
	for i = n, 1, -1 do
		local t = v[i]
		local id = t.spellID
		local itemID = t.item

		if not C_Spell.DoesSpellExist(id) then
			tremove(v, i)
			--E.Write("Removing Invalid ID: |cffffd200" .. id)
		else
			if k == "TRINKET" or k == "PVPTRINKET" then
				t.icon = GetItemIcon(itemID)
			else
				t.icon = select(2, GetSpellTexture(id))
			end
			t.name = GetSpellInfo(id) or ""
			t.class = k

			local buff = t.buff or buffFix[id] or id
			if E.L_HIGHLIGHTS[t.type] then
				E.spell_highlighted[buff] = true
			end
			t.buff = buff
		end
	end
end
