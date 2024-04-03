//
// Created by TaxMachine on 2024-04-02.
//

#include "utils.hpp"

#include <random>

int random_int(int min, int max) {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(min, max);
    return dis(gen);
}