﻿
if (GetLocale() ~= "zhCN") then
	return;
end
-- @EXACT = true: Translation has to be the exact(!) match in the clients language,
--                beacause it carries technical semantics
-- @EXACT = false: Translation can be done freely, because text is only descriptive
-- Class Names
-- @EXACT = false
VUHDO_I18N_WARRIORS="战士"
VUHDO_I18N_ROGUES = "盗贼";
VUHDO_I18N_HUNTERS = "猎人";
VUHDO_I18N_PALADINS = "圣骑士";
VUHDO_I18N_MAGES = "法师";
VUHDO_I18N_WARLOCKS = "术士";
VUHDO_I18N_SHAMANS = "萨满";
VUHDO_I18N_DRUIDS = "德鲁伊";
VUHDO_I18N_PRIESTS = "牧师";
VUHDO_I18N_DEATH_KNIGHT = "死亡骑士";
VUHDO_I18N_MONKS = "武僧";
-- Group Model Names
-- @EXACT = false
VUHDO_I18N_GROUP = "队伍";
VUHDO_I18N_OWN_GROUP = "我的队伍";
-- Special Model Names
-- @EXACT = false
VUHDO_I18N_PETS = "宠物";
VUHDO_I18N_MAINTANKS = "主坦";
VUHDO_I18N_PRIVATE_TANKS = "辅助坦克";
-- General Labels
-- @EXACT = false
VUHDO_I18N_OKAY = "确定";
VUHDO_I18N_CLASS = "职业";
VUHDO_I18N_PLAYER = "玩家";
-- VuhDoTooltip.lua
-- @EXACT = false
VUHDO_I18N_TT_POSITION = "|cffffb233位置:|r";
VUHDO_I18N_TT_GHOST = "<鬼魂>";
VUHDO_I18N_TT_DEAD = "<死亡>";
VUHDO_I18N_TT_AFK = "<暂离>";
VUHDO_I18N_TT_DND = "<勿扰>";
VUHDO_I18N_TT_LIFE = "|cffffb233生命值:|r ";
VUHDO_I18N_TT_MANA = "|cffffb233法力值:|r ";
VUHDO_I18N_TT_LEVEL = "等级";
-- VuhDoPanel.lua
-- @EXACT = false
VUHDO_I18N_CHOOSE = "选择";
VUHDO_I18N_DRAG = "拖动";
VUHDO_I18N_REMOVE = "移除";
VUHDO_I18N_ME = "自己";
VUHDO_I18N_TYPE = "类型";
VUHDO_I18N_VALUE = "数值";
VUHDO_I18N_SPECIAL = "附加";
VUHDO_I18N_BUFF_ALL = "全部";
VUHDO_I18N_SHOW_BUFF_WATCH = "显示增益监视";
-- Chat messages
-- @EXACT = false
VUHDO_I18N_COMMAND_LIST = "\n|cffffe566 - [ VuhDo commands ] -|r";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566opt|r[ions] - VuhDo选项";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566res|r[et] -重置面板位置";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566lock|r -启动面板锁定";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566mm, map, minimap|r -小地图按钮启动";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566show, hide, toggle|r -框体显示开/关";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566load|r - [配置],[按键布局]";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n[broad]|cffffe566cast, mt|r[s] -主坦克同步";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566role|r -重置玩家职责";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566ab|r[out] - 关于这个插件";
VUHDO_I18N_COMMAND_LIST = VUHDO_I18N_COMMAND_LIST .. "|n|cffffe566help,?|r -显示该命令列表\n";
VUHDO_I18N_BAD_COMMAND = "输入'/vuhdo help'或'/vd ?'查看命令列表.";
VUHDO_I18N_CHAT_SHOWN = "|cffffe566显示|r.";
VUHDO_I18N_CHAT_HIDDEN = "|cffffe566隐藏|r.";
VUHDO_I18N_MM_ICON = "小地图按钮";
VUHDO_I18N_MTS_BROADCASTED = "主坦克设置已发送";
VUHDO_I18N_PANELS_SHOWN = "治疗面板已|cffffe566开启|r.";
VUHDO_I18N_PANELS_HIDDEN = "治疗面板已|cffffe566隐藏|r.";
VUHDO_I18N_LOCK_PANELS_PRE = "面板位置已经";
VUHDO_I18N_LOCK_PANELS_LOCKED = "|cffffe566锁定|r.";
VUHDO_I18N_LOCK_PANELS_UNLOCKED = "|cffffe566解锁|r.";
VUHDO_I18N_PANELS_RESET = "面板位置已重置.";
-- Config Pop-Up
-- @EXACT = false
VUHDO_I18N_ROLE = "职责";
VUHDO_I18N_PRIVATE_TANK = "辅助坦克";
VUHDO_I18N_SET_BUFF = "设置增益";
-- Minimap
-- @EXACT = false
VUHDO_I18N_VUHDO_OPTIONS = "VuhDo选项";
VUHDO_I18N_PANEL_SETUP = "选项";
VUHDO_I18N_MM_TOOLTIP = "左:面板设置\n右:菜单";
VUHDO_I18N_TOGGLES = "切换";
VUHDO_I18N_LOCK_PANELS = "锁定面板";
VUHDO_I18N_SHOW_PANELS = "显示面板";
VUHDO_I18N_MM_BUTTON = "小地图按钮";
VUHDO_I18N_CLOSE = "关闭";
VUHDO_I18N_BROADCAST_MTS = "主坦克同步";
-- Buff categories
-- @EXACT = false
-- Priest
-- Shaman
VUHDO_I18N_BUFFC_FIRE_TOTEM = "快焰图腾";
VUHDO_I18N_BUFFC_AIR_TOTEM = "风之图腾";
VUHDO_I18N_BUFFC_EARTH_TOTEM = "大地图腾";
VUHDO_I18N_BUFFC_WATER_TOTEM = "水之图腾";
VUHDO_I18N_BUFFC_WEAPON_ENCHANT = "武器附魔";
VUHDO_I18N_BUFFC_WEAPON_ENCHANT_2 = "武器附魔 2";
VUHDO_I18N_BUFFC_SHIELDS = "盾";
-- Paladin
VUHDO_I18N_BUFFC_BLESSING = "祝福";
VUHDO_I18N_BUFFC_SEAL = "圣印";
-- Druids
-- Warlock
VUHDO_I18N_BUFFC_SKIN = "皮肤";
-- Mage
VUHDO_I18N_BUFFC_ARMOR_MAGE = "护甲";
-- Death Knight
VUHDO_BUFFC_PRESENCE    = "领域";
-- Warrior
VUHDO_I18N_BUFFC_SHOUT = "怒气";
-- Hunter
VUHDO_I18N_BUFFC_ASPECT = "守护";
-- Monk
VUHDO_I18N_BUFFC_STANCE = "姿态";
-- Key Binding Headers/Names
-- @EXACT = false
BINDING_HEADER_VUHDO_TITLE = "VuhDo -团队框体";
BINDING_NAME_VUHDO_KEY_ASSIGN_1 = "鼠标悬停技能1";
BINDING_NAME_VUHDO_KEY_ASSIGN_2 = "鼠标悬停技能2";
BINDING_NAME_VUHDO_KEY_ASSIGN_3 = "鼠标悬停技能3";
BINDING_NAME_VUHDO_KEY_ASSIGN_4 = "鼠标悬停技能4";
BINDING_NAME_VUHDO_KEY_ASSIGN_5 = "鼠标悬停技能5";
BINDING_NAME_VUHDO_KEY_ASSIGN_6 = "鼠标悬停技能6";
BINDING_NAME_VUHDO_KEY_ASSIGN_7 = "鼠标悬停技能7";
BINDING_NAME_VUHDO_KEY_ASSIGN_8 = "鼠标悬停技能8";
BINDING_NAME_VUHDO_KEY_ASSIGN_9 = "鼠标悬停技能9";
BINDING_NAME_VUHDO_KEY_ASSIGN_10 = "鼠标悬停技能10";
BINDING_NAME_VUHDO_KEY_ASSIGN_11 = "鼠标悬停技能11";
BINDING_NAME_VUHDO_KEY_ASSIGN_12 = "鼠标悬停技能12";
BINDING_NAME_VUHDO_KEY_ASSIGN_13 = "鼠标悬停技能13";
BINDING_NAME_VUHDO_KEY_ASSIGN_14 = "鼠标悬停技能14";
BINDING_NAME_VUHDO_KEY_ASSIGN_15 = "鼠标悬停技能15";
BINDING_NAME_VUHDO_KEY_ASSIGN_16 = "鼠标悬停技能16";
BINDING_NAME_VUHDO_KEY_ASSIGN_SMART_BUFF = "智能Buff";
VUHDO_I18N_MOUSE_OVER_BINDING = "按键施法";
VUHDO_I18N_UNASSIGNED = "(未指定)";
-- #+V1.89
VUHDO_I18N_NO = "否";
VUHDO_I18N_UP = "上";
VUHDO_I18N_VEHICLES = "载具";
-- #+v1.94
VUHDO_I18N_DEFAULT_RES_ANNOUNCE = "复活吧,我的勇士!";
-- #v+1.151
VUHDO_I18N_MAIN_ASSISTS = "协助坦克";
--VUHDO_OPTIONS_FONT_NAME = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf";
VUHDO_OPTIONS_FONT_NAME = GameFontNormal:GetFont();
-- #+v1.184
VUHDO_I18N_BW_CD = "冷却";
VUHDO_I18N_BW_GO = "GO!";
VUHDO_I18N_BW_LOW = "低";
VUHDO_I18N_BW_N_A = "|cffff0000N/A|r";
VUHDO_I18N_BW_RNG_RED = "|cffff0000几率触发|r";
VUHDO_I18N_BW_OK = "确定";
VUHDO_I18N_BW_RNG_YELLOW = "|cffffff00几率触发|r";
VUHDO_I18N_PROMOTE_RAID_LEADER = "提升为团队领袖";
VUHDO_I18N_PROMOTE_ASSISTANT = "提升为团队助理";
VUHDO_I18N_DEMOTE_ASSISTANT = "取消团队助理职务";
VUHDO_I18N_PROMOTE_MASTER_LOOTER = "提升为团队拾取";
VUHDO_I18N_MT_NUMBER = "主坦克#";
VUHDO_I18N_ROLE_OVERRIDE = "职责覆盖";
VUHDO_I18N_MELEE_TANK = "近战-坦克";
VUHDO_I18N_MELEE_DPS = "近战-伤害输出";
VUHDO_I18N_RANGED_DPS = "远程-伤害输出";
VUHDO_I18N_RANGED_HEALERS = "远程-治疗";
VUHDO_I18N_AUTO_DETECT = "<自动侦测>";
VUHDO_I18N_PROMOTE_ASSIST_MSG_1 = "提升|cffffe566";
VUHDO_I18N_PROMOTE_ASSIST_MSG_2 = "|r为助理.";
VUHDO_I18N_DEMOTE_ASSIST_MSG_1 = "解除|cffffe566";
VUHDO_I18N_DEMOTE_ASSIST_MSG_2 = "|r助理职务.";
VUHDO_I18N_RESET_ROLES = "重置职责";
VUHDO_I18N_LOAD_KEY_SETUP = "读取按键设置";
VUHDO_I18N_BUFF_ASSIGN_1 = "增益|cffffe566";
VUHDO_I18N_BUFF_ASSIGN_2 = "|r被指定为|cffffe566";
VUHDO_I18N_BUFF_ASSIGN_3 = "|r";
VUHDO_I18N_MACRO_KEY_ERR_1 = "错误:键盘鼠标悬停巨集字符过多: ";
VUHDO_I18N_MACRO_KEY_ERR_2 = "/256字符).尝试减少自动施放选项!!!";
VUHDO_I18N_MACRO_NUM_ERR = "角色最大巨集数量溢出!无法创建鼠标悬停巨集: ";
VUHDO_I18N_SMARTBUFF_ERR_1 = "VuhDo:智能BUFF功能无法在战斗中使用!";
VUHDO_I18N_SMARTBUFF_ERR_2 = "VuhDo:无有效BUFF目标";
VUHDO_I18N_SMARTBUFF_ERR_3 = "超出距离";
VUHDO_I18N_SMARTBUFF_ERR_4 = "VuhDo:无BUFF可施放.";
VUHDO_I18N_SMARTBUFF_OKAY_1 = "VuhDo:正在施放增益|cffffffff";
VUHDO_I18N_SMARTBUFF_OKAY_2 = "|r开启";
-- #+v1.189
VUHDO_I18N_UNKNOWN = "未知";
VUHDO_I18N_SELF = "自己";
VUHDO_I18N_MELEES = "近战";
VUHDO_I18N_RANGED = "远程";
-- #+1.196
VUHDO_I18N_OPTIONS_NOT_LOADED = ">>> VuhDo选项插件未开启! <<<";
VUHDO_I18N_SPELL_LAYOUT_NOT_EXIST_1 = "错误:法术布局\"";
VUHDO_I18N_SPELL_LAYOUT_NOT_EXIST_2 = "\"不存在.";
VUHDO_I18N_AUTO_ARRANG_1 = "队伍成员人数变更为：";
VUHDO_I18N_AUTO_ARRANG_2 = ".自动启用布局: \"";
-- #+1.209
VUHDO_I18N_TRACK_BUFFS_FOR = "监视增益 ...";
VUHDO_I18N_OWN_GROUP_LONG = "本组";
VUHDO_I18N_NO_FOCUS = "[无焦点]";
VUHDO_I18N_NOT_AVAILABLE = "[ N/A ]";
-- #+1.237
VUHDO_I18N_TT_DISTANCE = "|cffffb233距离:|r";
VUHDO_I18N_TT_OF = " - ";
VUHDO_I18N_YARDS = "码";
-- #+1.252
VUHDO_I18N_PANEL = "面板";
VUHDO_I18N_BOUQUET_AGGRO = "标志: 仇恨";
VUHDO_I18N_BOUQUET_OUT_OF_RANGE = "标志: 距离, 多于";
VUHDO_I18N_BOUQUET_IN_RANGE = "标志: 距离, 少于";
VUHDO_I18N_BOUQUET_IN_YARDS = "标志: 范围 < 码";
VUHDO_I18N_BOUQUET_OTHER_HOTS = "标志: 其他玩家的HoTs";
VUHDO_I18N_BOUQUET_DEBUFF_MAGIC = "标志: 减益魔法";
VUHDO_I18N_BOUQUET_DEBUFF_DISEASE = "标志: 减益疾病";
VUHDO_I18N_BOUQUET_DEBUFF_POISON = "标志: 减益毒药";
VUHDO_I18N_BOUQUET_DEBUFF_CURSE = "标志: 减益诅咒";
VUHDO_I18N_BOUQUET_CHARMED = "标志: 被心控";
VUHDO_I18N_BOUQUET_DEAD = "标志: 死亡";
VUHDO_I18N_BOUQUET_DISCONNECTED = "标志: 离线";
VUHDO_I18N_BOUQUET_AFK = "标志: AFK";
VUHDO_I18N_BOUQUET_PLAYER_TARGET = "标志: 玩家目标";
VUHDO_I18N_BOUQUET_MOUSEOVER_TARGET = "标志: 单一鼠标悬停";
VUHDO_I18N_BOUQUET_MOUSEOVER_GROUP = "标志: 一组鼠标悬停";
VUHDO_I18N_BOUQUET_HEALTH_BELOW = "标志: 血量 < %";
VUHDO_I18N_BOUQUET_MANA_BELOW = "标志: 法力值 < %";
VUHDO_I18N_BOUQUET_THREAT_ABOVE = "标志: 仇恨 > %";
VUHDO_I18N_BOUQUET_NUM_IN_CLUSTER = "标志: 群组 >= 玩家";
VUHDO_I18N_BOUQUET_CLASS_COLOR = "标志: 永远职业颜色";
VUHDO_I18N_BOUQUET_ALWAYS = "标志: 永远固定颜色";
VUHDO_I18N_SWIFTMEND_POSSIBLE = "标志: 迅捷治愈可能性";
VUHDO_I18N_BOUQUET_MOUSEOVER_CLUSTER = "标志: 群组, 鼠标悬停";
VUHDO_I18N_THREAT_LEVEL_MEDIUM = "标志: 仇恨, 高";
VUHDO_I18N_THREAT_LEVEL_HIGH = "标志: 仇恨, OT";
VUHDO_I18N_BOUQUET_STATUS_HEALTH = "状态列: 血量 %";
VUHDO_I18N_BOUQUET_STATUS_MANA = "状态列: 法力值 %";
VUHDO_I18N_BOUQUET_STATUS_OTHER_POWERS = "状态列: 非法力值 %";
VUHDO_I18N_BOUQUET_STATUS_INCOMING = "状态列: 治疗输入 %";
VUHDO_I18N_BOUQUET_STATUS_THREAT = "状态列: 仇恨 %";
VUHDO_I18N_BOUQUET_NEW_ITEM_NAME = "-- 在此输入增益或减益 --";
VUHDO_I18N_DEF_BOUQUET_TANK_COOLDOWNS = "坦克冷却";
VUHDO_I18N_DEF_BOUQUET_PW_S_WEAKENED_SOUL = "真言盾 & 虚弱灵魂";
VUHDO_I18N_DEF_BOUQUET_MONK_STAGGER = "Monk Stagger";
VUHDO_I18N_DEF_BOUQUET_BORDER_MULTI_AGGRO = "边框: 多边 + 仇恨";
VUHDO_I18N_DEF_BOUQUET_BORDER_MULTI = "边框: 多边";
VUHDO_I18N_DEF_BOUQUET_BORDER_SIMPLE = "边框: 简单";
VUHDO_I18N_DEF_BOUQUET_SWIFTMENDABLE = "能迅捷治愈";
VUHDO_I18N_DEF_BOUQUET_MOUSEOVER_SINGLE = "鼠标悬停: 单一";
VUHDO_I18N_DEF_BOUQUET_MOUSEOVER_MULTI = "鼠标悬停: 多个";
VUHDO_I18N_DEF_BOUQUET_AGGRO_INDICATOR = "仇恨监视器";
VUHDO_I18N_DEF_BOUQUET_CLUSTER_MOUSE_HOVER = "群组: 鼠标悬停";
VUHDO_I18N_DEF_BOUQUET_THREAT_MARKS = "仇恨: 标记";
VUHDO_I18N_DEF_BOUQUET_BAR_MANA_ALL = "法力条: 全部能量";
VUHDO_I18N_DEF_BOUQUET_BAR_MANA_ONLY = "法力条: 只有法力值";
VUHDO_I18N_DEF_BOUQUET_BAR_THREAT = "仇恨: 状态列";
VUHDO_I18N_CUSTOM_ICON_NONE = "- 没有 / 预设 -";
VUHDO_I18N_CUSTOM_ICON_GLOSSY = "光滑";
VUHDO_I18N_CUSTOM_ICON_MOSAIC = "马塞克";
VUHDO_I18N_CUSTOM_ICON_CLUSTER = "群组";
VUHDO_I18N_CUSTOM_ICON_FLAT = "标志";
VUHDO_I18N_CUSTOM_ICON_SPOT = "点";
VUHDO_I18N_CUSTOM_ICON_CIRCLE = "圈";
VUHDO_I18N_CUSTOM_ICON_SKETCHED = "勾";
VUHDO_I18N_CUSTOM_ICON_RHOMB = "菱形";
VUHDO_I18N_ERROR_NO_PROFILE = "错误: 没有存档名称: ";
VUHDO_I18N_PROFILE_LOADED = "存档成功存取: ";
VUHDO_I18N_PROFILE_SAVED = "成功保存存档: ";
VUHDO_I18N_PROFILE_OVERWRITE_1 = "存档";
VUHDO_I18N_PROFILE_OVERWRITE_2 = "正被其他小号使用中";
VUHDO_I18N_PROFILE_OVERWRITE_3 = "\n- 覆盖: 原设定档将被覆盖.\n- 复制: 建立和保存另一备份. 原设定档仍保留.";
VUHDO_I18N_COPY = "复制";
VUHDO_I18N_OVERWRITE = "覆盖";
VUHDO_I18N_DISCARD = "取消";
-- 2.0, alpha #2
VUHDO_I18N_DEF_BAR_BACKGROUND_SOLID = "背景: 固定颜色";
VUHDO_I18N_DEF_BAR_BACKGROUND_CLASS_COLOR = "背景: 职业颜色";
-- 2.0 alpha #9
VUHDO_I18N_BOUQUET_DEBUFF_BAR_COLOR = "标志: 减益, 已设定";
-- 2.0 alpha #11
VUHDO_I18N_DEF_BOUQUET_BAR_HEALTH = "血量条: (自动)";
VUHDO_I18N_UPDATE_RAID_TARGET = "标志: 团队目标颜色";
VUHDO_I18N_BOUQUET_OVERHEAL_HIGHLIGHT = "颜色: 过量治疗标示";
VUHDO_I18N_BOUQUET_EMERGENCY_COLOR = "颜色: 紧急";
VUHDO_I18N_BOUQUET_HEALTH_ABOVE = "标志: 血量 > %";
VUHDO_I18N_BOUQUET_RESURRECTION = "标志: 复活";
VUHDO_I18N_BOUQUET_STACKS_COLOR = "颜色: 层数";
-- 2.1
VUHDO_I18N_DEF_BOUQUET_BAR_HEALTH_SOLID = "血量: (通用, 固定颜色)";
VUHDO_I18N_DEF_BOUQUET_BAR_HEALTH_CLASS_COLOR = "血量: (通用, 职业颜色)";
-- 2.9
VUHDO_I18N_NO_TARGET = "[没有目标]";
VUHDO_I18N_TT_LEFT = " 左点击: ";
VUHDO_I18N_TT_RIGHT = " 右点击: ";
VUHDO_I18N_TT_MIDDLE = " 中键: ";
VUHDO_I18N_TT_BTN_4 = " 第四键: ";
VUHDO_I18N_TT_BTN_5 = " 第五键: ";
VUHDO_I18N_TT_WHEEL_UP = " 滚轮向上: ";
VUHDO_I18N_TT_WHEEL_DOWN = " 滚轮向下: ";
-- 2.13
VUHDO_I18N_BOUQUET_CLASS_ICON = "图标: 职业";
VUHDO_I18N_BOUQUET_RAID_ICON = "图标: 团队目标";
VUHDO_I18N_BOUQUET_ROLE_ICON = "图标: 角色";
-- 2.18
VUHDO_I18N_LOAD_PROFILE = "存取存档";
-- 2.20
VUHDO_I18N_DC_SHIELD_NO_MACROS = "这号没有宏空位... d/c shield暂时无效.";
VUHDO_I18N_BROKER_TOOLTIP_1 = "|cffffff00左点击|r 显示选项表";
VUHDO_I18N_BROKER_TOOLTIP_2 = "|cffffff00右点击|r 显示弹出视窗表";
-- 2.54
VUHDO_I18N_HOURS = "小时";
VUHDO_I18N_MINS = "分";
VUHDO_I18N_SECS = "秒";
-- 2.65
VUHDO_I18N_BOUQUET_CUSTOM_DEBUFF = "图标:自定减益";
-- 2.66
VUHDO_I18N_OFF = "不在";
VUHDO_I18N_GHOST = "鬼魂";
VUHDO_I18N_RIP = "死亡";
VUHDO_I18N_DC = "断线";
VUHDO_I18N_FOC = "焦点";
VUHDO_I18N_TAR = "目标";
VUHDO_I18N_VEHICLE = "载具";
-- 2.67
VUHDO_I18N_BUFF_WATCH = "增益监视";
VUHDO_I18N_HOTS = "HoTs";
VUHDO_I18N_DEBUFFS = "Debuffs";
VUHDO_I18N_BOUQUET_PLAYER_FOCUS = "标志: 玩家焦点";
-- 2.69
VUHDO_I18N_SIDE_BAR_LEFT = "左侧";
VUHDO_I18N_SIDE_BAR_RIGHT = "右侧";
VUHDO_I18N_OWN_PET = "我的宠物";
-- 2.72
VUHDO_I18N_SPELL = "法术";
VUHDO_I18N_COMMAND = "指令";
VUHDO_I18N_MACRO = "巨集";
VUHDO_I18N_ITEM = "物品";
-- 2.75
VUHDO_I18N_ERR_NO_BOUQUET = "\"%s\" 尝试关联 \"%s\" 但它不存在!";

