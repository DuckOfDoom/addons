-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

private.ACHIEVEMENT_ZONE_IDS = {
	[1165] = { 12851, 12944 }; --Zuldazar
	[862] = { 12851, 12944 }; --Zuldazar
	[863] = { 12771, 12942 }; --Nazmir
	[864] = { 12849, 12943 }; --Vol'dun
	[1161] = { 12852, 12939 }; --Tiragarde Sound
	[895] = { 12852, 12939 }; --Tiragarde Sound
	[896] = { 12995, 12941 }; --Drustvar
	[942] = { 12853, 12940 }; --Stormsong Valley
	[1355] = { 13549, 13691 }; --Nazjatar
	[1462] = { 13470 }; --Mechagon
	[104] = { 1312 }; --Shadowmoon valley (BC)
	[109] = { 1312 }; --Netherstorm (BC)
	[100] = { 1312 }; --Hellfire peninsula (BC)
	[105] = { 1312 }; --Blades edge mountains (BC)
	[102] = { 1312 }; --Zangarmarsh (BC)
	[108] = { 1312 }; --Terokkar forest (BC)
	[107] = { 1312 }; --Nagrand (BC)
	[119] = { 2257 }; --Sholazar basin (WOLK)
	[120] = { 2257 }; --The storm peaks (WOLK)
	[114] = { 2257 }; --Borean tundra (WOLK)
	[117] = { 2257 }; --Howling fjord (WOLK)
	[121] = { 2257 }; --Zul drak (WOLK)
	[115] = { 2257 }; --Dragonblight (WOLK)
	[118] = { 2257 }; --Icecrown (WOLK)
	[116] = { 2257 }; --Grizzly hills (WOLK)
	[554] = { 8714 }; --Timeless isle (Pandaria)
	[555] = { 8714 }; --Cavern of lost spirits (Pandaria)
	[504] = { 8103 }; --Isle of thunder (Pandaria)
	[505] = { 8103 }; --Lightning vein mine (Pandaria)
	[371] = { 7439 }; --The jade forest (Pandaria)
	[379] = { 7439 }; --Kun lai summit (Pandaria)
	[422] = { 7439 }; --Dread wastes (Pandaria)
	[390] = { 7439 }; --Vale of eternal blossoms (Pandaria)
	[418] = { 7439 }; --Krasarang wilds (Pandaria)
	[376] = { 7439 }; --Valley of the four winds (Pandaria)
	[388] = { 7439 }; --Townlong steppes (Pandaria)
	[534] = { 10070 }; --Tanaan jungle (WOD)
}

