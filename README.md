Krystizsh v0.01
<br /><br />
Once you copy this repo somewhere you're gonna want to edit the zshrc file and edit the KRYSTI_PATH to where you saved this repo. Optionally you can edit KRYSTI_THEME and choose from 11 presets: kandi, mid, fire, lime, purples, reds, greens, browns, yellows, oranges, blues.
<br /><br />
The KRYSTI_FILL variable will simply allow you to have a nice filled in border based on the $COLUMNS variable which might not be THAT great for EVERY terminal emulator so I added the ability to disable it. Once your satified with your settings save this file to ~/.zshrc or edit your existing ~/.zshrc into this one. Since this INTENDED for vanilla ZSH I can't recommend trying to top on powerline or oh-my-zsh. I didn't test that and it's out of scope for what was trying to be done which is a lightweight aesthetic prompt without too much fluff if that's what you REALLY wanted. Reload your terminal/shell when you're done.
<br /><br />
There is minor elements that pick from a random colour palette setup in the script. If you want to tweak them they are in the 'krysti_load' file. Each number is one of the 256 colour palette. You can can test out each theme using the 'ksetup' command followed by selecting one of the 11 presets above. These 11 presets can also be modified inside the 'krysti_load' file and choose numbers from the same 256 colour palette.
<br /><br />
Once you find something or tweaked it how you like run 'ksave' which will grab all your colour settings and put them into ~/.krystizsh. Delete this file to go back to using what the KRYSTI_THEME variable says otherwise the ~/.krystizsh file will override this setting.
