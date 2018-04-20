params ["_unit"];

comment "Exported from Arsenal by TTT";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "rhs_uniform_cu_ocp_patchless";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_m18_green";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItemToUniform "9Rnd_45ACP_Mag";};
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_IR_Strobe_Item";
_unit addItemToVest "ACE_M84";
_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_packingBandage";};
_unit addItemToBackpack "ACE_tourniquet";
_unit addHeadgear "rhsusf_ach_helmet_ocp";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_grip";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
_unit addWeapon "hgun_ACPC2_F";
_unit addWeapon "ACE_Vector";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";

comment "Manuell hinzugefügte Gegenstände";
_unit addItemToBackpack "rhsusf_acc_compm4";
_unit addItemToBackpack "ACE_NVG_Wide";
_unit addItemToBackpack "rhsusf_acc_rotex5_grey";