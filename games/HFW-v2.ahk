#Requires AutoHotkey v2.0

;; This makes sure the keybinds are only changed in the game, and not outside (for ex. when tabbed out)
#HotIf WinActive("ahk_exe HorizonForbiddenWest.exe") 
{
    ;; Rebinds "Tab" to "Numpad0". Game doesn't like Tab being used with modifiers, so this is a workaround. MAKE SURE TO REBIND YOUR WEAPON WHEEL TO THIS NEW KEY INGAME.
    Tab::Numpad0

    ;; Same as above, but makes it work when shift (sprint) is held down.
    +Tab::Numpad0

    ;; Those 2 keys make sure both "alt+tab" and "shift+alt+tab" are still working.
    !Tab::!Tab
    +!Tab::+!Tab

    ;; Rebinds "Tab+MiddleMouseButton" to "V". This was the "Holster Weapon" Button in the previous game.
    ~Tab & MButton::V
}
#HotIf
