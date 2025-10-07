> Seelen v2.4.4+ removes the seelen tray module (because it cannot be properly implemented). As such, this adds a custom tray module that is to launch a autohotkey script that brings up the native windows tray menu.

<img width="550" height="417" alt="seelen-ui_mjsCqzzDdI" src="https://github.com/user-attachments/assets/e9ca5018-2fc1-4f57-a674-a5d22d1b7f80" />

# Setup
**1.** Place the plugin (the **.yml**) at "**C:\Users\YOUR-USER\AppData\Roaming\com.seelen.seelen-ui\plugins**"

**2.** Download the **.ahk** and the **.ini** file (the settings!)

 - .exe version removed since for whatever reason it seems to get flagged for stuff so for peace of mind, I've just removed it. You can personally compile this into an exe using the AHK2Exe (the ahk provided tool that I'd used) if you dont want to download AutoHotKey V2 on your system at your choice.

**3.** Place the ahk file where you would like to keep it and place the settings .ini at the same location.

**4.** Go back to the plugins folder and open up the .yml with an editor. Scroll to the bottom and follow the instructions and change the example path to your ahk's.

**5.** Save changes and add the the module to the toolbar: Right click the toolbar > Modules > Select the module.

**6.** Click the button to summon the tray to see where it's moved on your monitor. After, go to where you've put your settings .ini, and open it with an editor and adjust the position of the tray and anything else you'd like.

**7. IMPORTANT NOTE TO READ** : Win + B + Enter is used to bring up the tray, however edge cases:

**1. Empty Overflow Menu**

   - If there are **NO items** in the overflow menu to begin with, the tray chevron will not appear on the taskbar and as such, Win + B + Enter will instead focus the first other item and fail to summon the overflow menu.

**1.2. Taskbar Settings → Other System Tray Icons**

   - If you toggle ALL icons ON, nothing remains in the overflow menu, so no chevron and summon **fails**.

**2. Altered Item Order**

   - If any program changes tray icon order so the chevron is **NOT first**, Win + B + Enter will again fail to summon the overflow menu as intended. Unlikely, but just a note.

**SO ENSURE you are not in the above scenarios, and if so, make sure to make the needed changes!**

<img width="394" height="48" alt="6Remf6hmPc" src="https://github.com/user-attachments/assets/6338dcf1-2a05-45d0-9f02-0d5bcc1df3e6" />

- Win 11 should work as expected if things are normal, however Win10, it seems it does not (a user could not get it to work) but I cannot personally test or work on win10 improvements as I am no plans to get win10 (can't run VM). Win10 users can contribute if wanted to make it work (If possible).

- Also, I dont have multi-monitors setup so it hasn't been considered. Any issues can be shared and perhaps support added.
