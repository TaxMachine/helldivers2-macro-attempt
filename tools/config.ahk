#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

BIND_UP() {
    return "5"
}

BIND_DOWN() {
    return "8"
}

BIND_LEFT() {
    return "7"
}

BIND_RIGHT() {
    return "9"
}