VUHDO_I18N_BOUQUET_HEALTH_BELOW_ABS = "标志: 血量 < k";
VUHDO_I18N_BOUQUET_HEALTH_ABOVE_ABS = "标志: 血量 > k";
VUHDO_I18N_SPELL_LAYOUT_NOT_EXIST = "法术配置设定 \"%s\" 不存在.";

--VUHDO_I18N_ADDON_WARNING = "WARNING: Addon |cffffffff\"%s\"|r is enabled along with VuhDo, which may be problematic. Reason: %s";
--VUHDO_I18N_MAY_CAUSE_LAGS = "May cause severe lags.";

VUHDO_I18N_DISABLE_BY_VERSION = "!!! VUHDO 已经停用 !!! 这个版本需要游戏版本 %d 或更新的版本才能使用 !!!"

VUHDO_I18N_BOUQUET_STATUS_ALTERNATE_POWERS = "状态列: 特殊能量 %"
VUHDO_I18N_BOUQUET_ALTERNATE_POWERS_ABOVE = "标志: 特殊能量 > %";
VUHDO_I18N_DEF_ALTERNATE_POWERS = "职业特殊能量";
VUHDO_I18N_DEF_TANK_CDS_EXTENDED = "Tank Cooldowns extd";
VUHDO_I18N_BOUQUET_HOLY_POWER_EQUALS = "标志: 我的圣能 ==";
VUHDO_I18N_DEF_PLAYER_HOLY_POWER = "玩家圣能";
VUHDO_I18N_CUSTOM_ICON_ONE_THIRD = "三份: 一";
VUHDO_I18N_CUSTOM_ICON_TWO_THIRDS = "三份: 二"
VUHDO_I18N_CUSTOM_ICON_THREE_THIRDS = "三份: 三";
VUHDO_I18N_DEF_ROLE_ICON = "角色图标";

