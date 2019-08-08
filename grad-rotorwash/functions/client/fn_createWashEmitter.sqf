params ["_vehicle"];

private _wash = "#particlesource" createVehicleLocal [
	0,
	0,
	0
];  

private _washSettings = _vehicle getVariable ["GRAD_rotorWash_wash", [
    [],
    [],
    [],
    []
]];

_washSettings params ["_washPosATL", "_washParticleCircle", "_washParticleParams", "_washParticleRandom"];

_wash setPosATL _washPosATL;
_wash setParticleCircle _washParticleCircle;
_washParticleParams set [18, _wash];
_wash setParticleParams _washParticleParams;
_wash setParticleRandom _washParticleRandom;

_wash setDropInterval grad_interval;

_wash