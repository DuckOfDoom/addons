# BigWigs

## [v186](https://github.com/BigWigsMods/BigWigs/tree/v186) (2020-11-09)
[Full Changelog](https://github.com/BigWigsMods/BigWigs/compare/v185.4...v186) [Previous Releases](https://github.com/BigWigsMods/BigWigs/releases)

- Bump version  
- Loader: Swap our main loading event over to PLAYER\_ENTERING\_WORLD since ZONE\_CHANGED\_NEW\_AREA always seems to fire after the loading screen is over now.  
- Update options  
- Core/BossPrototype: Name invalid spells "INVALID" to prevent potential errors using :SpellName in a :format call  
- Update sounds  
- Parser: Error on non lowercase sound  
- Loader: Add a bunch of upvalues  
- Nyalotha/Wrathion: Lowercase sound  
- workflow: Fix ldoc failing when there is no change  
- Core/BossPrototype: Update Hunter dispel  
- Update `:Message2()` API to `:Message()`  
- Rename `:Message2()` API to `:Message()`  
- Rename `:Message()` API to `:MessageOld()`  
- Update zhTW (#847)  
- Update zhTW (#846)  
- Update workflow  
- Parser: Update API checks  
- Workflow: Don't ignore the parser  
- Update `:TargetMessage2()` to `:TargetMessage()`  
- Core/BossPrototype: Rename `:TargetMessage2()` to `:TargetMessage()`  
- Core/BossPrototype: Rename `:TargetMessage()` to `:TargetMessageOld()`  
- Loader: Add missing Sunwell zone id  
- parser: Tweak pattern matching for string cleaner  
- update zhCN (#845)  
- workflow: Don't change the ldoc line endings  
- Update option validation for `:Yell()` change  
- Update `:Yell2()` API to `:Yell()`  
- Core/BossPrototype: Rename `:Yell2()` API to `:Yell()`  
- Core/BossPrototype: Rename the deprecated API `:Yell()` to `:BossYell()`  
- CastleNathria: Remove load blocks  
- Improve locale description of the nameplate chat print  
- Core: Restrict the testing of nameplate bars to 1 bar to more accurately reflect real world usage.  
- Rename "Toggle Anchors" to "Toggle Moving Anchors"  
- Update workflow  
- Update workflow  
- Update workflow  
- Core/BossPrototype: Improve `:GetGossipOptions()` to return strings & add `:BossName(id)` to fetch boss names from the journal.  
- workflow: Install dos2unix  
- Core/BossPrototype: Allow checking UnitBuff by aura type  
- Add a buff message to common locale  
- Update luacheck  
- Update workflow  
