/*

    createSandWall

    [[10217.7,2833.75,0], 2, 285] call GRAD_sandstorm_fnc_createSandWall;

*/

params ["_position", "_size", "_speed", "_dir", ["_id",0]];

private _identifier = format ["GRAD_sandstorm_id%1", _id];

private _trigger = createTrigger ["EmptyDetector", _position];
_trigger setTriggerArea [_size, _size, 0, false];

// trigger for activating sound earlier than VFX
private _triggerSound = createTrigger ["EmptyDetector", _position];
_triggerSound setTriggerArea [(_size+250), (_size+250), 0, false];


private _helperObject = "ProtectionZone_Ep1" createVehicle _position;
_helperObject setPosASL [_position select 0, _position select 1, 0];
_helperObject setVectorUp [0,0,1];
_trigger attachTo [_helperObject];
_triggerSound attachTo [_helperObject];

systemChat "add server wall";
diag_log "add server wall";

[
    _trigger, 
    _triggerSound, 
    _helperObject, 
    _identifier
] remoteExec [
    "GRAD_sandstorm_fnc_addSandWallLocal", [0,-2] select isDedicated, true
];

missionNamespace setVariable [_identifier, _trigger, true];

setWind [0,0,true];
0 setWindDir _dir;
0 setWindForce 20;
private _wSpeed = [wind, _speed*4] call BIS_fnc_vectorMultiply;
setWind [_wSpeed select 0, _wSpeed select 1, true];
// 5 setGusts 0.35;

private _markerstr = createMarker [format ["grad-sandstorm_debugmarker_%1", _identifier], _position];
_markerstr setMarkerShape "ELLIPSE";
_markerstr setMarkerSize [_size, _size];
_markerstr setMarkerColor "ColorRed";
_markerstr setMarkerAlpha 0.5;

systemChat "add server marker";
diag_log "add server marker";

[{
    params ["_args", "_handle"];
    _args params ["_helperObject", "_trigger", "_triggerSound", "_size", "_speed", "_dir", "_markerstr"];

    if (isNull _helperObject) exitWith {
        [_handle] call CBA_fnc_removePerFrameHandler;
        systemChat "sandstorm: removing as marker is null";
        deleteVehicle _trigger;
        deleteVehicle _triggerSound;
    };

    private _newPos = (getPos _helperObject) getPos [_speed, _dir];
    _helperObject setPosASL _newPos;
    _helperObject setVectorUp [0,0,1];

    // _soundSource setPos _newPos;
    _markerstr setMarkerPos _newPos;

    // add local effects if player is inside sandstorm
    {
        _vehicle = _x;
        
        if (count ([_vehicle] inAreaArray _trigger) > 0) then {
            [_vehicle] call GRAD_sandstorm_fnc_addDamage;
        };
    } forEach vehicles;

    
    private _fog =  [0.3 + random 0.1, 0.003, 0];
    missionNamespace setVariable ["GRAD_sandstorm_fogValue", _fog, true];


    _newPos params ["_xPos", "_yPos"];
    
    if (_xPos < -_size || _xPos > (worldSize + _size) || _yPos < -_size || _yPos > (worldSize+_size)) then {
        deleteVehicle _helperObject;
        systemChat "deleting trigger out of map";
    };
    
}, 1, [_helperObject, _trigger, _triggerSound, _size, _speed, _dir, _markerstr]] call CBA_fnc_addPerFrameHandler;