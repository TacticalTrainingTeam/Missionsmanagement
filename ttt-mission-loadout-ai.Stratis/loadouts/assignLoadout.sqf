params ["_unit"];
switch (_unit getVariable ["loadout",""]) do {
    case ("opl") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\opl.sqf";
    };
    
	case ("tf") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\tf.sqf";
	};
	case ("funker") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\funker.sqf";
	};
	case ("medic") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\medic.sqf";
	};
    
	case ("grenadier") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\grenadier.sqf";
	};
	case ("lmg") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\lmg.sqf";
	};
	case ("mg") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\mg.sqf";
	};
	case ("mgassi") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\mg-assi.sqf";
	};
	case ("pio") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\pionier.sqf";
	};
    
	case ("helipilot") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\helipilot.sqf";
	};
	case ("medevac") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\medevac.sqf";
	};
	case ("logistik") : {
		[_unit] call compile preprocessFileLineNumbers "loadouts\helipilot.sqf";
	};
    
	default {
        hint "Achtung! Dir wurde das Standard-Loadout zugewiesen.";
		[_unit] call compile preprocessFileLineNumbers "loadouts\default.sqf";
	};
};