VUHDO_I18N_DEF_BOUQUET_TARGET_HEALTH = "血量 (通用，目标)";

VUHDO_I18N_TAPPED_COLOR = "标志: 无效目标";
VUHDO_I18N_ENEMY_STATE_COLOR = "颜色: 友方/敌方";
VUHDO_I18N_FRIEND_STATUS = "标志: 友方";
VUHDO_I18N_FOE_STATUS = "标志: 敌方";
VUHDO_I18N_BOUQUET_STATUS_ALWAYS_FULL = "状态列: 永远满的";
VUHDO_I18N_BOUQUET_STATUS_FULL_IF_ACTIVE = "状态列: 启动时满的";
VUHDO_I18N_AOE_ADVICE = "图标: 辅助建议";
VUHDO_I18N_DEF_AOE_ADVICE = "辅助建议";

VUHDO_I18N_BOUQUET_DURATION_ABOVE = "标志: 持续时间 > 秒";
VUHDO_I18N_BOUQUET_DURATION_BELOW = "标志: 持续时间 < 秒";
VUHDO_I18N_DEF_WRACK = "Sinestra: Wrack";

VUHDO_I18N_DEF_DIRECTION_ARROW = "方向箭头";
VUHDO_I18N_BOUQUET_DIRECTION_ARROW = "方向箭头";
VUHDO_I18N_DEF_RAID_LEADER = "图标: 团队队长";
VUHDO_I18N_DEF_RAID_ASSIST = "图标: 团队助理";
VUHDO_I18N_DEF_MASTER_LOOTER = "图标: 主要分装";
VUHDO_I18N_DEF_PVP_STATUS = "图标: PvP 状态";

