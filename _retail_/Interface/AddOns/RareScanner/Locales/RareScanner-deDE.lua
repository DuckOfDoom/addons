﻿-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "deDE", false);

if AL then
	AL["ALARM_MESSAGE"] = "Ein seltener NSC wurde gefunden, schau auf die Karte!"
	AL["ALARM_SOUND"] = "Warnton für seltene NSCs"
	AL["ALARM_SOUND_DESC"] = "Ton, der abgespielt wird, wenn ein seltener NSC auf deiner Minikarte auftaucht"
	AL["ALARM_TREASURES_SOUND"] = "Warnton für Ereignisse/Schätze"
	AL["ALARM_TREASURES_SOUND_DESC"] = "Der Ton, der abgespielt wird, wenn ein Schatz oder eine Truhe auf deiner Minikarte auftaucht."
	AL["AUTO_HIDE_BUTTON"] = "Automatisches Ausblenden von Knopf und Miniatur"
	AL["AUTO_HIDE_BUTTON_DESC"] = "Blende den Knopf und die Miniaturansicht automatisch nach der ausgewählten Zeit aus (in Sekunden). Falls du null Sekunden auswählst, werden der Knopf und die Miniatur nicht automatisch ausgeblendet. "
	AL["CLASS_HALLS"] = "Ordenshallen"
	AL["CLEAR_FILTERS_SEARCH"] = "Alle zeigen"
	AL["CLEAR_FILTERS_SEARCH_DESC"] = "Macht die vorherige Suche rückgängig und zeigt die komplette Liste an."
	AL["CLICK_TARGET"] = "Klicken, um den NSC anzuvisieren"
	AL["CMD_DISABLE_ALERTS"] = "RareScanner-Warnungen für NPC, Schätze und Ereignisse deaktiviert"
	AL["CMD_DISABLE_CONTAINERS_ALERTS"] = "RareScanner-Alarme für Schätze deaktiviert"
	AL["CMD_DISABLE_EVENTS_ALERTS"] = "RareScanner-Alarme für Ereignisse deaktiviert"
	AL["CMD_DISABLE_RARES_ALERTS"] = "RareScanner-Alarme für seltene NPC deaktiviert"
	AL["CMD_ENABLE_ALERTS"] = "RareScanner-Warnungen für seltene NPC, Schätze und Ereignisse aktiviert"
	AL["CMD_ENABLE_CONTAINERS_ALERTS"] = "RareScanner-Alarme für Schätze aktiviert"
	AL["CMD_ENABLE_EVENTS_ALERTS"] = "RareScanner-Alarme für Ereignisse aktiviert"
	AL["CMD_ENABLE_RARES_ALERTS"] = "RareScanner-Alarme für seltene NPC aktiviert"
	AL["CMD_HELP1"] = "Liste aller Befehle"
	AL["CMD_HELP2"] = "Zeige/Verstecke alle Icons auf der Weltkarte"
	AL["CMD_HELP3"] = "Zeige/Verstecke Icons von Ereignissen auf der Weltkarte"
	AL["CMD_HELP4"] = "Zeige/Verstecke Icons von Schätzen auf der Weltkarte"
	AL["CMD_HELP5"] = "Zeige/Verstecke Icons von seltenen NPC auf der Weltkarte"
	AL["CMD_HELP6"] = "Aktiviere/Deaktiviere alle Alarme"
	AL["CMD_HELP7"] = "Aktiviere/Deaktiviere Alarme für Ereignisse"
	AL["CMD_HELP8"] = "Aktiviere/Deaktiviere Alarme für Schätze"
	AL["CMD_HELP9"] = "Aktiviere/Deaktiviere Alarme für seltene NPC"
	AL["CMD_HIDE"] = "Verstecke RareScanner Icons auf der Weltkarte"
	AL["CMD_HIDE_EVENTS"] = "Verstecke RareScanner Icons für Ereignisse auf der Weltkarte"
	AL["CMD_HIDE_RARES"] = "Verstecke RareScanner Icons für seltene NPC auf der Weltkarte"
	AL["CMD_HIDE_TREASURES"] = "Verstecke RareScanner Icons für Schätze auf der Weltkarte"
	AL["CMD_SHOW"] = "Zeige RareScanner Icons auf der Weltkarte"
	AL["CMD_SHOW_EVENTS"] = "Zeige RareScanner Icons für Ereignisse auf der Weltkarte"
	AL["CMD_SHOW_RARES"] = "Zeige RareScanner Icons für seltene NPC auf der Weltkarte"
	AL["CMD_SHOW_TREASURES"] = "Zeige RareScanner Icons für Schätze auf der Weltkarte"
	AL["CONTAINER"] = "Kisten"
	AL["DATABASE_HARD_RESET"] = "Mit der letzten Erweiterung und der letzten Version von RareScanner wurden umfangreiche Änderungen an der Datenbank vorgenommen. Um Inkonsistenzen zu vermeiden, ist das Zurücksetzen der Datenbank notwendig. Bitte entschuldige die Unannehmlichkeiten."
	AL["DISABLE_SEARCHING_RARE_TOOLTIP"] = "Deaktiviert Alarme für diesen seltenen NSC"
	AL["DISABLE_SOUND"] = "Audio Benachrichtigungen deaktivieren"
	AL["DISABLE_SOUND_DESC"] = "Wenn diese Option aktiviert ist, werden keine Audio Benachrichtigungen abgespielt."
	AL["DISABLED_SEARCHING_RARE"] = "Alarme für diesen seltenen NSC wurden deaktiviert:"
	AL["DISPLAY"] = "Anzeige"
	AL["DISPLAY_BUTTON"] = "Aktiviere die Schaltfläche und die Miniaturansicht"
	AL["DISPLAY_BUTTON_CONTAINERS"] = "Aktiviere die Schaltfläche für Schätze/Kisten"
	AL["DISPLAY_BUTTON_CONTAINERS_DESC"] = "Aktiviere die Anzeige der Schaltfläche für Schätze/Kisten. Dies beeinflusst nicht den Alarmton und die Chatmeldungen."
	AL["DISPLAY_BUTTON_DESC"] = "Bei Deaktivierung werden die Schaltfläche und die Miniaturansicht nicht mehr angezeigt. Dies beeinflusst nicht den Alarmton und die Chatwarnungen."
	AL["DISPLAY_BUTTON_SCALE"] = "Größe der Schaltfläche und Miniatur"
	AL["DISPLAY_BUTTON_SCALE_DESC"] = "Hiermit wird die Größe der Schaltfläche und der Miniatur angepasst, wobei 0.85 der Standardwert ist"
	AL["DISPLAY_BUTTON_SCALE_POSITION"] = "Skalierungs- und Positionseinstellungen"
	AL["DISPLAY_CONTAINER_ICONS"] = "Icons der Kisten/Schätze auf der Weltkarte umschalten"
	AL["DISPLAY_CONTAINER_ICONS_DESC"] = "Wenn deaktiviert, werden keine Icons von Kisten/Schätze auf der Weltkarte angezeigt."
	AL["DISPLAY_EVENT_ICONS"] = "Icons der Ereignisse auf der Weltkarte umschalten"
	AL["DISPLAY_EVENT_ICONS_DESC"] = "Wenn deaktiviert, werden keine Icons von Ereignissen auf der Weltkarte angezeigt."
	AL["DISPLAY_LOG_WINDOW"] = "Aktiviere die Anzeige für zuvor gefundene Meldungen"
	AL["DISPLAY_LOG_WINDOW_DESC"] = "Bei Deaktivierung wird das Fenster für zuvor gefundene Meldungen nicht mehr angezeigt."
	AL["DISPLAY_LOOT_ON_MAP"] = "Zeige Beute in den Karten-Tooltips"
	AL["DISPLAY_LOOT_ON_MAP_DESC"] = "Beute von NPC/Kisten im Tooltip umschalten welche angezeigt werden, wenn man mit der Maus über die Icons fährt. "
	AL["DISPLAY_LOOT_PANEL"] = "Zeige die Leiste mit möglicher Beute"
	AL["DISPLAY_LOOT_PANEL_DESC"] = "Wenn dies aktiviert ist, wird eine Leiste mit möglicher Beute, die von dem NPC geplündert werden kann, angezeigt"
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS"] = "Anzeige von unentdeckten Icons auf der Karte umschalten."
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS_DESC"] = "Wenn deaktiviert, werden Icons von unentdeckten Rares (NPC, rote und orangene Icons), Kisten oder Ereignissen nicht auf der Weltkarte angezeigt. "
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS"] = "Anzeige von nicht entdeckten Icons auf de Karte für ältere Erweiterungen umschalten."
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS_DESC"] = "Wenn deaktiviert, werden Icons von unentdeckten Rares (NPC, rote und orangene Icons), Kisten oder Ereignissen von älteren Erweiterungen nicht auf der Weltkarte angezeigt. "
	AL["DISPLAY_MINIATURE"] = "Miniaturansicht aktivieren"
	AL["DISPLAY_MINIATURE_DESC"] = "Bei Deaktivierung wird die Miniaturansicht nicht mehr angezeigt."
	AL["DISPLAY_NPC_ICONS"] = "Icons von Rares (NPC) auf der Weltkarte umschalten"
	AL["DISPLAY_NPC_ICONS_DESC"] = "Wenn deaktiviert, werden Icons von Rares (NPC) auf der Weltkarte nicht angezeigt. "
	AL["DISPLAY_OPTIONS"] = "Anzeigeeinstellungen"
	AL["DUNGEONS_SCENARIOS"] = "Instanzen/Szenarien"
	AL["ENABLE_MARKER"] = "Zielmarkierung umschalten"
	AL["ENABLE_MARKER_DESC"] = "Wenn aktiviert, wird eine Markierung über dem Ziel angezeigt, sobald die Hauptschaltfläche angeklickt wird."
	AL["ENABLE_SCAN_CHAT"] = "Suche nach Rares (NPC) im Chat umschalten"
	AL["ENABLE_SCAN_CHAT_DESC"] = "Wenn aktiviert, wirst Du visuell und akustisch darauf hingewiesen, wenn ein Rare (NPC) schreit oder eine Chatnachricht in einem Bezug zu einem Rare steht. "
	AL["ENABLE_SCAN_CONTAINERS"] = "Die Suche nach Schätzen oder Truhen aktivieren"
	AL["ENABLE_SCAN_CONTAINERS_DESC"] = "Wenn diese Option aktiviert ist, wirst du visuell und akustisch gewarnt, wenn ein Schatz oder eine Truhe auf deiner Minikarte auftaucht."
	AL["ENABLE_SCAN_EVENTS"] = "Die Suche nach Ereignissen aktivieren"
	AL["ENABLE_SCAN_EVENTS_DESC"] = "Wenn diese Option aktiviert ist, wirst du visuell und akustisch gewarnt, wenn ein Ereignis auf deiner Minikarte auftaucht."
	AL["ENABLE_SCAN_GARRISON_CHEST"] = "Die Suche nach der Garnisonskiste aktivieren"
	AL["ENABLE_SCAN_GARRISON_CHEST_DESC"] = "Wenn dies aktiviert ist, wirst du jedes mal visuell und per Ton gewarnt, wenn deine Garnisonskiste auf der Minikarte angezeigt wird. "
	AL["ENABLE_SCAN_IN_INSTANCE"] = "Die Suche innerhalb von Instanzen aktivieren"
	AL["ENABLE_SCAN_IN_INSTANCE_DESC"] = "Wenn dies aktiviert ist, wird das Addon wie üblich funktionieren, während du in einer Instanz, einem Raid, o. ä. bist. "
	AL["ENABLE_SCAN_ON_TAXI"] = "Scannen während des Transports umschalten"
	AL["ENABLE_SCAN_ON_TAXI_DESC"] = "Wenn diese Einstellungen akvitiert ist, funktioniert das Add-on während des Transports (Flug, Boot, etc.) normal. "
	AL["ENABLE_SCAN_RARES"] = "Die Suche nach seltenen NSCs aktivieren"
	AL["ENABLE_SCAN_RARES_DESC"] = "Wenn diese Option aktiviert ist, wirst du visuell und akustisch gewarnt, wenn ein seltener NSC auf deiner Minikarte auftaucht."
	AL["ENABLE_SEARCHING_RARE_TOOLTIP"] = "Aktiviert Alarme für diesen seltenen NSC"
	AL["ENABLE_TOMTOM_SUPPORT"] = "TomTom-Unterstützung umschalten"
	AL["ENABLE_TOMTOM_SUPPORT_DESC"] = "Wenn diese Einstellung aktiviert ist, werden TomTom-Wegpunkte für das gefundene Objekt hinzugefügt. "
	AL["ENABLED_SEARCHING_RARE"] = "Alarme für diesen seltenen NSC wurden aktiviert:"
	AL["EVENT"] = "Ereignis"
	AL["FILTER"] = "NPC Filter"
	AL["FILTER_CONTINENT"] = "Kontinent/Kategorie"
	AL["FILTER_CONTINENT_DESC"] = "Name des Kontinents oder der Kategorie"
	AL["FILTER_NPCS_ONLY_MAP"] = "Filter nur auf der Weltkarte aktivieren"
	AL["FILTER_NPCS_ONLY_MAP_DESC"] = "Wenn aktiviert, erhältst Du weiterhin Alarme von gefilterten NPC. Diese werden allerdings nicht auf der Weltkarte angezeigt. Wenn deaktiviert, wirst Du keinerlei Alarme von gefilterten NPC erhalten. "
	AL["FILTER_RARE_LIST"] = "Filter für die Suche nach seltenen NPC"
	AL["FILTER_RARE_LIST_DESC"] = "Schalte die Suche für diesen seltenen NPC um. Wenn es deaktiviert ist, wirst du keine Warnung erhalten, falls dieser NPC gefunden wird."
	AL["FILTER_ZONE"] = "Zone"
	AL["FILTER_ZONE_DESC"] = "Zone innerhalb des Kontinents oder der Kategorie"
	AL["FILTER_ZONES_LIST"] = "Gebietsliste"
	AL["FILTER_ZONES_LIST_DESC"] = "Schalte Warnungen für diese Zone um. Wenn es deaktiviert ist, wirst du keine Warnung erhalten, falls ein seltener NPC, Ereignis oder Schatz in dieser Zone gefunden wird."
	AL["FILTER_ZONES_ONLY_MAP"] = "Aktiviert Filter nur auf der Weltkarte"
	AL["FILTER_ZONES_ONLY_MAP_DESC"] = "Wenn aktiviert erhältst Du weiterhin Alarme von NPC, welche zu gefilterten Zonen gehören. Diese werden allerdings nicht auf der Karte angezeigt. Wenn deaktiviert, wirst Du keinerlei Alarme von NPC erhalten, welche zu den gefilterten Zonen gehören. "
	AL["FILTERS"] = "Filter für seltene NPCs"
	AL["FILTERS_SEARCH"] = "Suchen"
	AL["FILTERS_SEARCH_DESC"] = "Gib den Namen des NSCs ein, nach dem die untenstehende Liste durchsucht werden soll."
	AL["GENERAL_OPTIONS"] = "Allgemeine Einstellungen"
	AL["JUST_SPAWNED"] = "%s ist gerade erschienen. Überprüfe Deine Karte!"
	AL["LEFT_BUTTON"] = "Linksklick"
	AL["LOCK_BUTTON_POSITION"] = "Position der Sperren-Schaltfläche"
	AL["LOCK_BUTTON_POSITION_DESC"] = "Wenn aktiviert, kann die Position der Schaltfläche nicht verändert werden. "
	AL["LOG_WINDOW_AUTOHIDE"] = "Automatisches Ausblenden der gesammelten NPC-Schaltflächen"
	AL["LOG_WINDOW_AUTOHIDE_DESC"] = "Blende jede Schaltfläche von NPCs nach gewählter Zeit (in Minuten) aus. Falls du null Minuten wählst, werden die Schaltflächen bleiben, bis du das Fenster schließt oder es die maximale Anzahl erreicht (in diesem Fall werden die ältesten Anzeigen ersetzt)."
	AL["LOG_WINDOW_OPTIONS"] = "Optionen für das Log-Fenster"
	AL["LOOT_CATEGORY_FILTERED"] = "Filter für die folgende Kategorie/Unterkategorie aktiviert: %s%s. Du kannst diesen Filter über das RareScanner Add-on Menü oder über einen Klick auf das Beute-Icon wieder deaktivieren."
	AL["LOOT_CATEGORY_FILTERS"] = "Kategoriefilter"
	AL["LOOT_CATEGORY_FILTERS_DESC"] = "Filtere die gezeigte Beute nach der Kategorie"
	AL["LOOT_CATEGORY_NOT_FILTERED"] = "Filter für die folgende Kategorie/Unterkategorie deaktiviert: %s%s"
	AL["LOOT_DISPLAY_OPTIONS"] = "Anzeigeoptionen"
	AL["LOOT_DISPLAY_OPTIONS_DESC"] = "Anzeigeoptionen für die Beuteleiste"
	AL["LOOT_FILTER_COLLECTED"] = "Gesammelte Wildtiere, Reittiere und Spielzeuge filtern. "
	AL["LOOT_MIN_QUALITY"] = "Minimale Beutequalität"
	AL["LOOT_MIN_QUALITY_DESC"] = "Definiere die minimale Qualität der Beute, die in der Beuteleiste angezeigt werden soll"
	AL["LOOT_OPTIONS"] = "Beuteoptionen"
	AL["LOOT_OTHER_FILTERS"] = "Andere Filter"
	AL["LOOT_OTHER_FILTERS_DESC"] = "Andere Filter"
	AL["LOOT_PANEL_OPTIONS"] = "Optionen für die Beuteleiste"
	AL["LOOT_SUBCATEGORY_FILTERS"] = "Unterkategorie-Filter"
	AL["LOOT_TOGGLE_FILTER"] = "Alt-Linksklick um Filter umzuschalten"
	AL["LOOT_TOOLTIP_POSITION"] = "Beutetooltipposition"
	AL["LOOT_TOOLTIP_POSITION_DESC"] = "Definiert im Verhältnis zur Schaltfläche, wo der Beute-Tooltip angezeigt wird, wenn Du mit der Maus über ein Icon fährst."
	AL["MAIN_BUTTON_OPTIONS"] = "Optionen für die Hauptschaltfläche"
	AL["MAP_MENU_DISABLE_LAST_SEEN_CONTAINER_FILTER"] = "Zeigt Kisten, welche Du vor langer Zeit gesehen hast aber erneut spawnen können."
	AL["MAP_MENU_DISABLE_LAST_SEEN_EVENT_FILTER"] = "Zeigt Ereignisse, welche Du vor langer Zeit gesehen hast aber erneut spawnen können."
	AL["MAP_MENU_DISABLE_LAST_SEEN_FILTER"] = "Zeigt seltene NPC, welche Du vor langer Zeit gesehen hast aber erneut spawnen können."
	AL["MAP_MENU_SHOW_CONTAINERS"] = "Zeige Icons von Kisten auf der Karte"
	AL["MAP_MENU_SHOW_EVENTS"] = "Zeige Icons von Ereignissen auf der Karte"
	AL["MAP_MENU_SHOW_NOT_DISCOVERED"] = "Enentdeckte Objekte"
	AL["MAP_MENU_SHOW_NOT_DISCOVERED_OLD"] = "Enentdeckte Objekte (ältere Erweiterungen)"
	AL["MAP_MENU_SHOW_RARE_NPCS"] = "Zeige Icons von seltenen NPC auf der Karte"
	AL["MAP_NEVER"] = "Niemals"
	AL["MAP_OPTIONS"] = "Kartenoptionen"
	AL["MAP_SCALE_ICONS"] = "Größe der Icons"
	AL["MARKER"] = "Zielmarkierung"
	AL["MESSAGE_OPTIONS"] = "Nachrichtenoptionen"
	AL["MIDDLE_BUTTON"] = "Mittlere Maustaste"
	AL["NOT_TARGETEABLE"] = "Nicht anvisierbar"
	AL["PROFILES"] = "Profile"
	AL["RAIDS"] = "Schlachtzüge"
	AL["RESET_POSITION"] = "Position zurücksetzen"
	AL["RESET_POSITION_DESC"] = "Stellt die originale Position der Hauptschaltfläche wieder her."
	AL["SHOW_CHAT_ALERT"] = "Chatwarnungen ein-/ausschalten"
	AL["SHOW_CHAT_ALERT_DESC"] = "Zeigt eine private Nachricht im Chat, wenn ein Schatz, eine Truhe oder ein NSC gefunden wird."
	AL["SHOW_RAID_WARNING"] = "Schlachtzugswarnungen umschalten"
	AL["SHOW_RAID_WARNING_DESC"] = "Zeigt eine Schlachtzugswarnung an, wenn ein Schatz, eine Kiste oder ein NPC gefunden wird. "
	AL["SOUND"] = "Sound"
	AL["SOUND_OPTIONS"] = "Soundeinstellungen"
	AL["SOUND_VOLUME"] = "Lautstärke"
	AL["SOUND_VOLUME_DESC"] = "Stellt die Lautstärke von Alarmen ein."
	AL["SYNCRONIZATION_COMPLETED"] = "Synchronisation abgeschlossen"
	AL["SYNCRONIZE"] = "Datenbank synchronisieren"
	AL["SYNCRONIZE_DESC"] = "Hiermit wird analysiert, welche seltenen NPC und Schätze Du bereits getötet/gesammelt hast, wenn diese Teil eines Erfolgs sind. Diese werden von der Karte entfernt. Es gibt keinen Weg den Status eines seltenen NPC oder Schatzes zu ermitteln, welche nicht Teil eines Erfolgs sind. Diese werden weiterhin auf der Karte angezeigt."
	AL["TEST"] = "Test starten"
	AL["TEST_DESC"] = "Drücke die Taste, um eine Beispielwarnung zu zeigen. Du kannst die Anzeige anklicken und auf eine andere Position ziehen, wo sie von nun an angezeigt wird. "
	AL["TOC_NOTES"] = "Minikartenüberprüfung. Warnt dich visuell mit einer Schaltfläche und einer Miniaturansicht und spielt jedes Mal einen Ton ab, wenn ein seltener Gegner, ein Schatz/eine Kiste oder ein Ereignis auf deiner Minikarte entdeckt wird. "
	AL["TOGGLE_FILTERS"] = "Filter umschalten"
	AL["TOGGLE_FILTERS_DESC"] = "Alle FIlter auf einmal umschalten"
	AL["TOOLTIP_BOTTOM"] = "Unterseite"
	AL["TOOLTIP_CURSOR"] = "Cursor folgen"
	AL["TOOLTIP_LEFT"] = "Linke Seite"
	AL["TOOLTIP_RIGHT"] = "Rechte Seite"
	AL["TOOLTIP_TOP"] = "Oberseite"
	AL["UNKNOWN"] = "Unbekannt"
	AL["UNKNOWN_TARGET"] = "Unbekanntes Ziel"
	AL["ZONES_FILTER"] = "Zonenfilter"
	AL["ZONES_FILTERS_SEARCH_DESC"] = "Gib den Namen der Zone ein, um die untenstehende Liste zu filtern"

	-- CONTINENT names
	AL["ZONES_CONTINENT_LIST"] = {
		[9999] = "Ordenshallen"; --Class Halls
		[9998] = "Dunkelmond-Insel"; --Darkmoon Island
		[9997] = "Instanzen/Szenarien"; --Dungeons/Scenarios
		[9996] = "Schlachtzüge"; --Raids
		[9995] = "Unbekannt"; --Unknown
		[9994] = "Expedition islands"; --Expedition islands
	}
end