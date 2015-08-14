activateAddons [ 
  "vbs2_vehicles_air_helicopters_bell_uh1_ca_ch146",
  "vbs2_vehicles_air_helicopters_boeing_ah64_gb_wah64d",
  "vbs2_editor",
  "vbs2_vehicles_air_planes_fairchildrepublic_a10_us_a10",
  "vbs2_people_us_army_rifleman",
  "vbs2_people_us_usmc_pilot_heli",
  "vbs2_people_gb_raf_pilot_heli",
  "cacharacters",
  "cabuildings",
  "desert2_buildings"
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
_func_COC_Group_OnCatChanged = compile preprocessFile "\vbs2\editor\data\scripts\group\groupOnCatChanged.sqf";
_func_COC_Group_OnTypeChanged = compile preprocessFile "\vbs2\editor\data\scripts\group\groupOnTypeChanged.sqf";
_func_COC_Group_OnNewCatChanged = compile preprocessFile "\vbs2\editor\data\scripts\group\groupOnNewSideOrCatChanged.sqf";
_func_COC_Group_OnNewTypeChanged = compile preprocessFile "\vbs2\editor\data\scripts\group\groupOnNewTypeChanged.sqf";
_func_COC_Group_OnCreateInit = compile preprocessFile "\vbs2\editor\data\scripts\group\groupCreateOnInit.sqf";
_func_COC_Group_Selected = compile preprocessFile "\vbs2\editor\data\scripts\group\groupFromSelected.sqf";
_func_COC_SubTeam_Join = compile preprocessFile "\vbs2\editor\data\scripts\subteam\subTeamJoin.sqf";
_func_COC_Waypoint_Assign = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointAssign.sqf";
_func_COC_Waypoint_Update = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointUpdate.sqf";
_func_COC_Waypoint_Draw = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointDraw.sqf";
_func_COC_Waypoint_Delete = compile preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointDelete.sqf";
_func_COC_Waypoint_Move = compile preprocessFile "\vbs2\editor\Data\Scripts\waypoint\waypointMove.sqf";
_func_COC_Waypoint_Load_Branched = compile preprocessFile "\vbs2\editor\Data\Scripts\waypoint\waypointGetBranched.sqf";
_func_COC_Waypoint_Find_Config = compile preprocessFile "\vbs2\editor\Data\Scripts\waypoint\waypointFindConfigEntry.sqf";
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
_func_COC_IED_Create = compile preprocessFile "\vbs2\editor\data\scripts\ied\iedCreate.sqf";
_func_COC_Set_Display_Names = compile preprocessFile "\vbs2\editor\data\scripts\ui\setDisplayNames.sqf";
_func_COC_Set_Color = compile preprocessFile "\vbs2\editor\data\scripts\ui\setColor.sqf";
_func_COC_PlaceObjOnObj = compile preprocessFile "\vbs2\editor\Data\Scripts\vehicle\placeObjOnObj.sqf";
_func_COC_Draw_Distance = compile preprocessFile "\vbs2\editor\Data\Scripts\distance\drawDistance.sqf";
_missionVersion = 3;
private["_allWaypoints"];

_marker_2 = ["_marker_2","m2","","",ERROR,"Default",[20, 20],0,[2260.71,2532.09,8.14451],"true",ERROR,ERROR,true] call _func_COC_Marker_Create;

_marker_3 = ["_marker_3","m2","","",ERROR,"Default",[20, 20],0,[2259.29,2257.2,16.4087],"true",ERROR,ERROR,true] call _func_COC_Marker_Create;

_group_1 = ["_group_1","",[2245.81,2425.32,50],"WEST","","","",0,[]] call _func_COC_Create_Group;

_vehicle_2 = ["_vehicle_2", true, "VBS2_CA_Army_CH146_W_C6", [2245.81,2425.32,12.7584], [], 0, "FLY", 0, "UAV_Dummy", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_1", "", "NO CHANGE", "UNCHANGED", true, 1.00000, "on", "off", [], [], [], []] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_2";
_unit_5 = (
[
	"_unit_5", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [2245.81,2425.32,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "CH-146 - C6 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_unit_6 = (
[
	"_unit_6", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [2245.81,2425.32,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "CH-146 - C6 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_unit_7 = (
[
	"_unit_7", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [2245.81,2425.32,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "CH-146 - C6 Gunner ", [1], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_1]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_2";
_unit_8 = (
[
	"_unit_8", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [2245.81,2425.32,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_1", "WEST", "CH-146 - C6 Assistant Gunner ", [2], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_1]) call _func_COC_Create_Unit;

_marker_6 = (["_marker_6","m2","","TacticalMarker","","ColorBlue",[20, 20],0,[2245.81,2425.32,50],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_5]) call _func_COC_Marker_Tactical_Create;

_group_3 = ["_group_3","",[3141.08,2474.46,50],"WEST","","","",0,[]] call _func_COC_Create_Group;

_vehicle_5 = ["_vehicle_5", true, "VBS2_GB_WAH64D_LONGBOW", [3141.08,2474.46,62.7944], [], 0, "FLY", 0, "aircraft_2", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_3", "aircraft_2", "NO CHANGE", "CARELESS", true, 1.00000, "on", "off", [], [], [], []] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_5";
_unit_13 = (
[
	"_unit_13", true, "VBS2_GB_ARMY_HeliPilot_W_L9", [3141.08,2474.46,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "Apache AH.1 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_3]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strGunner = "_vehicle_5";
_unit_14 = (
[
	"_unit_14", true, "VBS2_GB_ARMY_HeliPilot_W_L9", [3141.08,2474.46,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_3", "WEST", "Apache AH.1 Commander ", [0], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_3]) call _func_COC_Create_Unit;

_marker_8 = (["_marker_8","m2","","TacticalMarker","","ColorBlue",[20, 20],0,[3141.08,2474.46,50],"true","\vbs2\ui\tacticmarkers\data\Frames\Friend_Units","\vbs2\ui\tacticmarkers\data\Icons\Aviation","\vbs2\ui\tacticmarkers\data\Modifiers\S_Team","\vbs2\ui\tacticmarkers\data\SubRoles\Blanc",[0,0],1,[0,0],1,[0,0],1,[0,0],1,true] + [_unit_13]) call _func_COC_Marker_Tactical_Create;

_veh = [];
["_waypoint_4",["name","_waypoint_4","type","MOVE","description","CP1.2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[1866.00769, 2084.10742],"nextTask","","prevTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","75","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [] call _func_COC_Waypoint_Assign;

_group_4 = ["_group_4","",[1640.12,3409.76,99.9975],"WEST","","","",0,[]] call _func_COC_Create_Group;

_vehicle_7 = ["_vehicle_7", true, "VBS2_US_AF_A10A_GBU12_HYDRA", [1640.12,3409.09,100.049], [], 0, "FLY", 0, "Aircraft_1", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_4", "Aircraft_1", "NO CHANGE", "AWARE", true, 1.00000, "on", "off", [], [], [], []] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_7";
_unit_20 = (
[
	"_unit_20", true, "SoldierWPilot", [1640.12,3409.76,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_4", "WEST", "A-10A - GBU-12 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1,
	0.5, 0.2, 0.5, 0.2, [], "", []
] + [_group_4]) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_21 = (
[
	"_unit_21", true, "vbs2_us_army_rifleman_w_m4", [2421.77197, 2464.97754, 5.66849], [], 0, "CAN_COLLIDE", 0, "dummy_soldier", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 0.60000, _strCommander, _strDriver, _strGunner, _strCargo, true, false, "", "WEST", "observer", [], "dummy_soldier", "NO CHANGE", "UNCHANGED", "Auto", 1.00000,
	0.50000, 0.20000, 0.50000, 0.20000, [], "", []
] + []) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_39",["name","_waypoint_39","type","MOVE","description","AC1_CP1","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[1986.16089, 2892.05933, 0.49360],"nextTask","_waypoint_42","prevTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","200","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_42",["name","_waypoint_42","type","MOVE","description","AC1_CP2","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2455.44165, 2078.63965],"nextTask","_waypoint_44","prevTask","_waypoint_39","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","200","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_44",["name","_waypoint_44","type","MOVE","description","AC1_CP3","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2255.21509, 1133.82080],"nextTask","_waypoint_46","prevTask","_waypoint_42","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","200","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_46",["name","_waypoint_46","type","MOVE","description","AC1_CP4","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[1135.19873, 958.62244],"nextTask","_waypoint_48","prevTask","_waypoint_44","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","150","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_48",["name","_waypoint_48","type","MOVE","description","AC1_CP5","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[559.54761, 2028.58276],"nextTask","_waypoint_50","prevTask","_waypoint_46","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","125","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_50",["name","_waypoint_50","type","MOVE","description","AC1_CP6","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[661.55627, 3060.91382, 0.58598],"nextTask","_waypoint_52","prevTask","_waypoint_48","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","100","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_52",["name","_waypoint_52","type","MOVE","description","AC1_CP7","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[1794.08704, 3386.28174],"nextTask","_waypoint_54","prevTask","_waypoint_50","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","75","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_54",["name","_waypoint_54","type","MOVE","description","AC1_CP8","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2413.53760, 2028.49609],"nextTask","_waypoint_56","prevTask","_waypoint_52","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","50","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_56",["name","_waypoint_56","type","MOVE","description","AC1_CP9","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2369.73804, 1096.19141],"nextTask","_waypoint_60","prevTask","_waypoint_54","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","50","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_60",["name","_waypoint_60","type","MOVE","description","AC1_CP10","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[868.03986, 1021.10657],"nextTask","_waypoint_62","prevTask","_waypoint_56","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","75","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_62",["name","_waypoint_62","type","MOVE","description","AC1_CP11","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[517.64362, 3110.97046, 0.54019],"nextTask","_waypoint_64","prevTask","_waypoint_60","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","100","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_64",["name","_waypoint_64","type","MOVE","description","AC1_CP12","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2025.59875, 3398.79590],"nextTask","_waypoint_66","prevTask","_waypoint_62","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","100","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

_veh = [];
["_waypoint_66",["name","_waypoint_66","type","MOVE","description","AC1_CP13","combat_mode","NO CHANGE","formation","NO CHANGE","speed","UNCHANGED","behavior","UNCHANGED","destination",[2588.73560, 971.05011],"nextTask","","prevTask","_waypoint_64","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[],"branchCondition","true","branchTo","","direction",0,"airSpeed","","airHeight","100","avrsAction","","TARGET_OBJECT","ERROR","TARGET_UNIT","ERROR","TARGET_VEHICLE","ERROR","TARGET_GROUP","ERROR","HIDE_TARGET","ERROR","VECTOR_DIRECTION","ERROR","TRANSITION_TIME",ERROR,"ON_START",ERROR,"ON_END",ERROR] + _veh] + [_unit_20] call _func_COC_Waypoint_Assign;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\group\groupBroadcastSubordinateGroups.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
