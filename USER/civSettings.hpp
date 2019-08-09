/*
*   Legt Einstellungen für grad-civs Zivilisten fest.
*   In der Klasse "userEquipment" können eigene Ausrüstungsgegenstände für die Zivilisten definiert werden.
*/

enableCivs = 1;

backpackProbability = 0.05;                                                     // Wahrscheinlichkeit, dass Zivilisten mit Backpacks spawnen (0-1)
exitOn = "";                                                                    // Skriptbedingung, ab der keine weiteren Zivilisten mehr spawnen
onSpawn = "";                                                                   // Code, der ausgeführt wird, wenn ein Zivilist spawnt
onHeldUp = "";                                                                  // Code, der ausgeführt wird, wenn ein Zivilist angehalten wird (Spieler zeigt mit Waffe auf Zivilist)

maxCivsOnFoot = 7;                                                             // Maximale Anzahl an Zivilisten die zu Fuß durch die Gegend latschen
maxCivsInVehicles = 14;                                                          // Maximale Anzahl an Zivilisten die mit Auto fahren. Achtung: inkludiert Beifahrer und Passagiere
maxCivsResidents = 7;                                                          // Maximale Anzahl an Zivilisten mit festem Wohnsitz
spawnDistancesOnFoot[] = {1000,4500};
spawnDistancesInVehicles[] = {1800,5000};
spawnDistancesResidents[] = {750, 1500};                                        // Mindest- und Maximalabstand zu allen Spielern, in denen Zivilisten spawnen

initialGroupSize = 3;                                                           // Gruppengröße für Zivilisten zwischen 1..N
automaticVehicleGroupSize = 1;                                                  // Autos werden zufällig mit Passagieren bedacht

class userEquipment {
    // Soll die hier definierte Ausrüstung die vordefinierte, inselabhängige Ausrüstung ersetzen oder zu dieser hinzugefügt werden? (0: hinzufügen, 1: ersetzen)
    replace = 1;

    // Uniformen
    clothes[] = {
        "LOP_U_AFR_Civ_01",
        "LOP_U_AFR_Civ_02",
        "LOP_U_AFR_Civ_03",
        "LOP_U_AFR_Civ_04",
        "LOP_U_AFR_Civ_05",
        "LOP_U_AFR_Civ_06",
        "LOP_U_AFR_Civ_01S",
        "LOP_U_AFR_Civ_02S",
        "LOP_U_AFR_Civ_03S",
        "LOP_U_AFR_Civ_04S",
        "LOP_U_AFR_Civ_05S",
        "LOP_U_AFR_Civ_06S"
    };

    // Helme, Mützen
    headgear[] = {
        "",
        "",
        ""
    };

    // Gesichter
    faces[] = {
        "AfricanHead_01",
        "AfricanHead_02",
        "AfricanHead_03"
    };

    // Brillen, Masken, Halstücher
    goggles[] = {

    };

    // Rucksäcke
    backpacks[] = {

    };

    vehicles[] = {
        "RDS_JAWA353_Civ_01",
        "RDS_JAWA353_Civ_01",
        "RDS_JAWA353_Civ_01",
        "RDS_JAWA353_Civ_01",
        "RDS_JAWA353_Civ_01",
        "RDS_Old_bike_Civ_01",
        "RDS_Old_bike_Civ_01",
        "RDS_Old_bike_Civ_01",
        "RDS_tt650_Civ_01",
        "RDS_tt650_Civ_01",
        "RDS_Lada_Civ_03",
        "RDS_Lada_Civ_03",
        "RDS_Lada_Civ_03",
        "RDS_Old_bike_Civ_01",
        "RDS_Ikarus_Civ_02",
        "RDS_Gaz24_Civ_02",
        "RDS_Gaz24_Civ_03",
        "RDS_Gaz24_Civ_01"
    };
};
