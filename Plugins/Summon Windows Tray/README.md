> Seelen v2.4.4+ removes the seelen tray module (because it cannot be properly implemented). As such, this adds a custom tray module that is to launch a autohotkey script that brings up the native windows tray menu.

<img width="550" height="417" alt="seelen-ui_mjsCqzzDdI" src="https://github.com/user-attachments/assets/e9ca5018-2fc1-4f57-a674-a5d22d1b7f80" />

# Setup
**1.** Place the plugin (the **.yml**) at "**C:\Users\YOUR-USER\AppData\Roaming\com.seelen.seelen-ui\plugins**"

**2.** Download the **.exe** or **.ahk** and the **.ini** file (the settings!)

 - The *.exe* is the compiled version of the autohotkey script and does not require you to download AutoHotKey V2 at all as it is self-contained.

- **BUT** if you do not feel comfortable downloading an exe just use the **.ahk** version but it requires you to download Autohotkey V2 on you system. Or you can personally compile this script into an exe using the AHK2Exe tool.

**3.** Place your script file where you would like to keep it and place the settings .ini at the same location (It **MUST** be in the same location and **DO NOT** rename the settings .ini if using the **.exe**).

**4.** Go back to the plugins folder and open up the .yml with an editor. Scroll to the bottom and follow the instructions and change the example path to your script file's.

**5.** Save changes and add the the module to the toolbar: Right click the toolbar > Modules > Select the module.

**6.** Click the button to summon the tray to see where it's moved on your monitor. After, go to where you've put your settings .ini, and open it editor and adjust the position of the tray and anything else you'd like.

**7. IMPORTANT NOTE TO READ** : Win + B + Enter is used to bring up the tray, however edge cases:

**1. Empty Overflow Menu**

   - If there are **NO items** in the overflow menu to begin with, the tray chevron will not appear on the taskbar and as such, Win + B + Enter will instead focus the first other item and fail to summon the overflow menu.

**1.2. Taskbar Settings → Other System Tray Icons**

   - If you toggle ALL icons ON, nothing remains in the overflow menu, so no chevron and summon **fails**.

**2. Altered Item Order**

   - If any program changes tray icon order so the chevron is **NOT first**, Win + B + Enter will again fail to summon the overflow menu as intended. You shouldn't have something like that anyways as it will conflict with seelen but just a note.

**SO ENSURE you are not in the above scenarios, and if so, make sure to make the needed changes!**

<img width="394" height="48" alt="6Remf6hmPc" src="https://github.com/user-attachments/assets/6338dcf1-2a05-45d0-9f02-0d5bcc1df3e6" />

- Win 11 should work as expected if things are normal, however Win10, it seems it does not (a user could not get it to work) but I cannot personally test or work on win10 improvements as I am no plans to get win10 (can't run VM). Win10 users contribute if wanted to make it work (If possible).

- Also, I dont have multi-monitors setup so it hasn't been considered. Any issues can be shared and perhaps support added.
