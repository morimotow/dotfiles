#UseHook

*+2::
Send {@}
return

*+6::
Send {^}
return

*+7::
Send {&}
return

*+8::
Send {*}
return

*+9::
Send {(}
return

*+0::
Send {)}
return

*+-::Send,{_}
^::Send,{=}
*+^::Send,{+}

VKF4::Send,{``}
*+VKF4::Send,{~}


@::Send,{[}
*+@::Send,{{}
[::Send,{]}
*+[::Send,{}}

; CTRL+]対応(Vimタグジャンプ用)
*^[::Send,^{]}

*+;::Send,{:}

:::Send,{'}

*::Send,{"}

]::Send,{\}
*+]::Send,{|}


Home::Up
PgUp::Right
NumpadMult::Left
NumpadDiv::Down
PrintScreen::Home
Left::End
Up::PgUp
Down::PgDn
*NumpadAdd:: Send,{vkF4sc029}

+WheelUp::  ; Scroll left.  
ControlGetFocus, fcontrol, A  
Loop 4  ; <-- Increase this value to scroll faster.  
    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINELEFT.  
return  

+WheelDown::  ; Scroll right.
ControlGetFocus, fcontrol, A  
Loop 4  ; <-- Increase this value to scroll faster.  
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINERIGHT.  
return

#IfWinActive, ahk_class ahk_class Vim
+WheelUp:: Send, 3zh  ; Scroll left.  
+WheelDown::Send, 3zl   ; Scroll right.
#IfWinActive

#IfWinActive, ahk_class ahk_class XLMAIN
+WheelUp::ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,0,3)  ; Scroll left. 
+WheelDown::ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,3)  ; Scroll right. 
#IfWinActive

#IfWinActive, ahk_class ahk_class SWT_Window0
MButton::F3
#IfWinActive
