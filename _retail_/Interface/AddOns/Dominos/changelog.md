# Dominos Changelog

## 9.0.12

* Added a workaround for Titan Panel messing with the extra ability container

## 9.0.11

* Update Chinese localization (thanks Kuletco)
* Fixed an issue causing the columns silder to not adjust properly when resizing an action bar
* Fixed an issue with action buttons not initializing properly when increasing the size of an action bar after shrinking it
* The extra ability bar now has a static size. This should hopefully allow it to show up in cases where it wasn't before
* Disabled the hotkey text resizing bits for pet and stance buttons if Masque is enabled for those bars

## 9.0.10

* Yep, one more buttonThemer fix for the stance/pet bar

## 9.0.9

* Fix an issue with button theming that caused the bag bar to disappear

## 9.0.8

* Fix an issue causing paging settings to not be applied to new characters (thanks Kuletco)
* The extra action bar can now be skinned by Masque (thanks Kuletco)

## 9.0.7

* Disable mouse interaction on ExtraActionBarFrame to prevent issues with interacting with actions on the extra bar

## 9.0.6

* Fix hide extra ability bar artwork option not applying if after reloading your UI with the bar active
* Only reposition the ExtraAbilityContainer when initializing the extra bar

## 9.0.5

* Added Dominos_Roll back to retail build

## 9.0.4

* Add support for paging based upon cmd/meta keys
* Fix an issue preventing the click through setting from applying after reloading your UI

## 9.0.3

* Updated the IsActiveBattlefield check used by the honor bar

## 9.0.2

* Fixed an issue with override bar detection

## 9.0.1

* Fixed an issue causing the bindings migration code to not save. Bindings should be visible again

## 9.0.0

### Enhancements

* Added support for WoW 9.0.1 (Shadowlands Prepatch)
* Added support for the new Blizzard Quick Keybinding mode
* Added standard Blizzard binidngs for all action buttons created by Dominos
* Added support for Paladin auras on the class bar in 9.0
* Added paging support for Paladin auras (they're \[form\] macro conditions)
* Added a Shield Equipped paging option for Paladins and Warriors
* Action Bars now have individual groups in Masque
* The zone and extra action bars have been merged into the extra bar

### Fixes

* Removed the unnecessary extrabar show state from the extra ability bar
* Resized pet and stance button hotkey text to fit better within the buttons
* Fixed an issue with hiding actions currently assigned to an action bar
* Rewrote the keybindings handler. Cast on key down should work better on the DominosActionButtonXX buttons.

### Other

* Rewrote the action button portion of Dominos to be more compatibile with 9.0. Among other things, empty slots should now show up when expected.
* Moved the overlay interface code to Dominos_Config, trimmming the main file size a slight bit
* By default, Dominos no longer shows the Artifact/Azerite bar. You can change this the main options menu
* Dominos_Roll isn't provided in the main build for now.