private.ACHIEVEMENT_TARGET_IDS = {
	[2257] = { 32517, 32495, 32358, 32377, 32398, 32409, 32422, 32438, 32471, 32481, 32630, 32487, 32501, 32357, 32361, 32386, 32400, 32417, 32429, 32447, 32475, 32485, 32500 }; --Frostbitten (Wrath of the Lich king)
	[1312] = { 18695, 18697, 18694, 18686, 18678, 18692, 18680, 18690, 18685, 18683, 18682, 18681, 18689, 18698, 17144, 18696, 18677, 20932, 18693, 18679 }; --Bloody Rare (Burning Crusade)
	[8714] = { 73158, 73161, 72245, 72193, 71864, 72048, 73277, 73282, 73166, 73704, 73170, 73171, 73173, 73167, 73279, 73174, 73666, 73160, 72909, 71919, 72045, 73854, 72769, 72775, 72808, 73163, 73157, 73169, 73175, 73172, 72970, 73281 }; --Timeless Champion (Pandaria)
	[8103] = { 50358, 69996, 69998, 70000, 70002, 69664, 69997, 69999, 70001, 70003 }; --Champions of Lei Shen (Pandaria)
	[7439] = { 50823, 50830, 50832, 50840, 50766, 50769, 50776, 50363, 50388, 50734, 50749, 50339, 50341, 50347, 50350, 50352, 50355, 50359, 50811, 50817, 50821, 50782, 50787, 50791, 50806, 51059, 50332, 50334, 50828, 50831, 50836, 50750, 50768, 50772, 50780, 50364, 50733, 50739, 50338, 50340, 50344, 50349, 50351, 50354, 50356, 50808, 50816, 50820, 50822, 50783, 50789, 50805, 51078, 50331, 50333, 50336 }; --Glorious! (Pandaria)
	[10070] = { 91374, 91087, 90429, 90437, 90442, 90024, 90782, 91695, 93002, 91243, 93001, 90884, 90887, 90936, 92429, 92508, 92465, 92552, 92627, 92694, 93028, 93125, 92766, 92819, 93279, 91871, 90094, 92647, 92408, 93264, 91093, 91098, 90438, 90434, 90519, 92451, 92274, 92887, 91232, 93057, 92977, 90885, 90888, 92197, 92495, 92517, 92574, 92606, 92636, 92941, 93076, 93168, 92817, 92657, 91727, 90122, 93236, 91009, 92411, 89675 }; --Jungle Stalker (WOD)
	[12851] = { 276735, 279609, 277561, 284454, 288596, 281092, 281655, 281898, 284455, 290725 }; --Treasures of Zuldazar
	[12944] = { 129961, 136428, 131476, 129343, 127939, 120899, 122004, 134738, 133842, 133190, 132244, 131687, 129954, 136413, 131233, 128699, 126637, 124185, 134760, 134048, 134049, 134782, 133155, 131718 }; --Adventurer of Zuldazar
	[12771] = { 280504, 279253, 277715, 279689, 278436, 280522, 279260, 278437, 279299, 277885 }; --Treasures of Nazmir
	[12942] = { 125250, 134293, 128965, 134296, 125232, 121242, 128974, 133373, 124397, 134295, 134294, 127820, 126460, 126907, 129657, 133539, 134298, 126635, 129005, 126187, 127001, 128426, 124399, 133527, 125214, 126142, 127873, 126056, 126926, 133531, 133812, 128935, 128930 }; --Adventurer of Nazmir
	[12849] = { 280951, 287304, 287320, 287326, 294317, 287318, 287324, 294316, 294319, 287239 }; --Treasures of Vol'dun
	[12943] = { 135852, 128553, 129476, 136346, 136335, 130443, 136341, 137681, 136340, 136336, 134571, 136304, 129180, 134625, 130439, 128497, 136393, 136390, 124722, 128674, 129283, 128686, 128951, 127776, 136338, 134745, 130401, 134638, 129411 }; --Adventurer of Vol'dun
	[12852] = { 293962, 293965, 281397, 293964, 293881, 130350, 131453, 293852, 293884, 293880, 292686, 292673, 292674, 292675, 292676, 292677 }; --Treasures of Tiragarde Sound
	[12939] = { 132182, 132068, 139145, 132088, 132211, 139233, 134106, 139205, 132179, 127289, 139285, 139135, 133356, 131389, 132076, 129181, 132086, 130508, 139152, 132127, 131520, 139290, 131252, 131262, 139278, 139287, 132280, 139280, 139289, 139235, 131984, 137180 }; --Adventurer of Tiragarde Sound
	[12995] = { 297825, 297891, 297893, 297828, 297892, 297879, 297878, 297881, 298920, 297880 }; --Treasures of Drustvar
	[12941] = { 124548, 127333, 127765, 127844, 128973, 127129, 129805, 129995, 130143, 134213, 135796, 137824, 138618, 138863, 139321, 125453, 127651, 126621, 127877, 127901, 129904, 128707, 129835, 129950, 130138, 132319, 134754, 137529, 137825, 138675, 138871, 138870, 138866, 139322, 134706 }; --Adventurer of Drustvar
	[12853] = { 289647, 281494, 284448, 293349, 294173, 280619, 282153, 279042, 293350, 294174 }; --Treasures of Stormsong Valley
	[12940] = { 141175, 138938, 136189, 139319, 132007, 141029, 141286, 141059, 140938, 136183, 135939, 141226, 141039, 129803, 130079, 141239, 139980, 140997, 139328, 134884, 137025, 142088, 131404, 139298, 139385, 134897, 135947, 141088, 130897, 141143, 138963, 139988, 140925, 139515 }; --Adventurer of Stormsong Valley
	[13549] = { 306409, 326394, 326401, 326402, 326403, 326404, 326405, 326406, 326407, 326408, 326419, 326417, 326416, 326415, 326414, 326413, 326412, 326411, 326410, 326409, 326418, 326400, 326399, 326398, 326397, 326396, 326395, 329783, 332220 }; -- Trove Tracker
	[13691] = { 152415, 152794, 150191, 152712, 152464, 152756, 152414, 152553, 152567, 144644, 152397, 152682, 151870, 152548, 152542, 153658, 152290, 153928, 152360, 151719, 152416, 152566, 152361, 149653, 152556, 152291, 152555, 152448, 152323, 152465, 152681, 150583, 152795, 152545, 152552, 152359, 153898, 154148, 152568, 150468 }; -- I Thought You Said They'd Be Rare?
	[13470] = { 151124, 151672, 151702, 151934, 151884, 151569, 152001, 151940, 153000, 151933, 150342, 153205, 153200, 153226, 151627, 152764, 154225, 154739, 151625, 151684, 150575, 152007, 151202, 151296, 151308, 150937, 152182, 152569, 153206, 152764, 152113, 153228, 150394, 154153, 154701, 135497, 149847, 152570 }; --Rest In Pistons
}