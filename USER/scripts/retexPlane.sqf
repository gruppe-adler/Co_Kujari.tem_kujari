params ["_plane"];

if (!isServer) exitWith {};

{_plane setObjectTextureGlobal [_forEachIndex, _x]} forEach [ 
    "a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_01_co.paa", 
    "a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_02_co.paa", 
    "a3\air_f_jets\plane_fighter_04\data\fighter_04_misc_01_co.paa", 
    "a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa", 
    "a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa", 
    "a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_08_ca.paa" 
];