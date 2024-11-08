; By_Milan
#Requires AutoHotkey v2.0
cps := 60
on  := False

q:: {
 Global on := !on
 SoundBeep 1000 + 500 * on
}

#HotIf on
RButton:: {
 start := A_TickCount, cliks := 0
 While GetKeyState(ThisHotkey, 'P') {
  Click
  Sleep start - A_TickCount + 1000 * ++cliks / cps
  ToolTip 'CPS = ' Round(1000 * cliks / (A_TickCount - start))
 }
 ToolTip
}
#HotIfding clicker.ahk…]()
