activateAddons [ 
  "vbs2_vehicles_air_helicopters_boeing_h47_au_ch47",
  "vbs2_weapons_machineguns_ge_m134",
  "vbs2_vehicles_air_helicopters_boeing_h47",
  "vbs2_people_au_adf_pilot_heli",
  "vbs2_weapons_pistols_browning_hipower",
  "caweapons",
  "vbs2_vehicles_air_helicopters_eurocopter_ec665_au_arh",
  "vbs2_weapons_launchers_70mmrocket",
  "vbs2_weapons_launchers_agm114hellfire",
  "vbs2_weapons_cannons_giat30",
  "vbs2_vehicles_air_helicopters_sikorsky_h70_au_s70",
  "vbs2_weapons_machineguns_fn_mag_au_mag58",
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

_group_0 = ["_group_0","WEST 1-1-A",[14026.3,8436.25,48.0604],"WEST","","","",0] call _func_COC_Create_Group;

_group_1 = ["_group_1","WEST 1-1-B",[14106.2,9464.14,48.1626],"WEST","","","",0] call _func_COC_Create_Group;

_group_2 = ["_group_2","WEST 1-1-C",[12045.4,8091.99,-1.2153],"WEST","","","",0] call _func_COC_Create_Group;

_group_3 = ["_group_3","WEST 1-1-D",[13228.8,8971.25,47.3774],"WEST","","","",0] call _func_COC_Create_Group;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_14 = (
[
	"_unit_14", true, "VBS2_AU_Army_ATsoldier_D_CarlGustav", [13192.3,8947.03,28.7146], [], 0, "CAN_COLLIDE", 0, "Observer", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 0.60000, _strCommander, _strDriver, _strGunner, _strCargo, true, true, "", "WEST", "Observer", [], "Observer", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

_vehicle_0 = ["_vehicle_0", true, "VBS2_AU_Army_ARH_W", [14026.3,8436.25,71.1743], [], 0, "FLY", 0, "AC1", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_0", "AC1", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

_vehicle_2 = ["_vehicle_2", true, "VBS2_AU_Army_ARH_W", [14106.2,9464.14,92.3011], [], 0, "FLY", 0, "AC2", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "AC2", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_2";
_unit_4 = (
[
	"_unit_4", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [14106.2,9464.14,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_unit_5 = (
[
	"_unit_5", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [14106.2,9464.14,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_1]) call _func_COC_Create_Unit;

_marker_1 = (["_marker_1","m2","","TacticalMarker","","ColorBlue",[25, 25],0,[14106.2,9464.14,48.1626],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_4]) call _func_COC_Marker_Tactical_Create;

_vehicle_7 = ["_vehicle_7", true, "VBS2_AU_Army_CH47D_G_M134", [12045.4,8091.99,203.418], [], 0, "FLY", 0, "AC3", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_2", "AC3", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_7";
_unit_6 = (
[
	"_unit_6", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12045.4,8091.99,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "CH-47D Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_7";
_unit_7 = (
[
	"_unit_7", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12045.4,8091.99,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "CH-47D Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_7";
_unit_8 = (
[
	"_unit_8", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [12045.4,8091.99,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "CH-47D Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

_marker_2 = (["_marker_2","m3","","TacticalMarker","","ColorBlue",[25, 25],0,[12045.4,8091.99,-1.2153],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_6]) call _func_COC_Marker_Tactical_Create;

_vehicle_12 = ["_vehicle_12", true, "VBS2_AU_Army_S70_W", [13228.8,8971.25,63.5422], [], 0, "FLY", 0, "Dummy_UAV", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_3", "Dummy_UAV", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_12";
_unit_9 = (
[
	"_unit_9", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13228.8,8971.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "S-70 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_12";
_unit_10 = (
[
	"_unit_10", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13228.8,8971.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "S-70 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_12";
_unit_11 = (
[
	"_unit_11", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [13228.8,8971.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "S-70 Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_3]) call _func_COC_Create_Unit;

_marker_3 = (["_marker_3","m4","","TacticalMarker","","ColorBlue",[25, 25],0,[13228.8,8971.25,47.3774],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_9]) call _func_COC_Marker_Tactical_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_0";
_unit_12 = (
[
	"_unit_12", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [14026.3,8436.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "ARH Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_0";
_unit_13 = (
[
	"_unit_13", true, "VBS2_AU_Army_HeliPilot_W_BrowningHP", [14026.3,8436.25,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_0", "WEST", "ARH Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_0]) call _func_COC_Create_Unit;

_marker_0 = (["_marker_0","m1","","TacticalMarker","","ColorBlue",[25, 25],0,[14026.3,8436.25,48.0604],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_12]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_0",["name","_waypoint_0","type","MOVE","description","SC6_AC1_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13829.75977, 8532.30469],"nextTask","_waypoint_3","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_3",["name","_waypoint_3","type","MOVE","description","SC6_AC1_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13563.51953, 8644.94531],"nextTask","_waypoint_5","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_5",["name","_waypoint_5","type","MOVE","description","SC6_AC1_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13358.71973, 8778.06445],"nextTask","_waypoint_7","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_7",["name","_waypoint_7","type","MOVE","description","SC6_AC1_CP4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13264.00000, 8900.94531],"nextTask","_waypoint_9","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_9",["name","_waypoint_9","type","MOVE","description","SC6_AC1_CP5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13092.47949, 9095.50586],"nextTask","_waypoint_11","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_11",["name","_waypoint_11","type","MOVE","description","SC6_AC1_CP6","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12849.28125, 9428.30469],"nextTask","_waypoint_13","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_13",["name","_waypoint_13","type","MOVE","description","SC6_AC1_CP7","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12652.16016, 9643.34570],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_12] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_15",["name","_waypoint_15","type","MOVE","description","SC6_AC2_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13957.76270, 9433.42578],"nextTask","_waypoint_17","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_17",["name","_waypoint_17","type","MOVE","description","SC6_AC2_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13724.80273, 9341.26563],"nextTask","_waypoint_19","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_19",["name","_waypoint_19","type","MOVE","description","SC6_AC2_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13461.12207, 9146.70508],"nextTask","_waypoint_21","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_21",["name","_waypoint_21","type","MOVE","description","SC6_AC2_CP4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13138.56250, 8877.90527],"nextTask","_waypoint_23","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_23",["name","_waypoint_23","type","MOVE","description","SC6_AC2_CP5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12880.00391, 8724.30566],"nextTask","_waypoint_25","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_25",["name","_waypoint_25","type","MOVE","description","SC6_AC2_CP6","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12626.56348, 8522.06543],"nextTask","_waypoint_27","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_27",["name","_waypoint_27","type","MOVE","description","SC6_AC2_CP7","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12344.96484, 8458.06641],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_29",["name","_waypoint_29","type","MOVE","description","SC6_AC3_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12380.80566, 8094.54834],"nextTask","_waypoint_31","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_31",["name","_waypoint_31","type","MOVE","description","SC6_AC3_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[12933.76563, 8209.74707],"nextTask","_waypoint_33","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_33",["name","_waypoint_33","type","MOVE","description","SC6_AC3_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13141.12695, 8422.22656],"nextTask","_waypoint_35","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_35",["name","_waypoint_35","type","MOVE","description","SC6_AC3_CP4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13220.48633, 8711.50586],"nextTask","_waypoint_37","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_37",["name","_waypoint_37","type","MOVE","description","SC6_AC3_CP5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13253.76563, 9108.30664],"nextTask","_waypoint_39","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_39",["name","_waypoint_39","type","MOVE","description","SC6_AC3_CP6","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[13292.16699, 9574.22656],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_6] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
