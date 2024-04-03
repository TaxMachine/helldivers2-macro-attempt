//
// Created by TaxMachine on 2024-04-01.
//

#include "config.hpp"

#include <filesystem>
#include <fstream>

#include "virtual_keys.hpp"
#include "json.hpp"

void load_config(const std::string &path) {
    if (!std::filesystem::exists(path)) {
        create_default_config(path);
    }
    std::string content = readFile(path);
    nlohmann::json j = nlohmann::json::parse(content);
    UP = VK_MAP[j["UP"].get<std::string>()];
    DOWN = VK_MAP[j["DOWN"].get<std::string>()];
    LEFT = VK_MAP[j["LEFT"].get<std::string>()];
    RIGHT = VK_MAP[j["RIGHT"].get<std::string>()];
}

void create_default_config(const std::string &path) {
    nlohmann::json j;
    j["UP"] = "UP";
    j["DOWN"] = "DOWN";
    j["LEFT"] = "LEFT";
    j["RIGHT"] = "RIGHT";
    std::ofstream file(path);
    file << j.dump(4);
    file.close();
}

std::string readFile(const std::string &path) {
    std::ifstream file(path);
    std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();
    return content;
}