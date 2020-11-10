# Deadly Boss Mods Core

## [9.0.3-19-g5e2a075](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/5e2a075d741cc55b43912f53f15486d7bab5fc82) (2020-11-07)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.0.3...5e2a075d741cc55b43912f53f15486d7bab5fc82) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Fixed trivial check to make content trivial if player is 10 levels higher than content tuning, not 10 levels under it. :D  
- Missed a table  
- Simplify chain link code on sludgefist  
    Fixed chain links pairs 9 and 10 not having valid say bubbles  
    Fixed a regression that caused options with invalid spellIds to error out and fail instead of reporting out and allowing mod to continue to load  
- Fix a few changed/invalid spellId calls  
- Fixed bug causing crystalize timer not to start  
- Bug tweak last to avoid spam. if debug mode is off, cap logging level to 1 and 2, 3 should only be logged explictely if user enables it  
- Always fire debug callback even if it's not enabled, produce better transcriptor logs without needing users to actually turn debug on.  
- Miner timer adustments  
- Ensure that the option GUI never gets trivial filtered  
- Added new feature to automatically download all special anounce sounds on global level to regular announce sounds for content that is trivial for your level (on by default). Closes #379  
- comma  
- Update how istrivial works with a table that took annoying long to make. this table will applied to more features soon™  
- Update localization.tw.lua (#378)  
- Work around a new bug in GUI that didn't used to be there, but is there now. mod names can't be same as frame names or they refuse to load.  
- Minor adjustments to Ysondre  
- KR Update (#375)  
    Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Update DBM-Party-Shadowlands.toc (#377)  
    Correct title errors.  
- Update DBM-Shadowlands.toc (#376)  
    Add zh-TW Title.  
- Bump alpha for new test cycle  
