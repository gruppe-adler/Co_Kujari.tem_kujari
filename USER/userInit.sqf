/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/
STHud_UIMode = 0;
diwako_dui_main_toggled_off = true;
titleText ["","BLACK FADED",999];

[] execVM "USER\scripts\addModules.sqf";

["CBA_loadingScreenDone", {
    STHud_UIMode = 0;
    diwako_dui_main_toggled_off = true;

    private _waitCondition = {time > (_this + 3)};

    [_waitCondition,{
        diwako_dui_main_toggled_off = true;
        [] spawn GRAD_introCam_fnc_play;
    },time] call CBA_fnc_waitUntilAndExecute;

}] call CBA_fnc_addEventHandler;

if (isServer) then {
    [] spawn GRAD_introCam_fnc_init;
};