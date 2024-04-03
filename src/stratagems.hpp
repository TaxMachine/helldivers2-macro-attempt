#ifndef STRAT_MACRO_STRATAGEMS_HPP
#define STRAT_MACRO_STRATAGEMS_HPP

#include "config.hpp"

#include <windows.h>
#include <string>
#include <vector>

namespace Stratagems {
    std::vector<WORD> LIFT_850_Jump_Pack = {DOWN, UP, UP, DOWN, UP};
    std::vector<WORD> B_1_Supply_Pack = {DOWN, LEFT, DOWN, UP, UP, DOWN};
    std::vector<WORD> AX_LAS_5_Guard_Dog_Rover = {DOWN, UP, LEFT, UP, RIGHT, RIGHT};
    std::vector<WORD> SH_20_Ballistic_Shield_Backpack = {DOWN, LEFT, DOWN, DOWN, UP, LEFT};
    std::vector<WORD> SH_32_Shield_Generator_Pack = {DOWN, UP, LEFT, RIGHT, LEFT, RIGHT};
    std::vector<WORD> AX_AR_23_Guard_Dog = {DOWN, UP, LEFT, UP, RIGHT, DOWN};
    std::vector<WORD> MG_43_Machine_Gun = {DOWN, LEFT, DOWN, UP, RIGHT};
    std::vector<WORD> APW_1_Anti_Materiel_Rifle = {DOWN, LEFT, RIGHT, UP, DOWN};
    std::vector<WORD> M_105_Stalwart = {DOWN, LEFT, DOWN, UP, UP, LEFT};
    std::vector<WORD> EAT_17_Expendable_Anti_tank = {DOWN, DOWN, LEFT, UP, RIGHT};
    std::vector<WORD> GR_8_Recoilless_Rifle = {DOWN, LEFT, RIGHT, RIGHT, LEFT};
    std::vector<WORD> FLAM_40_Flamethrower = {DOWN, LEFT, UP, DOWN, UP};
    std::vector<WORD> AC_8_Autocannon = {DOWN, LEFT, DOWN, UP, UP, RIGHT};
    std::vector<WORD> MG_206_Heavy_Machine_Gun = {DOWN, LEFT, UP, DOWN, DOWN};
    std::vector<WORD> RS_422_Railgun = {DOWN, RIGHT, DOWN, UP, LEFT, RIGHT};
    std::vector<WORD> FAF_14_SPEAR_Launcher = {DOWN, DOWN, UP, DOWN, DOWN};
    std::vector<WORD> GL_21_Grenade_Launcher = {DOWN, LEFT, UP, LEFT, DOWN};
    std::vector<WORD> LAS_98_Laser_Cannon = {DOWN, LEFT, DOWN, UP, LEFT};
    std::vector<WORD> ARC_3_Arc_Thrower = {DOWN, RIGHT, DOWN, UP, LEFT, LEFT};
    std::vector<WORD> LAS_99_Quasar_Cannon = {DOWN, DOWN, UP, LEFT, RIGHT};
    std::vector<WORD> Reinforce = {UP, DOWN, RIGHT, LEFT, UP};
    std::vector<WORD> SOS_Beacon = {UP, DOWN, RIGHT, UP};
    std::vector<WORD> Resupply = {DOWN, DOWN, UP, RIGHT};
    std::vector<WORD> NUX_223_Hellbomb = {DOWN, UP, LEFT, DOWN, UP, RIGHT, DOWN, UP};
    std::vector<WORD> SSSD_Delivery = {DOWN, DOWN, DOWN, UP, UP};
    std::vector<WORD> Seismic_Probe = {UP, UP, LEFT, RIGHT, DOWN, DOWN};
    std::vector<WORD> Upload_Data = {DOWN, DOWN, UP, UP, UP};
    std::vector<WORD> Eagle_Rearm = {UP, UP, LEFT, UP, RIGHT};
    std::vector<WORD> Illumination_Flare = {RIGHT, RIGHT, LEFT, LEFT};
    std::vector<WORD> SEAF_Artillery = {RIGHT, UP, UP, DOWN};
    std::vector<WORD> Super_Earth_Flag = {DOWN, UP, DOWN, UP};
    std::vector<WORD> E_MG_101_HMG_Emplacement = {DOWN, UP, LEFT, RIGHT, RIGHT, LEFT};
    std::vector<WORD> FX_12_Shield_Generator_Relay = {DOWN, DOWN, LEFT, RIGHT, LEFT, RIGHT};
    std::vector<WORD> A_ARC_3_Tesla_Tower = {DOWN, UP, RIGHT, UP, LEFT, RIGHT};
    std::vector<WORD> MD_6_Anti_Personnel_Minefield = {DOWN, LEFT, UP, RIGHT};
    std::vector<WORD> MD_I4_Incendiary_Mines = {DOWN, LEFT, LEFT, DOWN};
    std::vector<WORD> A_MG_43_Machine_Gun_Sentry = {DOWN, UP, RIGHT, RIGHT, UP};
    std::vector<WORD> A_G_16_Gatling_Sentry = {DOWN, UP, RIGHT, LEFT};
    std::vector<WORD> A_M_12_Mortar_Sentry = {DOWN, UP, RIGHT, RIGHT, DOWN};
    std::vector<WORD> A_AC_8_Autocannon_Sentry = {DOWN, UP, RIGHT, UP, LEFT, UP};
    std::vector<WORD> A_MLS_4X_Rocket_Sentry = {DOWN, UP, RIGHT, LEFT};
    std::vector<WORD> A_M_23_EMS_Mortar_Sentry = {DOWN, UP, RIGHT, DOWN, RIGHT};
    std::vector<WORD> Orbital_Gatling_Barrage = {RIGHT, DOWN, LEFT, UP, UP};
    std::vector<WORD> Orbital_Airburst_Strike = {RIGHT, RIGHT, RIGHT};
    std::vector<WORD> Orbital_120MM_HE_Barrage = {RIGHT, RIGHT, DOWN, LEFT, RIGHT, DOWN};
    std::vector<WORD> Orbital_380MM_HE_Barrage = {RIGHT, DOWN, UP, UP, LEFT, DOWN, DOWN};
    std::vector<WORD> Orbital_Walking_Barrage = {RIGHT, DOWN, RIGHT, DOWN, RIGHT, DOWN};
    std::vector<WORD> Orbital_Laser = {RIGHT, DOWN, UP, RIGHT, DOWN};
    std::vector<WORD> Orbital_Railcannon_Strike = {RIGHT, UP, DOWN, DOWN, RIGHT};
    std::vector<WORD> Orbital_Precision_Strike = {RIGHT, RIGHT, UP};
    std::vector<WORD> Orbital_Gas_Strike = {RIGHT, RIGHT, DOWN, RIGHT};
    std::vector<WORD> Orbital_EMS_Strike = {RIGHT, RIGHT, LEFT, DOWN};
    std::vector<WORD> Orbital_Smoke_Strike = {RIGHT, RIGHT, DOWN, UP};
    std::vector<WORD> Eagle_Strafing_Run = {UP, RIGHT, RIGHT};
    std::vector<WORD> Eagle_Airstrike = {UP, RIGHT, DOWN, RIGHT};
    std::vector<WORD> Eagle_Cluster_Bomb = {UP, RIGHT, DOWN, DOWN, RIGHT};
    std::vector<WORD> Eagle_Napalm_Airstrike = {UP, RIGHT, DOWN, UP};
    std::vector<WORD> Eagle_Smoke_Strike = {UP, RIGHT, UP, DOWN};
    std::vector<WORD> Eagle_110MM_Rocket_Pods = {UP, RIGHT, UP, LEFT};
    std::vector<WORD> Eagle_500kg_Bomb = {UP, RIGHT, DOWN, DOWN, DOWN};
}
#endif //STRAT_MACRO_STRATAGEMS_HPP