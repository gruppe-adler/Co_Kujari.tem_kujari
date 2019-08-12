params ["_unit", "_type"];

_unit disableAI "ALL";

if (local _unit) then {
    [_unit, _type] call Achilles_fnc_ambientAnim; 
};