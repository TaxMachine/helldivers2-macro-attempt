//
// Created by TaxMachine on 2024-04-01.
//

#ifndef STRAT_MACRO_CONFIG_HPP
#define STRAT_MACRO_CONFIG_HPP

#include <windows.h>
#include <string>
#include <vector>

static WORD UP;
static WORD DOWN;
static WORD LEFT;
static WORD RIGHT;

void create_default_config(const std::string &path);
void load_config(const std::string &path);
std::string readFile(const std::string &path);

#endif //STRAT_MACRO_CONFIG_HPP
