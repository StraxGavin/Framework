/*
    File: fn_copLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    Edited: Itsyuka
    
    Description:
    Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "U_Rangemaster";
player addVest "V_TacVest_blk_POLICE";
player addHead "H_Beret_blk_POLICE";

player addMagazine "30Rnd_9x21_Mag";
player addWeapon "hgun_P07_snds_F";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemRadio";
player assignitem "ItemRadio";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "NVGoggles_OPFOR";
player assignitem "NVGoggles_OPFOR";
player addItem "Rangefinder";
player assignitem "Rangefinder";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;