VUHDO_I18N_GRID_MOUSEOVER_SINGLE = "团队框架: 鼠标指向单一";
VUHDO_I18N_GRID_BACKGROUND_BAR = "团队框架: 背景条";
VUHDO_I18N_DEF_BIT_O_GRID = "Bit'o'Grid";
VUHDO_I18N_DEF_VUHDO_ESQUE = "Vuhdo'esque";


VUHDO_I18N_DEF_ROLE_COLOR = "角色颜色";
VUHDO_I18N_BOUQUET_ROLE_TANK = "标志: 坦克角色";
VUHDO_I18N_BOUQUET_ROLE_DAMAGE = "标志: 伤害输出角色";
VUHDO_I18N_BOUQUET_ROLE_HEALER = "标志: 治疗者角色";

VUHDO_I18N_BOUQUET_STACKS = "标志: 层数 >";
VUHDO_I18N_DEF_PLAYER_CHI = "Player Chi";

VUHDO_I18N_BOUQUET_TARGET_RAID_ICON = "图标: 目标的团队标记";
VUHDO_I18N_BOUQUET_OWN_CHI_EQUALS = "标志: 我的真气 ==";
VUHDO_I18N_CUSTOM_ICON_FOUR_THIRDS = "三份: 四";
VUHDO_I18N_CUSTOM_ICON_FIVE_THIRDS = "三份: 五";
VUHDO_I18N_DEF_RAID_CDS = "团队冷却";
VUHDO_I18N_BOUQUET_STATUS_CLASS_COLOR_IF_ACTIVE = "标志: 启动时使用职业颜色";

