activateAddons [ 
  "cawater",
  "cacharacters",
  "vbs2_vehicles_land_wheeled_datsun_620_iq_datsun_620",
  "vbs2_weapons_machineguns_kalashnikov_pk_pkm",
  "vbs2_iq_civ",
  "vbs2_weapons_rifles_kalashnikov_ak47_akm"
];

if (!isNil "_map") then
{
  call compile preProcessFile "\vbs2\editor\Data\Scripts\init_global.sqf";
  initAmbientLife;
};

_func_COC_Create_Unit = compile preprocessFile "\vbs2\editor\data\scripts\unit\create_Unit.sqf";
_func_COC_Update_Unit = compile preprocessFile "\vbs2\editor\data\scripts\unit\update_Unit.sqf";
_func_COC_Delete_Unit = compile preprocessFile "\vbs2\editor\data\scripts\unit\delete_Unit.sqf";
_func_COC_Import_Unit = compile preprocessFile "\vbs2\editor\data\scripts\unit\import_Unit.sqf";
_func_COC_UpdatePlayability_Unit = compile preprocessFile "\vbs2\editor\data\scripts\unit\updateUnitPlayability.sqf";
_func_COC_Create_Group = compile preprocessFile "\vbs2\editor\data\scripts\group\create_Group.sqf";
_func_COC_Update_Group = compile preprocessFile "\vbs2\editor\data\scripts\group\update_Group.sqf";
_func_COC_Delete_Group = compile preprocessFile "\vbs2\editor\data\scripts\group\delete_Group.sqf";
_func_COC_Delete_Group_Only = compile preprocessFile "\vbs2\editor\data\scripts\group\delete_Group_Only.sqf";
_func_COC_Attach_Group = compile preprocessFile "\vbs2\editor\data\scripts\group\attach_Group.sqf";
_func_COC_Group_OnTypeChanged = compile preprocessFile "\vbs2\editor\data\scripts\group\groupOnTypeChanged.sqf";
_func_COC_Group_Selected = compile preprocessFile "\vbs2\editor\data\scripts\group\groupFromSelected.sqf";
_func_COC_SubTeam_Join = compile preprocessFile "\vbs2\editor\data\scripts\subteam\subTeamJoin.sqf";
_func_COC_Waypoint_Assign = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointAssign.sqf";
_func_COC_Waypoint_Update = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointUpdate.sqf";
_func_COC_Waypoint_Draw = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointDraw.sqf";
_func_COC_Waypoint_Delete = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointDelete.sqf";
_func_COC_Waypoint_Move = compile preprocessFile "\vbs2\editor\Data\Scripts\waypoint\waypointMove.sqf";
_func_COC_Marker_Create = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerCreate.sqf";
_func_COC_Marker_Update = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerUpdate.sqf";
_func_COC_Marker_SetDrawIcons = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerSetDrawIcons.sqf";
_func_COC_Marker_DlgChanged = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerDlgChanged.sqf";
_func_COC_Marker_Tactical_Create = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerCreateTactical.sqf";
_func_COC_Marker_Tactical_Update = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerUpdateTactical.sqf";
_func_COC_Marker_Tactical_SetDrawIcons = compile preprocessFile "\vbs2\editor\data\scripts\marker\markerSetDrawIconsTactical.sqf";
_getCrew = compile preprocessFile "\vbs2\editor\Data\Scripts\vehicle\getCrew.sqf";
_func_COC_Vehicle_Create = compile preprocessFile "\vbs2\editor\Data\Scripts\vehicle\vehicleCreate.sqf";
_func_COC_Vehicle_Update = compile preprocessFile "\vbs2\editor\Data\Scripts\vehicle\processVehicleJoin.sqf";
_func_COC_Vehicle_Occupy = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\occupyVehicle.sqf";
_func_COC_Vehicle_Delete = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\vehicleDelete.sqf";
_func_COC_Vehicle_UnJoin = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\vehicleUnJoinGrp.sqf";
_func_COC_Vehicle_GetInEH = preprocessFile "\vbs2\editor\data\scripts\vehicle\getIn.sqf";
_func_COC_Vehicle_GetOutEH = preprocessFile "\vbs2\editor\data\scripts\vehicle\getOut.sqf";
_func_COC_Vehicle_OnTypeChanged = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\vehicleOnTypeChanged.sqf";
_func_COC_Vehicle_UpdatePlayability = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\updateCrewPlayability.sqf";
_func_COC_Import_Vehicle = compile preprocessFile "\vbs2\editor\data\scripts\vehicle\import_Vehicle.sqf";
_func_COC_Trigger_SetDisplayName = compile preprocessFile "\vbs2\editor\data\scripts\trigger\setDisplayName.sqf";
_func_COC_Trigger_Create = compile preprocessFile "\vbs2\editor\data\scripts\trigger\createTrigger.sqf";
_func_COC_Set_Display_Names = compile preprocessFile "\vbs2\editor\data\scripts\ui\setDisplayNames.sqf";
_func_COC_Set_Color = compile preprocessFile "\vbs2\editor\data\scripts\ui\setColor.sqf";
_func_COC_PlaceObjOnObj = compile preprocessFile "\vbs2\editor\Data\Scripts\vehicle\placeObjOnObj.sqf";
_missionVersion = 1;
private["_allWaypoints"];

