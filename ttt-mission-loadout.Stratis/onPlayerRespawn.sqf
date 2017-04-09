["Terminate"] call BIS_fnc_EGSpectator;

switch (player getVariable ["loadout",""]) do {
    case ("opl") : {
		call compile preprocessFileLineNumbers "loadouts\opl.sqf";
    };
    
	case ("tf") : {
		call compile preprocessFileLineNumbers "loadouts\tf.sqf";
	};
	case ("funker") : {
		call compile preprocessFileLineNumbers "loadouts\funker.sqf";
	};
	case ("medic") : {
		call compile preprocessFileLineNumbers "loadouts\medic.sqf";
	};
    
	case ("grenadier") : {
		call compile preprocessFileLineNumbers "loadouts\grenadier.sqf";
	};
	case ("lmg") : {
		call compile preprocessFileLineNumbers "loadouts\lmg.sqf";
	};
	case ("mg") : {
		call compile preprocessFileLineNumbers "loadouts\mg.sqf";
	};
	case ("mgassi") : {
		call compile preprocessFileLineNumbers "loadouts\mg-assi.sqf";
	};
	case ("pio") : {
		call compile preprocessFileLineNumbers "loadouts\pionier.sqf";
	};
    
	case ("helipilot") : {
		call compile preprocessFileLineNumbers "loadouts\helipilot.sqf";
	};
	case ("medevac") : {
		call compile preprocessFileLineNumbers "loadouts\medevac.sqf";
	};
	case ("logistik") : {
		call compile preprocessFileLineNumbers "loadouts\helipilot.sqf";
	};
    
	default {
        hint "Achtung! Dir wurde das Standard-Loadout zugewiesen.";
		call compile preprocessFileLineNumbers "loadouts\default.sqf";
	};
};