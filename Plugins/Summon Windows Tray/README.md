Seelen v2.4.4+ removes the seelen tray module (because it cannot be properly implemented). As such, this adds a custom tray module that is to launch a autohotkey script that brings up the native windows tray menu.

**1.** Place the plugin, the **.yml**, at "**C:\Users\YOUR-USER\AppData\Roaming\com.seelen.seelen-ui\plugins**".

**2.** Download the **.exe** or **.ahk** and the **.ini** file, that is the settings!

 - The *.exe* is the compiled version of the autohotkey script and does not require you to download AutoHotKey at all as it is self-contained.

- **But **if you do not feel comfortable downloading an exe just use the **.ahk** version but it requires you to download Autohotkey V2 on you system.

**3.** Place your script file where you would like to keep it and place the settings .ini at the same location (It **MUST **be in the same location and **DO NOT** rename the settings .ini).

**4.** Go back to the plugins folder and open up the .yml with an editor. Scroll to the bottom and follow the instructions and change the example path to your script file's.

**5.** Save changes and add the the module to the toolbar: Right click the toolbar > modules > select the module.

**6.** Click the button to summon the tray. After, go to where you've put your .exe and settings .ini, and open up the .ini with an editor and adjust the position of the tray and anything else.

- Win 11 will work as expected, however win10, while it **may work**, I cannot test as I do not have it installed. Win10 users can let me know and contribute if possible to make it work.

- Also, I dont have multi-monitors setup, so if you do and face some issue/would like some sort of feature to control, you can also let me know (limited).