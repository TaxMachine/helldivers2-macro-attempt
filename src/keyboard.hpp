//
// Created by TaxMachine on 2024-04-02.
//

#ifndef STRAT_MACRO_KEYBOARD_HPP
#define STRAT_MACRO_KEYBOARD_HPP

#include <vector>
#include <windows.h>

void hold_key(WORD key);
void release_key(WORD key);
void press_keys(const std::vector<WORD>& keys);

#endif //STRAT_MACRO_KEYBOARD_HPP
