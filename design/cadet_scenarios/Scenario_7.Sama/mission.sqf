activateAddons [ 
  "vbs2_people_au_adf_rifleman",
  "vbs2_weapons_rifles_ai_articwarfare_au_sr98",
  "vbs2_weapons_pistols_browning_hipower",
  "caweapons",
  "vbs2_vehicles_air_helicopters_bell_uh1_nz_uh1h",
  "vbs2_people_au_adf_pilot_heli",
  "vbs2_vehicles_air_helicopters_bell_ah1_us_ah1z",
  "vbs2_weapons_launchers_70mmrocket",
  "vbs2_weapons_launchers_agm114hellfire",
  "vbs2_weapons_cannons_m197_gatling",
  "vbs2_people_us_usmc_pilot_heli",
  "vbs2_weapons_pistols_beretta_m92",
  "vbs2_vehicles_air_helicopters_boeing_h46_us_h46",
  "vbs2_vehicles_air_helicopters_sikorsky_s65_us_ch53",
  "caair",
  "vbs2_core",
  "vbs2_vehicles_air_planes_predator_au_predator",
  "cacharacters",
  "vbs2_vehicles_air_helicopters_bell_uh1_us_uh1y"
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

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_0 = (
[
	"_unit_0", true, "VBS2_AU_Army_sniper_D_sr98", [21330.31445, 14354.79102, 5.55699], [], 0, "CAN_COLLIDE", 0, "", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 0.60000, _strCommander, _strDriver, _strGunner, _strCargo, true, true, "", "WEST", "", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

_group_0 = ["_group_0","WEST 1-1-B",[21330.3,13831.5,46.99],"WEST","","","",0] call _func_COC_Create_Group;

_group_1 = ["_group_1","WEST 1-1-C",[20810.5,14358.3,48.0917],"WEST","","","",0] call _func_COC_Create_Group;

_group_2 = ["_group_2","WEST 1-1-D",[21804.5,14361.8,46.1544],"WEST","","","",0] call _func_COC_Create_Group;

_group_3 = ["_group_3","WEST 1-1-E",[20905.3,13884.1,-0.936214],"WEST","","","",0] call _func_COC_Create_Group;

_group_4 = ["_group_4","WEST 1-1-F",[21741.3,13877.1,48.0917],"WEST","","","",0] call _func_COC_Create_Group;

_vehicle_0 = ["_vehicle_0", true, "VBS2_NZ_RNZAF_UH1H_W", [21330.3,13831.5,58.1614], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_0", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_0";
_unit_2 = (
[
	"_unit_2", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [21330.3,13831.5,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "UH1H Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_0",["name","_waypoint_0","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21323.27344, 14790.34375],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_2] call _func_COC_Waypoint_Assign;

_vehicle_2 = ["_vehicle_2", true, "VBS2_US_MC_AH1Z_B", [20810.5,14358.3,54.7502], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_2";
_unit_3 = (
[
	"_unit_3", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [20810.5,14358.3,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "AH1Z Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_unit_4 = (
[
	"_unit_4", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [20810.5,14358.3,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "AH1Z Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

_marker_0 = (["_marker_0","m1","","TacticalMarker","","ColorBlue",[25, 25],0,[20810.5,14358.3,48.0917],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_3]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_2",["name","_waypoint_2","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21895.79492, 14361.83496],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_3] call _func_COC_Waypoint_Assign;

_vehicle_6 = ["_vehicle_6", true, "vbs2_us_mc_ch46_b", [21804.5,14361.8,57.0044], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_2", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_6";
_unit_5 = (
[
	"_unit_5", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21804.5,14361.8,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "CH-46E Sea Knight Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_4",["name","_waypoint_4","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[20698.06836, 14361.83496],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_5] call _func_COC_Waypoint_Assign;

_vehicle_8 = ["_vehicle_8", true, "vbs2_us_mc_ch53e_b", [20905.3,13884.1,54.9124], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_3", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_8";
_unit_6 = (
[
	"_unit_6", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [20905.3,13884.1,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "CH-53E Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_6",["name","_waypoint_6","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21737.73633, 14828.98242],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_vehicle_13 = ["_vehicle_13", true, "VBS2_US_MC_AH1Z_B", [21741.3,13877.1,60], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_4", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_13";
_unit_7 = (
[
	"_unit_7", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21741.3,13877.1,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "AH1Z Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_4]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_13";
_unit_8 = (
[
	"_unit_8", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21741.3,13877.1,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "AH1Z Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_4]) call _func_COC_Create_Unit;

_marker_1 = (["_marker_1","m2","","TacticalMarker","","ColorBlue",[25, 25],0,[21741.3,13877.1,48.0917],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_7]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_8",["name","_waypoint_8","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[20915.83594, 14839.51758],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_7] call _func_COC_Waypoint_Assign;

_group_5 = ["_group_5","CIVL 1-1-A",[21260.1,14762.2,98.4618],"CIV","","","",0] call _func_COC_Create_Group;

_group_6 = ["_group_6","WEST 1-1-G",[21477.8,14758.7,47.0634],"WEST","","","",0] call _func_COC_Create_Group;

_group_7 = ["_group_7","WEST 1-1-H",[21330.30078, 14365.29980, 55.55555],"WEST","","","",0] call _func_COC_Create_Group;

_vehicle_15 = ["_vehicle_15", true, "vbs2_AU_RAAF_predator", [21260.1,14762.2,105.778], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_5", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_15";
_unit_9 = (
[
	"_unit_9", true, "Civilian", [21260.1,14762.2,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_5", "WEST", "Predator MQ-1 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_5]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_10",["name","_waypoint_10","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21414.59570, 13806.87305],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_9] call _func_COC_Waypoint_Assign;

_vehicle_17 = ["_vehicle_17", true, "VBS2_US_MC_UH1Y_B", [21477.8,14758.7,55.5556], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_6", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_17";
_unit_10 = (
[
	"_unit_10", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21477.8,14758.7,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_6", "WEST", "UH-1Y Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_6]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_17";
_unit_11 = (
[
	"_unit_11", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21477.8,14758.7,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_6", "WEST", "UH-1Y Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_6]) call _func_COC_Create_Unit;

_marker_2 = (["_marker_2","m3","","TacticalMarker","","ColorBlue",[25, 25],0,[21477.8,14758.7,47.0634],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_10]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_12",["name","_waypoint_12","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21133.60352, 13841.99805],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_10] call _func_COC_Waypoint_Assign;

_vehicle_19 = ["_vehicle_19", true, "VBS2_US_MC_UH1Y_B", [21330.30078, 14365.29980, 55.55555], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_7", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_19";
_unit_12 = (
[
	"_unit_12", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21330.30078, 14365.29980, 55.55555], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_7", "WEST", "UH-1Y Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_7]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_19";
_unit_13 = (
[
	"_unit_13", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [21330.30078, 14365.29980, 55.55555], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_7", "WEST", "UH-1Y Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_7]) call _func_COC_Create_Unit;

_marker_3 = (["_marker_3","m4","","TacticalMarker","","ColorBlue",[25, 25],0,[21330.30078, 14365.29980, 55.55555],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_12]) call _func_COC_Marker_Tactical_Create;

_group_8 = ["_group_8","WEST 1-1-I",[20898.3,14611.2,-0.936197],"WEST","","","",0] call _func_COC_Create_Group;

_vehicle_21 = ["_vehicle_21", true, "vbs2_us_mc_ch53e_b", [20898.3,14611.2,5.11111], [], 0, "CAN_COLLIDE", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_8", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_21";
_unit_14 = (
[
	"_unit_14", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [20898.3,14611.2,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_8", "WEST", "CH-53E Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_8]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_14",["name","_waypoint_14","type","MOVE","description","","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[21885.25781, 14035.18066],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_14] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
