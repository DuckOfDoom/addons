--
-- Generated on 2021-04-10T06:35:31Z. DO NOT EDIT.
--
-- Curr. Ranges: {"epic":[1401,3300],"superior":[1201,1400],"uncommon":[626,1200],"common":[200,625]}
-- Prev. Ranges: {"epic":[null,null],"superior":[null,null],"uncommon":[null,null],"common":[200,null]}
--
local _, ns = ...

ns.scoreTiers = {
	[1] = { ["score"] = 3300, ["color"] = { 1.00, 0.50, 0.00 } },		-- |cffff80003300+|r
	[2] = { ["score"] = 3200, ["color"] = { 1.00, 0.50, 0.05 } },		-- |cfffe7f0c3200+|r
	[3] = { ["score"] = 3175, ["color"] = { 1.00, 0.49, 0.08 } },		-- |cfffe7e153175+|r
	[4] = { ["score"] = 3150, ["color"] = { 0.99, 0.49, 0.11 } },		-- |cfffd7d1c3150+|r
	[5] = { ["score"] = 3125, ["color"] = { 0.99, 0.49, 0.13 } },		-- |cfffd7c213125+|r
	[6] = { ["score"] = 3105, ["color"] = { 0.99, 0.48, 0.15 } },		-- |cfffc7b263105+|r
	[7] = { ["score"] = 3080, ["color"] = { 0.99, 0.48, 0.17 } },		-- |cfffc7a2b3080+|r
	[8] = { ["score"] = 3055, ["color"] = { 0.98, 0.47, 0.18 } },		-- |cfffb792f3055+|r
	[9] = { ["score"] = 3030, ["color"] = { 0.98, 0.47, 0.20 } },		-- |cfffb78333030+|r
	[10] = { ["score"] = 3005, ["color"] = { 0.98, 0.47, 0.22 } },		-- |cfffa77373005+|r
	[11] = { ["score"] = 2985, ["color"] = { 0.98, 0.46, 0.23 } },		-- |cfff9763b2985+|r
	[12] = { ["score"] = 2960, ["color"] = { 0.98, 0.46, 0.24 } },		-- |cfff9753e2960+|r
	[13] = { ["score"] = 2935, ["color"] = { 0.97, 0.45, 0.25 } },		-- |cfff874412935+|r
	[14] = { ["score"] = 2910, ["color"] = { 0.97, 0.45, 0.27 } },		-- |cfff773452910+|r
	[15] = { ["score"] = 2885, ["color"] = { 0.97, 0.45, 0.28 } },		-- |cfff772482885+|r
	[16] = { ["score"] = 2865, ["color"] = { 0.96, 0.44, 0.29 } },		-- |cfff6714b2865+|r
	[17] = { ["score"] = 2840, ["color"] = { 0.96, 0.44, 0.31 } },		-- |cfff5704e2840+|r
	[18] = { ["score"] = 2815, ["color"] = { 0.96, 0.44, 0.32 } },		-- |cfff56f512815+|r
	[19] = { ["score"] = 2790, ["color"] = { 0.96, 0.43, 0.33 } },		-- |cfff46e542790+|r
	[20] = { ["score"] = 2765, ["color"] = { 0.95, 0.43, 0.34 } },		-- |cfff36d572765+|r
	[21] = { ["score"] = 2745, ["color"] = { 0.95, 0.42, 0.35 } },		-- |cfff36b5a2745+|r
	[22] = { ["score"] = 2720, ["color"] = { 0.95, 0.42, 0.36 } },		-- |cfff26a5d2720+|r
	[23] = { ["score"] = 2695, ["color"] = { 0.95, 0.41, 0.38 } },		-- |cfff169602695+|r
	[24] = { ["score"] = 2670, ["color"] = { 0.94, 0.41, 0.38 } },		-- |cfff068622670+|r
	[25] = { ["score"] = 2645, ["color"] = { 0.94, 0.40, 0.40 } },		-- |cffef67652645+|r
	[26] = { ["score"] = 2625, ["color"] = { 0.94, 0.40, 0.41 } },		-- |cffef66682625+|r
	[27] = { ["score"] = 2600, ["color"] = { 0.93, 0.40, 0.42 } },		-- |cffee656b2600+|r
	[28] = { ["score"] = 2575, ["color"] = { 0.93, 0.39, 0.43 } },		-- |cffed646d2575+|r
	[29] = { ["score"] = 2550, ["color"] = { 0.93, 0.39, 0.44 } },		-- |cffec63702550+|r
	[30] = { ["score"] = 2525, ["color"] = { 0.92, 0.38, 0.45 } },		-- |cffeb62732525+|r
	[31] = { ["score"] = 2505, ["color"] = { 0.92, 0.38, 0.46 } },		-- |cffea61752505+|r
	[32] = { ["score"] = 2480, ["color"] = { 0.92, 0.38, 0.47 } },		-- |cffea60782480+|r
	[33] = { ["score"] = 2455, ["color"] = { 0.91, 0.37, 0.48 } },		-- |cffe95f7b2455+|r
	[34] = { ["score"] = 2430, ["color"] = { 0.91, 0.37, 0.49 } },		-- |cffe85e7d2430+|r
	[35] = { ["score"] = 2405, ["color"] = { 0.91, 0.36, 0.50 } },		-- |cffe75d802405+|r
	[36] = { ["score"] = 2385, ["color"] = { 0.90, 0.36, 0.51 } },		-- |cffe65c832385+|r
	[37] = { ["score"] = 2360, ["color"] = { 0.90, 0.36, 0.52 } },		-- |cffe55b852360+|r
	[38] = { ["score"] = 2335, ["color"] = { 0.89, 0.35, 0.53 } },		-- |cffe45a882335+|r
	[39] = { ["score"] = 2310, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe3598b2310+|r
	[40] = { ["score"] = 2285, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe2588d2285+|r
	[41] = { ["score"] = 2265, ["color"] = { 0.88, 0.34, 0.56 } },		-- |cffe057902265+|r
	[42] = { ["score"] = 2240, ["color"] = { 0.87, 0.34, 0.57 } },		-- |cffdf56922240+|r
	[43] = { ["score"] = 2215, ["color"] = { 0.87, 0.33, 0.58 } },		-- |cffde55952215+|r
	[44] = { ["score"] = 2190, ["color"] = { 0.87, 0.33, 0.60 } },		-- |cffdd54982190+|r
	[45] = { ["score"] = 2165, ["color"] = { 0.86, 0.33, 0.60 } },		-- |cffdc539a2165+|r
	[46] = { ["score"] = 2145, ["color"] = { 0.86, 0.32, 0.62 } },		-- |cffdb529d2145+|r
	[47] = { ["score"] = 2120, ["color"] = { 0.85, 0.32, 0.62 } },		-- |cffd9519f2120+|r
	[48] = { ["score"] = 2095, ["color"] = { 0.85, 0.31, 0.64 } },		-- |cffd850a22095+|r
	[49] = { ["score"] = 2070, ["color"] = { 0.84, 0.31, 0.65 } },		-- |cffd74fa52070+|r
	[50] = { ["score"] = 2045, ["color"] = { 0.84, 0.31, 0.65 } },		-- |cffd64ea72045+|r
	[51] = { ["score"] = 2025, ["color"] = { 0.83, 0.30, 0.67 } },		-- |cffd44daa2025+|r
	[52] = { ["score"] = 2000, ["color"] = { 0.83, 0.30, 0.67 } },		-- |cffd34cac2000+|r
	[53] = { ["score"] = 1975, ["color"] = { 0.82, 0.29, 0.69 } },		-- |cffd24baf1975+|r
	[54] = { ["score"] = 1950, ["color"] = { 0.82, 0.29, 0.70 } },		-- |cffd04ab21950+|r
	[55] = { ["score"] = 1925, ["color"] = { 0.81, 0.29, 0.71 } },		-- |cffcf49b41925+|r
	[56] = { ["score"] = 1905, ["color"] = { 0.80, 0.28, 0.72 } },		-- |cffcd48b71905+|r
	[57] = { ["score"] = 1880, ["color"] = { 0.80, 0.28, 0.73 } },		-- |cffcc47b91880+|r
	[58] = { ["score"] = 1855, ["color"] = { 0.79, 0.27, 0.74 } },		-- |cffca46bc1855+|r
	[59] = { ["score"] = 1830, ["color"] = { 0.78, 0.27, 0.75 } },		-- |cffc845bf1830+|r
	[60] = { ["score"] = 1805, ["color"] = { 0.78, 0.27, 0.76 } },		-- |cffc744c11805+|r
	[61] = { ["score"] = 1785, ["color"] = { 0.77, 0.26, 0.77 } },		-- |cffc543c41785+|r
	[62] = { ["score"] = 1760, ["color"] = { 0.76, 0.26, 0.78 } },		-- |cffc342c61760+|r
	[63] = { ["score"] = 1735, ["color"] = { 0.76, 0.25, 0.79 } },		-- |cffc241c91735+|r
	[64] = { ["score"] = 1710, ["color"] = { 0.75, 0.25, 0.80 } },		-- |cffc040cc1710+|r
	[65] = { ["score"] = 1685, ["color"] = { 0.75, 0.25, 0.81 } },		-- |cffbe3fce1685+|r
	[66] = { ["score"] = 1665, ["color"] = { 0.74, 0.24, 0.82 } },		-- |cffbc3ed11665+|r
	[67] = { ["score"] = 1640, ["color"] = { 0.73, 0.24, 0.83 } },		-- |cffba3ed41640+|r
	[68] = { ["score"] = 1615, ["color"] = { 0.72, 0.24, 0.84 } },		-- |cffb83dd61615+|r
	[69] = { ["score"] = 1590, ["color"] = { 0.71, 0.24, 0.85 } },		-- |cffb63cd91590+|r
	[70] = { ["score"] = 1565, ["color"] = { 0.71, 0.23, 0.86 } },		-- |cffb43bdb1565+|r
	[71] = { ["score"] = 1545, ["color"] = { 0.70, 0.23, 0.87 } },		-- |cffb23ade1545+|r
	[72] = { ["score"] = 1520, ["color"] = { 0.69, 0.22, 0.88 } },		-- |cffaf39e11520+|r
	[73] = { ["score"] = 1495, ["color"] = { 0.68, 0.22, 0.89 } },		-- |cffad38e31495+|r
	[74] = { ["score"] = 1470, ["color"] = { 0.67, 0.22, 0.90 } },		-- |cffab37e61470+|r
	[75] = { ["score"] = 1445, ["color"] = { 0.66, 0.22, 0.91 } },		-- |cffa837e91445+|r
	[76] = { ["score"] = 1425, ["color"] = { 0.65, 0.21, 0.92 } },		-- |cffa636eb1425+|r
	[77] = { ["score"] = 1400, ["color"] = { 0.64, 0.21, 0.93 } },		-- |cffa335ee1400+|r
	[78] = { ["score"] = 1365, ["color"] = { 0.60, 0.26, 0.93 } },		-- |cff9842ec1365+|r
	[79] = { ["score"] = 1345, ["color"] = { 0.55, 0.29, 0.92 } },		-- |cff8c4bea1345+|r
	[80] = { ["score"] = 1320, ["color"] = { 0.50, 0.33, 0.91 } },		-- |cff7f54e81320+|r
	[81] = { ["score"] = 1295, ["color"] = { 0.44, 0.36, 0.90 } },		-- |cff715be51295+|r
	[82] = { ["score"] = 1270, ["color"] = { 0.38, 0.38, 0.89 } },		-- |cff6261e31270+|r
	[83] = { ["score"] = 1245, ["color"] = { 0.31, 0.40, 0.88 } },		-- |cff4f67e11245+|r
	[84] = { ["score"] = 1225, ["color"] = { 0.22, 0.42, 0.87 } },		-- |cff376cdf1225+|r
	[85] = { ["score"] = 1200, ["color"] = { 0.00, 0.44, 0.87 } },		-- |cff0070dd1200+|r
	[86] = { ["score"] = 1150, ["color"] = { 0.15, 0.46, 0.84 } },		-- |cff2576d71150+|r
	[87] = { ["score"] = 1130, ["color"] = { 0.20, 0.49, 0.82 } },		-- |cff347cd01130+|r
	[88] = { ["score"] = 1105, ["color"] = { 0.25, 0.51, 0.79 } },		-- |cff3f82ca1105+|r
	[89] = { ["score"] = 1080, ["color"] = { 0.28, 0.53, 0.77 } },		-- |cff4788c41080+|r
	[90] = { ["score"] = 1055, ["color"] = { 0.31, 0.56, 0.74 } },		-- |cff4e8ebd1055+|r
	[91] = { ["score"] = 1030, ["color"] = { 0.33, 0.58, 0.72 } },		-- |cff5394b71030+|r
	[92] = { ["score"] = 1010, ["color"] = { 0.34, 0.60, 0.69 } },		-- |cff579ab11010+|r
	[93] = { ["score"] = 985, ["color"] = { 0.35, 0.63, 0.67 } },		-- |cff5aa0aa985+|r
	[94] = { ["score"] = 960, ["color"] = { 0.36, 0.65, 0.64 } },		-- |cff5ca6a3960+|r
	[95] = { ["score"] = 935, ["color"] = { 0.37, 0.67, 0.61 } },		-- |cff5eac9c935+|r
	[96] = { ["score"] = 910, ["color"] = { 0.37, 0.70, 0.58 } },		-- |cff5fb395910+|r
	[97] = { ["score"] = 890, ["color"] = { 0.37, 0.73, 0.56 } },		-- |cff5fb98e890+|r
	[98] = { ["score"] = 865, ["color"] = { 0.37, 0.75, 0.53 } },		-- |cff5fbf87865+|r
	[99] = { ["score"] = 840, ["color"] = { 0.37, 0.77, 0.50 } },		-- |cff5ec57f840+|r
	[100] = { ["score"] = 815, ["color"] = { 0.36, 0.80, 0.47 } },		-- |cff5ccc78815+|r
	[101] = { ["score"] = 790, ["color"] = { 0.35, 0.82, 0.44 } },		-- |cff5ad26f790+|r
	[102] = { ["score"] = 770, ["color"] = { 0.34, 0.85, 0.40 } },		-- |cff57d867770+|r
	[103] = { ["score"] = 745, ["color"] = { 0.32, 0.87, 0.36 } },		-- |cff52df5d745+|r
	[104] = { ["score"] = 720, ["color"] = { 0.30, 0.90, 0.33 } },		-- |cff4de553720+|r
	[105] = { ["score"] = 695, ["color"] = { 0.27, 0.93, 0.28 } },		-- |cff46ec47695+|r
	[106] = { ["score"] = 670, ["color"] = { 0.24, 0.95, 0.23 } },		-- |cff3df23a670+|r
	[107] = { ["score"] = 650, ["color"] = { 0.19, 0.98, 0.15 } },		-- |cff31f927650+|r
	[108] = { ["score"] = 625, ["color"] = { 0.12, 1.00, 0.00 } },		-- |cff1eff00625+|r
	[109] = { ["score"] = 600, ["color"] = { 0.27, 1.00, 0.17 } },		-- |cff44ff2b600+|r
	[110] = { ["score"] = 575, ["color"] = { 0.36, 1.00, 0.25 } },		-- |cff5bff40575+|r
	[111] = { ["score"] = 550, ["color"] = { 0.43, 1.00, 0.32 } },		-- |cff6dff51550+|r
	[112] = { ["score"] = 525, ["color"] = { 0.49, 1.00, 0.38 } },		-- |cff7dff60525+|r
	[113] = { ["score"] = 500, ["color"] = { 0.54, 1.00, 0.43 } },		-- |cff8aff6e500+|r
	[114] = { ["score"] = 475, ["color"] = { 0.59, 1.00, 0.48 } },		-- |cff97ff7b475+|r
	[115] = { ["score"] = 450, ["color"] = { 0.64, 1.00, 0.53 } },		-- |cffa3ff88450+|r
	[116] = { ["score"] = 425, ["color"] = { 0.68, 1.00, 0.58 } },		-- |cffaeff94425+|r
	[117] = { ["score"] = 400, ["color"] = { 0.72, 1.00, 0.63 } },		-- |cffb8ffa1400+|r
	[118] = { ["score"] = 375, ["color"] = { 0.76, 1.00, 0.68 } },		-- |cffc2ffad375+|r
	[119] = { ["score"] = 350, ["color"] = { 0.80, 1.00, 0.72 } },		-- |cffccffb8350+|r
	[120] = { ["score"] = 325, ["color"] = { 0.84, 1.00, 0.77 } },		-- |cffd5ffc4325+|r
	[121] = { ["score"] = 300, ["color"] = { 0.87, 1.00, 0.82 } },		-- |cffdeffd0300+|r
	[122] = { ["score"] = 275, ["color"] = { 0.90, 1.00, 0.86 } },		-- |cffe6ffdc275+|r
	[123] = { ["score"] = 250, ["color"] = { 0.94, 1.00, 0.91 } },		-- |cffefffe8250+|r
	[124] = { ["score"] = 225, ["color"] = { 0.97, 1.00, 0.95 } },		-- |cfff7fff3225+|r
	[125] = { ["score"] = 200, ["color"] = { 1.00, 1.00, 1.00 } },		-- |cffffffff200+|r
}

ns.scoreTiersSimple = {
	[1] = { ["score"] = 3300, ["quality"] = 6 },
	[2] = { ["score"] = 1401, ["quality"] = 5 },
	[3] = { ["score"] = 1201, ["quality"] = 4 },
	[4] = { ["score"] = 626, ["quality"] = 3 },
	[5] = { ["score"] = 200, ["quality"] = 2 }
}
ns.previousScoreTiers = {
}

ns.previousScoreTiersSimple = {
	[1] = { ["score"] = 200, ["quality"] = 2 }
}
