---------------------------------------------------- 
--AddOn namespace.
---------------------------------------------------- 

local FOLDER_NAME, private = ...
	
private.LOOT_QUEST_IDS = {	
	[114025] = 36086;
	[114029] = 36092;
	[114030] = 36094;
	[114972] = 36236;
	[115343] = 36309;
	[114018] = 36075;
	[114019] = 36076;
	[113590] = 35948;
	[113586] = 35944;
	[115507] = 36408;
	[114877] = 36176;
	[114037] = 36105;
	[114038] = 36106;
	[115278] = 36286;
	[105891] = 33354;
	[114023] = 36083;
	[114022] = 36081;
	[114032] = 36097;
	[114031] = 36096;
	[113458] = 35817;
	[113459] = 35818;
	[167790] = 55451;
	[169216] = 56240;
	[170147] = 56908;
	[115343] = 36309;
	[114024] = 36084;
	[114025] = 36086;
	[114029] = 36092;
	[114030] = 36094;
	[114972] = 36236;
	[115507] = 36408;
	[114018] = 36075;
	[114019] = 36076;
	[113590] = 35948;
	[113586] = 35944;
	[113103] = 35342;
	[114877] = 36176;
	[115278] = 36286;
	[114037] = 36105;
	[114038] = 36106;
	[115593] = 36435;
	[105891] = 33354;
	[114023] = 36083;
	[114022] = 36081;
	[114032] = 36097;
	[114031] = 36096;
	[113458] = 35817;
	[113459] = 35818;
	[114984] = 36239;
	[128231] = 39355;
	[128231] = 39355;
	[128252] = 39360;
	[128256] = 39364;
	[128232] = 39356;
	[126950] = 38932;
	[128255] = 39363;
	[124501] = 38802;
	[124498] = 38797;
	[157782] = 50393;
	[167786] = 55426; --what will it grow;
	[168155] = 55602; --what will it lure;
	[168081] = 55531; --what will it mine;
	[170512] = 57086; --legacy of the mad mage;
	[168908] = 56087; --blueprint experimental adventurer augment;
	[168491] = 55070; --blueprint personal time displacer;
	[169691] = 56518; --vinyl depths of ulduar;
	[167042] = 55030; --blueprint scrap trap;
	[167846] = 55061; --blueprint mechano treat;
	[169170] = 55078; --blueprint utility mechanoclaw;
	[169591] = 56421; --cracked numeric cylinder;
	[169169] = 55077; --blueprint blue spraybot;
	[169167] = 55075; --blueprint orange spraybot;
	[167793] = 55457; --paint vial overload orange;
	[169168] = 55076; --blueprint green spraybot;
	[167792] = 55452; --paint vial fel mint green;
	[167836] = 55057; --blueprint canned minnows;
	[169174] = 55082; --blueprint rustbolt pocket turret;
	[167871] = 55063; --blueprint g99 99 landshark;
	[169593] = 56423; --large storage fragment;
	[167847] = 55062; --blueprint ultrasafe transporter mechagon;
	[169173] = 55081; --blueprint anti gravity pack;
	[169688] = 56515; --vinyl gnomeregan forever;
	[168490] = 55069; --blueprint protocol transference device;
	[168248] = 55068; --blueprint bawld 371;
	[167794] = 55454; --paint vial lemonade steel;
	[169594] = 56424; --rust covered disc;
	[169595] = 56425; --scorched data disc;
	[168001] = 55517; --paint vial big ol bronze;
	[168063] = 55065; --blueprint rustbolt kegerator;
	[169689] = 56516; --vinyl mimirons brainstorm;
	[169692] = 56519; --vinyl triumph of gnomeregan;
	[169690] = 56517; --vinyl battle of gnomeregan;
	[168062] = 55064; --blueprint rustbolt gramophone;
	[169779] = 56566; --hanging by a thread;
	[169658] = 56091; --usurpers scent gland;
	[169657] = 56092; --hivethiefs jelly stash;
	[169659] = 56144; --old nashas paw;
	[169655] = 56474; --hivekiller stinger;
	[169656] = 56473; --envenomed spider fang;
	[169654] = 56475; --spiral yeti horn;
	[169224] = 55103; --Ideas Can Come from Anywhere
	[169225] = 55103; --Ideas Can Come from Anywhere
	[169226] = 55103; --Ideas Can Come from Anywhere
	[169227] = 55103; --Ideas Can Come from Anywhere
	[169228] = 55103; --Ideas Can Come from Anywhere
	[169229] = 55103; --Ideas Can Come from Anywhere
	[169230] = 55103; --Ideas Can Come from Anywhere
	[169231] = 55103; --Ideas Can Come from Anywhere
	[169232] = 55103; --Ideas Can Come from Anywhere
	[169233] = 55103; --Ideas Can Come from Anywhere
	[169235] = 55103; --Ideas Can Come from Anywhere
	[169236] = 55103; --Ideas Can Come from Anywhere
	[169237] = 55103; --Ideas Can Come from Anywhere
	[169238] = 55103; --Ideas Can Come from Anywhere
	[169239] = 55103; --Ideas Can Come from Anywhere
	[169240] = 55103; --Ideas Can Come from Anywhere
	[169246] = 55103; --Ideas Can Come from Anywhere
	[169247] = 55103; --Ideas Can Come from Anywhere
	[169248] = 55103; --Ideas Can Come from Anywhere
	[169249] = 55103; --Ideas Can Come from Anywhere
	[169250] = 55103; --Ideas Can Come from Anywhere
	[169251] = 55103; --Ideas Can Come from Anywhere
	[169252] = 55103; --Ideas Can Come from Anywhere
	[169253] = 55103; --Ideas Can Come from Anywhere
	[169255] = 55103; --Ideas Can Come from Anywhere
	[169257] = 55103; --Ideas Can Come from Anywhere
	[172954] = 57686; --The Eternal Traveler
	[171248] = 57326; --Prototypes for Profit
	[174196] = 58461; --Tomes of Ancient Madness
	[175016] = 58858; --More Fetid Filets
	[175058] = 58865; --Armamentos sobrenaturales
	[173956] = 58234; --Questionable Sourcing
	[174356] = 58010; --More Bits, More Bits!
	[175015] = 58812; --Meat Alternatives
	[168906] = 56086; --blueprint holographic digitalization relay
	
}