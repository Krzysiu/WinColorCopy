Menu, Tray, Icon, resources/cp.ico

#IfWinActive Kolor
^c::
ControlGetText ColorR, Edit4
ControlGetText ColorG, Edit5
ControlGetText ColorB, Edit6

Clipboard := Format("#{:02x}{:02x}{:02x}", ColorR, ColorG, ColorB)

colorPicked := 1
return

^v::
if colorPicked return
ControlSetText Edit4, % ColorR
ControlSetText Edit5, % ColorG
ControlSetText Edit6, % ColorB
return