VUHDO_I18N_LETHAL_POISONS = "Lethal Poisons";
VUHDO_I18N_NON_LETHAL_POISONS = "Non-lethal Poisons";
VUHDO_I18N_DEF_COUNTER_SHIELD_ABSORB = "Counter: All Shield Absorb #k"
VUHDO_I18N_BUFFC_WEAPON_ENCHANT_OFF = "Weapon Enchant (offhand)";

VUHDO_I18N_DEF_PVP_FLAGS="PvP 标志";
VUHDO_I18N_DEF_STATUS_SHIELD = "状态列: 盾";

VUHDO_I18N_TARGET = "目标";
VUHDO_I18N_FOCUS = "焦点目标";
VUHDO_I18N_DEF_STATUS_OVERSHIELDED = "状态列: 过量盾";

-- 3.65
VUHDO_I18N_BOUQUET_OUTSIDE_ZONE = "标志: 玩家区域, 外面";
VUHDO_I18N_BOUQUET_INSIDE_ZONE = "标志: 玩家区域, 里面";
VUHDO_I18N_BOUQUET_WARRIOR_TANK = "标志: 坦克角色, 战士";
VUHDO_I18N_BOUQUET_PALADIN_TANK = "标志: 坦克角色, 圣骑士";
VUHDO_I18N_BOUQUET_DK_TANK = "标志: 坦克角色, 死亡骑士";
VUHDO_I18N_BOUQUET_MONK_TANK = "标志: 坦克角色，武僧";
VUHDO_I18N_BOUQUET_DRUID_TANK = "标志: 坦克角色，德鲁伊";

