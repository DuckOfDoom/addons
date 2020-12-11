--
-- Copyright (c) 2020 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=2,region="tw",faction=1,date="2020-12-10T06:02:03Z",currentRaid={["name"]="Castle Nathria",["shortName"]="CN",["bossCount"]=10},previousRaid=nil,db1={}}
local F

F = function() provider.db1["眾星之子"]={0,"Rainj","櫻花乂飛舞","正義"} end F()
F = function() provider.db1["語風"]={6,"Yateli","井上熊彥","兔美子","貓小爪","阿希莉亞"} end F()
F = function() provider.db1["暗影之月"]={16,"Longhan","凱米僧","啓動","奧蕾賽絲","希茵娜武大娘","扶起來還能浪","月月冰淇淋","深淵士者","瘋鬚傑","真仙巔峰","絕情守護","舞小樂","艾璐恩","花褪殘紅","蘇墨染","貪吃鬼喬喬","阿裡郎","魔中之麼"} end F()
F = function() provider.db1["尖石"]={52,"落日死騎"} end F()
F = function() provider.db1["水晶之刺"]={54,"宇智波左助"} end F()
F = function() provider.db1["憤怒使者"]={56,"牽手"} end F()
F = function() provider.db1["狂熱之刃"]={58,"小洋哥","恨爺"} end F()
F = function() provider.db1["亞雷戈斯"]={62,"Alviter","月嫣"} end F()
F = function() provider.db1["日落沼澤"]={66,"伊賀聖","宇智波牙程","山之蜜"} end F()
F = function() provider.db1["銀翼要塞"]={72,"奇特細妹","月影朔風"} end F()
F = function() provider.db1["阿薩斯"]={76,"銃康"} end F()
F = function() provider.db1["聖光之願"]={78,"Portofino"} end F()

F = nil
RaiderIO.AddProvider(provider)
