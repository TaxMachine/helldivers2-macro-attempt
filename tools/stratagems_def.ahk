
#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%

#Include, config.ahk
#Include, IbAhkSend.ahk

IbSendInit("Logitech")

RunKeys(keyList) {
    Random, initialDelay, 60, 80
    IbSend, {Ctrl Down}
    Sleep, % initialDelay

    For key, value in keyList {
        Random, delay, 60, 80
        Random, pressDuration, 20, 25

        IbSend, {%value% Down}
        Sleep, % pressDuration
        IbSend, {%value% Up}
        Sleep, % delay
    }

    IbSend, {Ctrl Up}
}

LIFT_850_Jump_Pack() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_DOWN(), BIND_UP()])
}

B_1_Supply_Pack() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_DOWN()])
}

AX_LAS_5_Guard_Dog_Rover() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_UP(), BIND_RIGHT(), BIND_RIGHT()])
}

SH_20_Ballistic_Shield_Backpack() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_LEFT()])
}

SH_32_Shield_Generator_Pack() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_RIGHT(), BIND_LEFT(), BIND_RIGHT()])
}

AX_AR_23_Guard_Dog() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_UP(), BIND_RIGHT(), BIND_DOWN()])
}

MG_43_Machine_Gun() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_RIGHT()])
}

APW_1_Anti_Materiel_Rifle() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_RIGHT(), BIND_UP(), BIND_DOWN()])
}

M_105_Stalwart() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_LEFT()])
}

EAT_17_Expendable_Anti_tank() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_RIGHT()])
}

GR_8_Recoilless_Rifle() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_RIGHT(), BIND_RIGHT(), BIND_LEFT()])
}

FLAM_40_Flamethrower() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_DOWN(), BIND_UP()])
}

AC_8_Autocannon() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_RIGHT()])
}

MG_206_Heavy_Machine_Gun() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_DOWN(), BIND_DOWN()])
}

RS_422_Railgun() {
  RunKeys([BIND_DOWN(), BIND_RIGHT(), BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_RIGHT()])
}

FAF_14_SPEAR_Launcher() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_DOWN(), BIND_DOWN()])
}

GL_21_Grenade_Launcher() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_LEFT(), BIND_DOWN()])
}

LAS_98_Laser_Cannon() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_LEFT()])
}

ARC_3_Arc_Thrower() {
  RunKeys([BIND_DOWN(), BIND_RIGHT(), BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_LEFT()])
}

LAS_99_Quasar_Cannon() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_RIGHT()])
}

Reinforce() {
  RunKeys([BIND_UP(), BIND_DOWN(), BIND_RIGHT(), BIND_LEFT(), BIND_UP()])
}

SOS_Beacon() {
  RunKeys([BIND_UP(), BIND_DOWN(), BIND_RIGHT(), BIND_UP()])
}

Resupply() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_RIGHT()])
}

NUX_223_Hellbomb() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_UP()])
}

SSSD_Delivery() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_UP()])
}

Seismic_Probe() {
  RunKeys([BIND_UP(), BIND_UP(), BIND_LEFT(), BIND_RIGHT(), BIND_DOWN(), BIND_DOWN()])
}

Upload_Data() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_UP()])
}

Eagle_Rearm() {
  RunKeys([BIND_UP(), BIND_UP(), BIND_LEFT(), BIND_UP(), BIND_RIGHT()])
}

Illumination_Flare() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_LEFT(), BIND_LEFT()])
}

SEAF_Artillery() {
  RunKeys([BIND_RIGHT(), BIND_UP(), BIND_UP(), BIND_DOWN()])
}

Super_Earth_Flag() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_DOWN(), BIND_UP()])
}

E_MG_101_HMG_Emplacement() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_LEFT(), BIND_RIGHT(), BIND_RIGHT(), BIND_LEFT()])
}

FX_12_Shield_Generator_Relay() {
  RunKeys([BIND_DOWN(), BIND_DOWN(), BIND_LEFT(), BIND_RIGHT(), BIND_LEFT(), BIND_RIGHT()])
}

A_ARC_3_Tesla_Tower() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_UP(), BIND_LEFT(), BIND_RIGHT()])
}

MD_6_Anti_Personnel_Minefield() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_RIGHT()])
}

MD_I4_Incendiary_Mines() {
  RunKeys([BIND_DOWN(), BIND_LEFT(), BIND_LEFT(), BIND_DOWN()])
}

A_MG_43_Machine_Gun_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_RIGHT(), BIND_UP()])
}

A_G_16_Gatling_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_LEFT()])
}

A_M_12_Mortar_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_RIGHT(), BIND_DOWN()])
}

A_AC_8_Autocannon_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_UP(), BIND_LEFT(), BIND_UP()])
}

A_MLS_4X_Rocket_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_LEFT()])
}

A_M_23_EMS_Mortar_Sentry() {
  RunKeys([BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_RIGHT()])
}

Orbital_Gatling_Barrage() {
  RunKeys([BIND_RIGHT(), BIND_DOWN(), BIND_LEFT(), BIND_UP(), BIND_UP()])
}

Orbital_Airburst_Strike() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_RIGHT()])
}

Orbital_120MM_HE_Barrage() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_DOWN(), BIND_LEFT(), BIND_RIGHT(), BIND_DOWN()])
}

Orbital_380MM_HE_Barrage() {
  RunKeys([BIND_RIGHT(), BIND_DOWN(), BIND_UP(), BIND_UP(), BIND_LEFT(), BIND_DOWN(), BIND_DOWN()])
}

Orbital_Walking_Barrage() {
  RunKeys([BIND_RIGHT(), BIND_DOWN(), BIND_RIGHT(), BIND_DOWN(), BIND_RIGHT(), BIND_DOWN()])
}

Orbital_Laser() {
  RunKeys([BIND_RIGHT(), BIND_DOWN(), BIND_UP(), BIND_RIGHT(), BIND_DOWN()])
}

Orbital_Railcannon_Strike() {
  RunKeys([BIND_RIGHT(), BIND_UP(), BIND_DOWN(), BIND_DOWN(), BIND_RIGHT()])
}

Orbital_Precision_Strike() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_UP()])
}

Orbital_Gas_Strike() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_DOWN(), BIND_RIGHT()])
}

Orbital_EMS_Strike() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_LEFT(), BIND_DOWN()])
}

Orbital_Smoke_Strike() {
  RunKeys([BIND_RIGHT(), BIND_RIGHT(), BIND_DOWN(), BIND_UP()])
}

Eagle_Strafing_Run() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_RIGHT()])
}

Eagle_Airstrike() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_RIGHT()])
}

Eagle_Cluster_Bomb() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_DOWN(), BIND_RIGHT()])
}

Eagle_Napalm_Airstrike() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_UP()])
}

Eagle_Smoke_Strike() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_UP(), BIND_DOWN()])
}

Eagle_110MM_Rocket_Pods() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_UP(), BIND_LEFT()])
}

Eagle_500kg_Bomb() {
  RunKeys([BIND_UP(), BIND_RIGHT(), BIND_DOWN(), BIND_DOWN(), BIND_DOWN()])
}