-- 3.66
VUHDO_I18N_BOUQUET_PALADIN_BEACON = "圣骑士道标";
VUHDO_I18N_BOUQUET_STATUS_EXCESS_ABSORB = "状态列: 过量吸收 %";
VUHDO_I18N_BOUQUET_STATUS_TOTAL_ABSORB = "状态列: 总吸收 %";

-- 3.67
VUHDO_I18N_NO_BOSS = "[没有 NPC]";
VUHDO_I18N_BOSSES = "NPC";

-- 3.71
VUHDO_I18N_BOUQUET_CUSTOM_FLAG = "自订标志";
VUHDO_I18N_ERROR_CUSTOM_FLAG_LOAD = "{VuhDo} 错误: 自订标志验证器没有载入:";
VUHDO_I18N_ERROR_CUSTOM_FLAG_EXECUTE = "{VuhDo} 错误: 自订标志验证器没有执行:";
VUHDO_I18N_ERROR_CUSTOM_FLAG_BLOCKED = "{VuhDo} 错误: 自订标志验证器尝试呼叫被禁用的函数，这是不允许的。请记得只能导入来源可以信赖的字符串。";
VUHDO_I18N_ERROR_INVALID_VALIDATOR = "{VuhDo} 错误: 无效的验证器:";

-- 3.72
VUHDO_I18N_BOUQUET_DEMON_HUNTER_TANK = "标志: 坦克角色，恶魔猎手";
VUHDO_I18N_DEMON_HUNTERS = "恶魔猎手";

