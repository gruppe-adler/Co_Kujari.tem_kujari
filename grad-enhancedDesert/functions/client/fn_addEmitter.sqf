/*
	[this] call GRAD_enhancedDesert_fnc_addEmitter;
*/

params ["_vehicle"];

// dont add twice
if (!isNull (_vehicle getVariable ["GRAD_enchancedDesert_lingerEmitter", objNull])) exitWith {};

private _colorR = 0.3; 
private _colorG = 0.25; 
private _colorB = 0.2; 
private _lifetime = 45;

[{
	params ["_args", "_handle"];
	_args params ["_vehicle", "_colorR", "_colorG", "_colorB", "_lifetime"];

	if (!alive _vehicle) exitWith {
		[_handle] call CBA_fnc_removePerFrameHandler;
	};

	private _speed = speed _vehicle;
	
	if ((_speed > 15) && GRAD_enhancedDesert_ACTIVE && {isEngineOn _vehicle}) then {
		drop [
		["\A3\data_f\cl_basic", 1, 0, 1],
		 "", "Billboard", 1, _lifetime, 
		 [getpos _vehicle select 0, getPos _vehicle select 1, 0], 
		 [0, 0, 0], 0.3, 
		 1,
		 1,
		 50, // 100
		 [8, 12, 14, 16, 19, 23, 25, 27, 29, 31, 32, 36, 40, 45], 
		 [
		 	
		 	[_colorR, _colorG, _colorB, 0],
		 	[_colorR, _colorG, _colorB, 0.2],
		 	[_colorR, _colorG, _colorB, 0.15],
		 	[_colorR, _colorG, _colorB, 0.14],
		 	[_colorR, _colorG, _colorB, 0.13],
		 	[_colorR, _colorG, _colorB, 0.12],
		 	[_colorR, _colorG, _colorB, 0.1],
		 	[_colorR, _colorG, _colorB, 0.08],
		 	[_colorR, _colorG, _colorB, 0.06],
		 	[_colorR, _colorG, _colorB, 0.04],
		 	[_colorR, _colorG, _colorB, 0.02],
		 	[_colorR, _colorG, _colorB, 0.01],
		 	[_colorR, _colorG, _colorB, 0.002],
		 	[_colorR, _colorG, _colorB, 0]
		 ], 
		 [0.08], 0, 0, "", "", _vehicle];
	};

}, 0.1, [_vehicle, _colorR, _colorG, _colorB, _lifetime]] call CBA_fnc_addPerFrameHandler;