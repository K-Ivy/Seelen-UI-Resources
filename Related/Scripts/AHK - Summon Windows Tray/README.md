At one point, v2.4.4, seelen had removed the system tray module. This was made for that. **v2.4.5+ adds it back**.

---

# Setup
**1.** Place the plugin (the **.yml**) at "**C:\Users\YOUR-USER\AppData\Roaming\com.seelen.seelen-ui\plugins**",

**2.** Download the **.ahk** and the **.ini** file and bring to where desired (both in same folder),

**3.** In the plugins folder, open up the .yml with an editor. Scroll to the bottom and change the example path to the actual path,

**4.** Save changes and add the the module to the toolbar: Right click the toolbar > modules > select the module,

**5.** Modify the .ini as desired.

---

#### NOTE : `Win + B, Release, Enter` native windows bind is used to bring up the tray, however edge cases:

**1. Empty Overflow Menu**

   - If there are **NO items** in the overflow menu to begin with, the tray chevron will not appear on the taskbar and as such, Win + B + Enter will instead focus the first other item and fail to summon the overflow menu.

**1.2. Taskbar Settings → Other System Tray Icons**

   - If you toggle ALL icons ON, nothing remains in the overflow menu, so no chevron and summon **fails**.

**2. Altered Item Order**

   - If any program changes tray icon order so the chevron is **NOT first**, Win + B + Enter will again fail to summon the overflow menu as intended. Unlikely, but just a note.