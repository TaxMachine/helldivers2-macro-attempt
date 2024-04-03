#include <synchapi.h>

#include "config.hpp"
#include "stratagems.hpp"

int main() {
    load_config("config.json");

    while (true) {
        std::vector<WORD> keys = Stratagems::AX_AR_23_Guard_Dog;
        Sleep(1000);
    }
    return 0;
}
