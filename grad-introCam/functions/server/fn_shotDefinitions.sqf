// "_campos1", "_campos2", "_target", "_duration", "_zoom1", "_zoom2", "_isAttached", ["_offset",[0,0,0]],  "_radius"


/*
	
	CAM TYPES:

	["FREE", pos1, pos2, target, duration, fov1, fov2, offset (optional)],
	["ATTACHED", pos1, pos2, target, duration, fov1, fov2, offset (optional)],
	["ROTATE", angleStart, angleEnd, target, duration, fov1, fov2, radius (int), cclockwise (bool)]

	"_type",
	"_start",
	"_end",
	"_target1",
	"_target2",
	"_duration",
	"_transition",
	"_zoom1",
	"_zoom2",
	["_offset1",[0,0,0]],
	["_offset2",[0,0,0]],
	["_angle",1],
	["_radius",100],
	["_cclockwise", false]
];

*/

if (!isServer) exitWith {};

private _definitions = [
	["FREE", getPos introPos1, getPos introPos2, introTarget1, introTarget2, 47, 0, 0.4, 0.6, [0,0,5], [0,0,20]],
	["FREE", getPos introPos2, getPos introPos3, introTarget2, introTarget3, 30, 0, 0.6, 0.4, [0,0,20], [0,0,5]],
	["FREE", getPos introPos3, getPos introPos3, introTarget3, introTarget3, 5, 0, 0.4, 0.6, [0,0,5], [0,0,5]]
];

/////// dont edit below

{
  	[_x] call GRAD_introCam_fnc_addShot;
} forEach _definitions;