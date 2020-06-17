# OpenTTD Sign Exporter
This Game Script for OpenTTD will export all signs in the game into the script debug log in CSV format.

## Usage
1. Place this repository under your OpenTTD game scripts directory, eg `~/.openttd/game/sign-export`.
2. Enable the Game Script on the Main Menu screen, or alter the Game Script setting by loading an existing savegame into
   the scenario editor (by renaming the extension from `.sav` to `.scn`).
3. Enable the OpenTTD setting `gui.ai_developer_tools`
4. On starting a game, the AI Developer Window should pop up with a prompt to continue. Click the continue button at the
   bottom of the window.
5. Signs should be visible in the log.
6. Logs can be exported by starting OpenTTD from the command prompt with the `-d script=5` option, and saving the stderr
   to a file. Eg, `openttd -d script=5 2> signs.log`
