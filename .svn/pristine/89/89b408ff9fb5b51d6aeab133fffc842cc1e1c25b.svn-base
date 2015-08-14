activateAddons [ 
  "vbs2_vehicles_air_helicopters_sikorsky_h70_au_s70",
  "vbs2_weapons_machineguns_fn_mag_au_mag58",
  "vbs2_people_au_adf_pilot_heli",
  "vbs2_weapons_pistols_browning_hipower",
  "caweapons",
  "vbs2_vehicles_air_helicopters_eurocopter_ec665_au_arh",
  "vbs2_weapons_launchers_70mmrocket",
  "vbs2_weapons_launchers_agm114hellfire",
  "vbs2_weapons_cannons_giat30",
  "vbs2_vehicles_land_static_m3_tripod_us_m3_tripod",
  "vbs2_weapons_machineguns_browning_m2",
  "vbs2_people_us_usmc_rifleman",
  "vbs2_weapons_rifles_armalite_m16_us_m16",
  "vbs2_people_au_adf_rifleman",
  "vbs2_weapons_rifles_steyr_aug_au_f88",
  "vbs2_weapons_launchers_bofors_carlgustav_carlgustav_m2"
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

_group_0 = ["_group_0","WEST 1-1-A",[13248.6,8990.54,47.403],"WEST","","","",0] call _func_COC_Create_Group;

_group_1 = ["_group_1","WEST 1-1-B",[12316.8,9361.74,48.1119],"WEST","","","",0] call _func_COC_Create_Group;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_8 = (
[
	"_unit_8", true, "VBS2_AU_Army_ATsoldier_D_CarlGustav", [13243.50000, 8931.66016, 15.73478], [], 0, "CAN_COLLIDE", 0, "Observer", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 0.60000, _strCommander, _strDriver, _strGunner, _strCargo, true, true, "", "WEST", "", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

_vehicle_0 = ["_vehicle_0", true, "VBS2_AU_Army_S70_W", [13248.6,8990.54,61.1993], [], 0, "FLY", 0, "Dummy_UAV", 1.00000, 0.97576, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_0", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_0";
_unit_1 = (
[
	"_unit_1", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13248.6,8990.54,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "S-70 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_0";
_unit_2 = (
[
	"_unit_2", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13248.6,8990.54,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "S-70 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_0";
_unit_3 = (
[
	"_unit_3", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13248.6,8990.54,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "S-70 Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

_marker_0 = (["_marker_0","m1","","TacticalMarker","","ColorBlue",[25, 25],0,[13248.6,8990.54,47.403],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_1]) call _func_COC_Marker_Tactical_Create;

_vehicle_3 = ["_vehicle_3", true, "VBS2_AU_Army_ARH_W", [12316.8,9361.74,85.1486], [], 0, "FLY", 0, "AC1", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_3";
_unit_4 = (
[
	"_unit_4", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12316.8,9361.74,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_3";
_unit_5 = (
[
	"_unit_5", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12316.8,9361.74,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

_marker_1 = (["_marker_1","m2","","TacticalMarker","","ColorBlue",[25, 25],0,[12316.8,9361.74,48.1119],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_4]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_0",["name","_waypoint_0","type","MOVE","description","Scenario_3_W1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12767.36035, 9305.42480],"nextTask","_waypoint_3","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_3",["name","_waypoint_3","type","MOVE","description","Scenario_3_W2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13015.67969, 9192.78320],"nextTask","_waypoint_5","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_5",["name","_waypoint_5","type","MOVE","description","Scenario_3_W3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13164.16016, 9067.34375],"nextTask","_waypoint_7","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_7",["name","_waypoint_7","type","MOVE","description","Scenario_3_W4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13381.75977, 8885.58398],"nextTask","_waypoint_9","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_9",["name","_waypoint_9","type","MOVE","description","Scenario_3_W5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13604.48145, 8701.26465],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
