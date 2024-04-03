#NoEnv

#Include, stratagems_def.ahk

SendMode Input
SetWorkingDir %A_ScriptDir%

;#IfWinActive, HELLDIVERS™ 2

MsgBox, "HELLDIVERS 2 Stratagems macro loaded!"

*4::
Reinforce()
Return

*6::
Eagle_Cluster_Bomb()
Return

*0::
FLAM_40_Flamethrower()
Return