_group_1 = ["_group_1","WEST 1-1-A",[12698.2,9886.54,48.0571],"WEST","","","",0] call _func_COC_Create_Group;

_group_2 = ["_group_2","WEST 1-1-B",[13248.8,9876.25,48.0579],"WEST","","","",0] call _func_COC_Create_Group;

_group_3 = ["_group_3","WEST 1-1-C",[13791.3,9881.25,48.0772],"WEST","","","",0] call _func_COC_Create_Group;

_group_4 = ["_group_4","WEST 1-1-D",[13261.3,8981.25,47.3873],"WEST","","","",0] call _func_COC_Create_Group;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_15 = (
[
	"_unit_15", true, "VBS2_AU_Army_ATsoldier_D_CarlGustav", [13299.9,8962.38,12.5646], [], 0, "CAN_COLLIDE", 0, "Observer", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 1.00000, _strCommander, _strDriver, _strGunner, _strCargo, true, true, "", "west", "Observer", [], "Observer", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

_vehicle_12 = ["_vehicle_12", true, "VBS2_AU_Army_ARH_W", [12698.2,9886.54,50.1999], [], 0, "FLY", 0, "AC2", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "AC2", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_12";
_unit_6 = (
[
	"_unit_6", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12698.2,9886.54,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_12";
_unit_7 = (
[
	"_unit_7", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12698.2,9886.54,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

_marker_1 = (["_marker_1","m1","","TacticalMarker","","ColorBlue",[25, 25],0,[12698.2,9886.54,48.0571],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_6]) call _func_COC_Marker_Tactical_Create;

_vehicle_14 = ["_vehicle_14", true, "VBS2_AU_Army_ARH_W", [13248.8,9876.25,63.3225], [], 0, "FLY", 0, "AC1", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_2", "AC1", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_14";
_unit_8 = (
[
	"_unit_8", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13248.6,9876.3,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_14";
_unit_9 = (
[
	"_unit_9", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13248.6,9876.3,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

_marker_2 = (["_marker_2","m2","","TacticalMarker","","ColorBlue",[25, 25],0,[13248.8,9876.25,48.0579],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_8]) call _func_COC_Marker_Tactical_Create;

_vehicle_16 = ["_vehicle_16", true, "VBS2_AU_Army_ARH_W", [13791.3,9881.25,73.7009], [], 0, "FLY", 0, "AC3", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_3", "AC3", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_16";
_unit_10 = (
[
	"_unit_10", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13793.9,9881.42,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_16";
_unit_11 = (
[
	"_unit_11", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13793.9,9881.42,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

_marker_3 = (["_marker_3","m3","","TacticalMarker","","ColorBlue",[25, 25],0,[13791.3,9881.25,48.0772],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_10]) call _func_COC_Marker_Tactical_Create;

_vehicle_28 = ["_vehicle_28", true, "VBS2_AU_Army_S70_W", [13261.3,8981.25,61.8856], [], 0, "FLY", 0, "Dummy_UAV", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_4", "Dummy_UAV", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_28";
_unit_12 = (
[
	"_unit_12", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13261.3,8981.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "S-70 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_4]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_28";
_unit_13 = (
[
	"_unit_13", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13261.3,8981.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "S-70 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_4]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_28";
_unit_14 = (
[
	"_unit_14", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13261.3,8981.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "S-70 Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_4]) call _func_COC_Create_Unit;

_marker_4 = (["_marker_4","m4","","TacticalMarker","","ColorBlue",[25, 25],0,[13261.3,8981.25,47.3873],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_12]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_0",["name","_waypoint_0","type","MOVE","description","SC7_AC1_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13246.08789, 9581.89941],"nextTask","_waypoint_3","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_8] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_3",["name","_waypoint_3","type","MOVE","description","SC7_AC1_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13251.20703, 9267.01953],"nextTask","_waypoint_5","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_8] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_5",["name","_waypoint_5","type","MOVE","description","SC7_AC1_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13258.88672, 8772.93945],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_8] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_7",["name","_waypoint_7","type","MOVE","description","SC7_AC2_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12900.48730, 9474.37988],"nextTask","_waypoint_9","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_9",["name","_waypoint_9","type","MOVE","description","SC7_AC2_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13402.24707, 8785.73828],"nextTask","_waypoint_11","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_11",["name","_waypoint_11","type","MOVE","description","SC7_AC2_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13594.24707, 8560.45898],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_13",["name","_waypoint_13","type","MOVE","description","SC7_AC3_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13601.92773, 9476.93945],"nextTask","_waypoint_15","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_10] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_15",["name","_waypoint_15","type","MOVE","description","SC7_AC1_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13107.84766, 8770.37988],"nextTask","_waypoint_17","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_10] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_17",["name","_waypoint_17","type","MOVE","description","SC7_AC1_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12990.08789, 8578.37793],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_10] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
