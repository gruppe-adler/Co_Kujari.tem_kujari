params ["_vehicle"];

systemChat ("1");

private _lingerSettings = _vehicle getVariable ["GRAD_rotorWash_linger", [
    [],
    [],
    [],
    []
]];

private _washSettings = _vehicle getVariable ["GRAD_rotorWash_wash", [
    [],
    [],
    [],
    []
]];


_lingerSettings params ["_lingerPosATL", "_lingerParticleCircle", "_lingerParticleParams", "_lingerParticleRandom"];
_washSettings params ["_washPosATL", "_washParticleCircle", "_washParticleParams", "_washParticleRandom"];

private _emitters = _vehicle getVariable ["grad_rotorwash_emittersActive", []];
_emitters params ["_linger", "_wash"];

_linger setPosATL _lingerPosATL;
_linger setParticleCircle _lingerParticleCircle;
_lingerParticleParams set [5, _lingerPosATL];
_lingerParticleParams set [18, _linger];
_linger setParticleParams _lingerParticleParams;
_linger setParticleRandom _lingerParticleRandom;

_wash setPosATL _washPosATL;
_wash setParticleCircle _washParticleCircle;
_washParticleParams set [5, _washPosATL];
_washParticleParams set [18, _wash];
_wash setParticleParams _washParticleParams;
_wash setParticleRandom _washParticleRandom;


systemChat ("2" + str _washPosATL);