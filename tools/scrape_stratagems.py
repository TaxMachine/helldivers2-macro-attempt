import sys

import requests
from bs4 import BeautifulSoup
from dataclasses import dataclass

if len(sys.argv) < 2:
    print("Please provide the target language (ahk or cpp) as the first argument")
    sys.exit(1)


@dataclass
class Stratagem:
    name: str
    arrows: list[str]


url = "https://helldivers.fandom.com/wiki/Stratagem_Codes_(Helldivers_2)"

response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

tables = soup.find_all("table", {"class": "wikitable"})

ahk_functions = """
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include, config

RunKeys(keyList) {
    Random, initialDelay, 40, 50
    Send {Ctrl Down}
    Sleep, % initialDelay

    For key, value in keyList {
        Random, delay, 40, 50
        Random, pressDuration, 20, 25

        Send, {%value% Down}
        Sleep, % pressDuration
        Send, {%value% Up}
        Sleep, % delay
    }

    Send {Ctrl Up}
}

"""

cpp_header = """#ifndef STRAT_MACRO_STRATAGEMS_HPP
#define STRAT_MACRO_STRATAGEMS_HPP

#include "config.hpp"

#include <windows.h>
#include <string>
#include <vector>

namespace Stratagems {
"""


@dataclass
class Binds:
    UP: str
    DOWN: str
    LEFT: str
    RIGHT: str


@dataclass
class AHKBind(Binds):
    UP: str = "BIND_UP()"
    DOWN: str = "BIND_DOWN()"
    LEFT: str = "BIND_LEFT()"
    RIGHT: str = "BIND_RIGHT()"


@dataclass
class CPPBind(Binds):
    UP: str = "UP"
    DOWN: str = "DOWN"
    LEFT: str = "LEFT"
    RIGHT: str = "RIGHT"


def to_ahk_function(func_name: str, func_arrows: list[str]) -> str:
    striped_name = func_name.replace(" ", "_").replace("-", "_").replace("/", "_").replace("\"", "")
    arrow_array = "[" + ", ".join(func_arrows) + "]"
    function = f"{striped_name}() {{\n"
    function += f"  RunKeys({arrow_array})\n"
    function += "}\n\n"
    return function


def to_cpp_header(func_name: str, func_arrows: list[str]) -> str:
    striped_name = func_name.replace(" ", "_").replace("-", "_").replace("/", "_").replace("\"", "")
    arrow_array = "{" + ", ".join(func_arrows) + "};"
    function = f"    std::vector<WORD> {striped_name} = {arrow_array}\n"
    return function


for table in tables:
    stratagem = Stratagem(name="", arrows=[])
    rows = table.find_all("tr")
    bind: Binds = AHKBind() if sys.argv[1] == "ahk" else CPPBind()
    for row in rows:
        cells = row.find_all("td")
        if len(cells) > 1:
            name = cells[1].text.strip()
            arrows = cells[2]
            arrows = arrows.find_all("a", {"class": "image"})
            parsed_arrows = []
            for arrow in arrows:
                arrow = arrow["href"]
                arrow = arrow.split("/")[7]
                match arrow:
                    case "Arrow_1_D.png":
                        parsed_arrows.append(bind.DOWN)
                    case "Arrow_2_L.png":
                        parsed_arrows.append(bind.LEFT)
                    case "Arrow_3_R.png":
                        parsed_arrows.append(bind.RIGHT)
                    case "Arrow_4_U.png":
                        parsed_arrows.append(bind.UP)
                    case _:
                        raise ValueError(f"Unknown arrow: {arrow}")
            print(f"{name}: {parsed_arrows}")
            match sys.argv[1]:
                case "ahk":
                    ahk_functions += to_ahk_function(name, parsed_arrows)
                case "cpp":
                    cpp_header += to_cpp_header(name, parsed_arrows)

match sys.argv[1]:
    case "cpp":
        cpp_header += "}\n"
        cpp_header += "#endif //STRAT_MACRO_STRATAGEMS_HPP"
        f = open("stratagems.hpp", "w")
        f.write(cpp_header)
        f.close()
    case "ahk":
        f = open("stratagems_def.ahk", "w")
        f.write(ahk_functions)
        f.close()