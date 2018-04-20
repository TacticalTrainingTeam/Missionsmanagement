{
    if (side _x == WEST) then {
        [_x] call compile preprocessFileLineNumbers "loadouts\assignLoadout.sqf";
    };
} foreach  allUnits - allPlayers;