params ["_heli"];

private _linger = "#particlesource" createVehicleLocal [
	0,
	0,
	0
];  

private _lingerSettings = _heli getVariable ["GRAD_rotorWash_linger", [
    [],
    [],
    [],
    []
]];

_lingerSettings params ["_lingerPosATL", "_lingerParticleCircle", "_lingerParticleParams", "_lingerParticleRandom"];

_linger setPosATL _lingerPosATL;
_linger setParticleCircle _lingerParticleCircle;

_lingerParticleParams set [18, _linger];
_linger setParticleParams _lingerParticleParams;
_linger setParticleRandom _lingerParticleRandom;

_linger setDropInterval grad_rotorwash_linger_interval;

_linger