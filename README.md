# Helldivers 2 Stratagems Macro attempt
This is my attempt at making a macro system for Helldivers 2 Stratagems.
But my attempt failed because of the anti-cheat (GameGuard), SendInput(), NtUserSendInput(), DirectInput() from DirectX and PostMessage() are all hooked and detected by the game.

I will try to make a Ring0 driver to solve this issue or a remote bluetooth device that will receive input from a program and send it back to the pc