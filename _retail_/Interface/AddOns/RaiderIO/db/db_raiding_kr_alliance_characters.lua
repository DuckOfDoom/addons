--
-- Copyright (c) 2020 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=2,region="kr",faction=1,date="2020-12-10T06:02:03Z",currentRaid={["name"]="Castle Nathria",["shortName"]="CN",["bossCount"]=10},previousRaid=nil,db1={}}
local F

F = function() provider.db1["하이잘"]={0,"데레비","라드리","라피스라즐리","맛나","맥피","법사민뀨","비밀의엘윈","송양이","젠틀술사","존잘거늬","해피사냥꾼","호잉호잉이"} end F()
F = function() provider.db1["세나리우스"]={24,"빛이라"} end F()
F = function() provider.db1["노르간논"]={26,"초코볼과자"} end F()
F = function() provider.db1["불타는군단"]={28,"위리림"} end F()

F = nil
RaiderIO.AddProvider(provider)
