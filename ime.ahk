SetIME(state) {
    hwnd := WinExist("A")
    ime := DllCall("imm32\ImmGetDefaultIMEWnd", "Ptr", hwnd, "Ptr")

    if !ime
        return

    DllCall(
        "user32\SendMessageW",
        "Ptr", ime,
        "UInt", 0x0283,
        "Ptr", 0x0006,
        "Ptr", state,
        "Ptr"
    )
}

LWin Up::{
    if (A_PriorKey = "LWin")
        SetIME(0)
}

RWin Up::{
    if (A_PriorKey = "RWin")
        SetIME(1)
}