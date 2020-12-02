# Deadly Boss Mods Core

## [9.0.6-13-g2bc4cbe](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/2bc4cbee00f0deac258b4c599a909f9290f55f9c) (2020-11-30)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/9.0.6...2bc4cbee00f0deac258b4c599a909f9290f55f9c) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- Changed Doctor Ickus dispel warnings to be healer only by default instead of all classies with magic dispel.  
- Apply affecting combat filters to plaguefall trash warnings  
- Improved interrupt filter to automatically return false if channel info shows spell is not interruptable. Required for places like torghast where multiple enemies use same spells, and some are interrupt immune and some arent.  
- revert one that was missed in PR  
- Spanish Translates (#403)  
- tweak IsValidWarning for solo runs, where the check might not want to be as strict for certain spell casts  
- Applied combat filters to all trash warnings in Mists of Tirna to avoid situations where mobs in combat with other npcs nearby don't trigger trash warnings.  
- Easier to find move button (#399)  
    * Easier to find move button  
    * And the GUI options come in 2 x 2, hurrahh, hurrah  
- Fix variable name  
-  - Reworked the melee check prototypes to be more shadowlands robust in identifying what players are melee during encounter mechanics only real failure is survival hunters, no way to identify theme without inspecting, which won't work when all actions require info from same onupdate frame (can't quiry and wait for server reply for inspect requests mid fight, especially over and over again.  
     - Reworked miasma icons on Hungering too prioritize giving star to melee targets  
- Update localization.cn.lua (#398)  
- Update zhTW (#395)  
- Prep next dev cycle  
