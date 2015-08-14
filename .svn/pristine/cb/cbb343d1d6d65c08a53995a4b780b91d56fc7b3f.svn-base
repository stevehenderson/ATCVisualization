activateAddons [ 
  "vbs2_vehicles_air_helicopters_nhi_nh90_au_nh90",
  "caair",
  "vbs2_core"
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

_group_1 = ["_group_1","WEST 1-1-A",[13253.8,7823.19,50.2538],"WEST","","","",0] call _func_COC_Create_Group;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_5 = (
[
	"_unit_5", true, "VBS2_AU_Army_ATsoldier_D_CarlGustav", [13274.21973, 8985.42969, 11.43469], [], 0, "CAN_COLLIDE", 0, "Observer", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 1.00000, _strCommander, _strDriver, _strGunner, _strCargo, true, false, "", "west", "", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

_vehicle_0 = ["_vehicle_0", true, "VBS2_AU_Army_S70_W", [13858.8,8811.25,82.8978], [], 0, "FLY", 0, "Dummy_UAV", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "", "", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_1 = (
[
	"_unit_1", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13860.35156, 8812.34961, 83.70615], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "", "WEST", "S-70 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + []) call _func_COC_Create_Unit;

_vehicle_3 = ["_vehicle_3", true, "VBS2_AU_Army_MRH90_W", [13253.8,7823.19,80.9382], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_3";
_unit_4 = (
[
	"_unit_4", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13253.8,7823.19,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "MRH-90 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_9",["name","_waypoint_9","type","MOVE","description","Sc4_W5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12984.96289, 9366.86523],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_1] call _func_COC_Waypoint_Assign;

_group_2 = ["_group_2","WEST 1-1-D",[13256.3,8982.87,47.3967],"WEST","","","",0] call _func_COC_Create_Group;

_vehicle_7 = ["_vehicle_7", true, "VBS2_AU_Army_S70_W", [13256.3,8982.87,61.8339], [], 0, "FLY", 0, "Dummy_UAV", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_2", "", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_7";
_unit_8 = (
[
	"_unit_8", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13256.3,8982.87,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "S-70 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_7";
_unit_9 = (
[
	"_unit_9", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13256.3,8982.87,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "S-70 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_7";
_unit_10 = (
[
	"_unit_10", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13256.3,8982.87,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "S-70 Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

_marker_1 = (["_marker_1","m1","","TacticalMarker","","ColorBlue",[25, 25],0,[13256.3,8982.87,47.3967],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_8]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_0",["name","_waypoint_0","type","MOVE","description","Sc4_W1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13256.32227, 8132.94531],"nextTask","_waypoint_3","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_3",["name","_waypoint_3","type","MOVE","description","Sc4_W2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13258.88281, 8365.90430],"nextTask","_waypoint_5","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_5",["name","_waypoint_5","type","MOVE","description","Sc4_W3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13264.00293, 8570.70410],"nextTask","_waypoint_7","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_7",["name","_waypoint_7","type","MOVE","description","Sc4_W4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13266.56348, 9256.78320],"nextTask","_waypoint_24","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_24",["name","_waypoint_24","type","MOVE","description","Sc4_W5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13540.49707, 9661.26855],"nextTask","_waypoint_27","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_27",["name","_waypoint_27","type","MOVE","description","Sc4_W6","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[14008.97656, 9871.18945],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
