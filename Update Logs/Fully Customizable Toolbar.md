<div align="left">
	<h1> ≽ (10/~/25 - 12/17/25) ≼</h1> 
</div>

- Various re-wordings, clarifications/notes + corrections. In addition, full restructuring and splitting of settings into various groups for a more friendly experience.
- Fixed issue introduced by v2.4.3 update that caused toolbar to "slide" to the right when hiding and showing up instead of going up or down.
- Two sets of "Hidden State Offset" and "Distance from" Top/Bottom (For the top and bottom toolbar respectively). This fixes the two not applying if the toolbar is set to the bottom (as only top position was initially considered) and also just allows for different configurations.
- Drop shadows properly fade out when a window is maximized.
- Width Transition option for when toolbar expands (when a window is maximized) now actually applies.
- Behavior where all corner rounding was forced to 0 when a window was maximized AND dynamic color was enabled (feature is no longer available) has been changed. Now it only waits for a window to be maximized and in addition, you can adjust the rounding for each corner of the elements (base layer & the groups) from the settings so it's not hard coded.
- Base layer and group background images now properly fade in/out and filter options have been added for those previously missing them.
- All code for the module menus, tooltip menus, and context menus have been removed from this. They will be split into a seperate theme.
- Default theme updated and various variables overridden.
- Various other undocumented smaller changes.