-- 3.77
VUHDO_I18N_DEF_COUNTER_OVERFLOW_ABSORB = "计数器: 大秘境 过量吸收 #k";

-- 3.79
VUHDO_I18N_DEFAULT_RES_ANNOUNCE_MASS = "正在群体复活!";

-- 3.81
VUHDO_I18N_BOUQUET_OVERFLOW_COUNTER = "大秘境词缀 溢出";

-- 3.82
VUHDO_I18N_SPELL_TRACE = "图标: 法术追踪";
VUHDO_I18N_DEF_SPELL_TRACE = "法术追踪";
VUHDO_I18N_TRAIL_OF_LIGHT = "图标: 光明尾迹";
VUHDO_I18N_DEF_TRAIL_OF_LIGHT = "光明尾迹";

-- 3.83
VUHDO_I18N_BOUQUET_STATUS_MANA_HEALER_ONLY = "状态列: 法力 % (治疗者专用)";
VUHDO_I18N_DEF_BOUQUET_BAR_MANA_HEALER_ONLY = "法力条: 法力 (治疗者专用)";

-- 3.98
VUHDO_I18N_BOUQUET_HAS_SUMMON_ICON = "图标: 已召唤";
VUHDO_I18N_DEF_BOUQUET_HAS_SUMMON = "召唤状态图标";
VUHDO_I18N_DEF_BOUQUET_ROLE_AND_SUMMON = "角色 & 召唤状态图标";

