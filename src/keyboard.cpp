//
// Created by TaxMachine on 2024-04-02.
//

#include "keyboard.hpp"

#include <vector>
#include <winuser.h>
#include <synchapi.h>

#include "utils.hpp"

void hold_key(WORD key) {
    INPUT input;
    input.type = INPUT_KEYBOARD;
    input.ki.wScan = MapVirtualKeyA(key, MAPVK_VK_TO_VSC);
    input.ki.dwFlags = KEYEVENTF_SCANCODE | KEYEVENTF_KEYUP;

    SendInput(1, &input, sizeof(INPUT));
}

void release_key(WORD key) {
    INPUT input;
    input.type = INPUT_KEYBOARD;
    input.ki.wScan = MapVirtualKeyA(key, MAPVK_VK_TO_VSC);
    input.ki.dwFlags = KEYEVENTF_EXTENDEDKEY;

    SendInput(1, &input, sizeof(INPUT));
}

void press_keys(const std::vector<WORD>& keys) {
    hold_key(VK_CONTROL);
    int initial_delay = random_int(40, 50);
    Sleep(initial_delay);
    for (auto key : keys) {
        int delay = random_int(40, 50);
        int press_duration = random_int(20, 25);

        hold_key(key);
        Sleep(press_duration);
        release_key(key);
        Sleep(delay);
    }
    release_key(VK_CONTROL);
}