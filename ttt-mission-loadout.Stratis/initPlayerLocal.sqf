// add teleporter 
[teleporter] call FETT_fnc_W_addTeleport;

// add spectator cam
teleporter addAction ["Zuschauermodus", {
    params ["_target","_caller"];
    ["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
    [_caller,true] remoteExecCall ["hideObjectGlobal", 2];
},[],0.5,false,true,"","",5];
// remove corpse if respawned in base (e.g. for exiting spectator cam)
player addEventHandler ["Respawn",{
    params ["","_corpse"];
    if((getPosASL player) distance (getMarkerPos "respawn") < 1000) then {
        deleteVehicle _corpse;
    };
}];