-- 3.99
VUHDO_I18N_BOUQUET_IS_PHASED = "图标：阶段性";
VUHDO_I18N_BOUQUET_IS_WAR_MODE_PHASED = "图标：战争模式阶段";
VUHDO_I18N_DEF_BOUQUET_IS_PHASED = "阶段性图标";

-- 3.101
VUHDO_I18N_DEF_PLAYER_COMBO_POINTS = "玩家组合点";
VUHDO_I18N_BOUQUET_OWN_COMBO_POINTS_EQUALS = "标志: 自己的组合点 ==";
VUHDO_I18N_DEF_PLAYER_SOUL_SHARDS = "玩家灵魂碎片";
VUHDO_I18N_BOUQUET_OWN_SOUL_SHARDS_EQUALS = "标志: 自己的灵魂碎片 ==";
VUHDO_I18N_DEF_PLAYER_RUNES = "玩家符文";
VUHDO_I18N_BOUQUET_OWN_RUNES_EQUALS = "标志: 自己的符文 ==";
VUHDO_I18N_DEF_PLAYER_ARCANE_CHARGES = "玩家的奥术冲击";
VUHDO_I18N_BOUQUET_OWN_ARCANE_CHARGES_EQUALS = "标志: 自己的奥术冲击 ==";
VUHDO_I18N_DEBUFF_BLACKLIST_ADDED = "添加 \"[%s] %s\" 到debuff的候选名单.";

-- 3.104
VUHDO_I18N_PLAY_SOUND_FILE_ERR = "无法播放音效 \"%s\": %s";
VUHDO_I18N_PLAY_SOUND_FILE_DEBUFF_ERR = "无法为标准的DEBUFF \"%s\" 播放音效. 调整设置 'VuhDo Options > Debuffs > Standard > Debuff Sound'.";
VUHDO_I18N_PLAY_SOUND_FILE_CUSTOM_DEBUFF_ERR = "无法为自定义的DEBUFF \"%s\" 播放音效 \"%s\". 调整设置 'VuhDo Options > Debuffs > Custom'.";

