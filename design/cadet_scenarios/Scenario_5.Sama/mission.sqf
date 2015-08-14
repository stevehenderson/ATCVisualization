activateAddons [ 
  "vbs2_people_us_ussf_rifleman",
  "vbs2_weapons_rifles_colt_m4_us_m4a1",
  "vbs2_weapons_pistols_glock_17",
  "caweapons",
  "caa10",
  "cacharacters",
  "vbs2_core",
  "caair",
  "vbs2_vehicles_air_planes_lockheed_c130_au_c130j",
  "vbs2_people_au_adf_pilot_fighter",
  "vbs2_vehicles_air_planes_predator_au_predator",
  "vbs2_vehicles_air_planes_boeing_f18_au_f18",
  "vbs2_weapons_cannons_m61_vulcan",
  "vbs2_weapons_launchers_gbu12",
  "vbs2_vehicles_air_helicopters_sikorsky_s65_us_ch53",
  "vbs2_people_us_usmc_pilot_heli",
  "vbs2_weapons_pistols_beretta_m92"
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
	"_unit_0", true, "VBS2_us_soc_rifleman_A_m4", [16121.5,17598.6,13], [], 0, "CAN_COLLIDE", 0, "", 1.00000,
	1.00000, -1, "UNKNOWN", "", "PRIVATE", 0.60000, _strCommander, _strDriver, _strGunner, _strCargo, true, true, "", "WEST", "", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1.00000
] + []) call _func_COC_Create_Unit;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_unit_2 = (
[
	"_unit_2", true, "SoldierWPilot", [15298.4,15177.2,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "", "WEST", "A-10 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + []) call _func_COC_Create_Unit;

_group_2 = ["_group_2","CIVL 1-1-A",[16118.20020, 18049.29883, 115.27203],"CIV","","","",0] call _func_COC_Create_Group;

_vehicle_8 = ["_vehicle_8", true, "vbs2_AU_RAAF_predator", [16118.2,18049.3,115.272], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "_group_2", "", "NO CHANGE", "CARELESS", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_8";
_unit_4 = (
[
	"_unit_4", true, "Civilian", [16118.2,18049.3,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "_group_2", "WEST", "Predator MQ-1 Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + [_group_2]) call _func_COC_Create_Unit;

_veh = [];
["_waypoint_19",["name","_waypoint_19","type","MOVE","description","Scenario_XXX","combat_mode","NO CHANGE","formation","NO CHANGE","speed","LIMITED","behavior","UNCHANGED","destination",[16118.46094, 16020.95996],"nextTask","","synchList",[],"placement",0,"timeout_min",0,"timeout_mid",0,"timeout_max",0,"condition","true","on_activation","","script","","show","NEVER","synchTriggers",[]] + _veh] + [_unit_4] call _func_COC_Waypoint_Assign;

_vehicle_9 = ["_vehicle_9", true, "vbs2_us_mc_ch53e_b", [16121.5,17591.6,63], [], 0, "FLY", 0, "", 1.00000, 1.00000, 1.00000, "UNKNOWN", "DEFAULT", "", 0, "", "", "NO CHANGE", "UNCHANGED", true, 1.00000] call _func_COC_Vehicle_Create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_strDriver = "_vehicle_9";
_unit_6 = (
[
	"_unit_6", true, "VBS2_US_MC_HeliPilot_W_BerettaM9", [16121.5,17591.6,0], [], 0, "CAN_COLLIDE", 0, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 0.6, _strCommander, _strDriver, _strGunner, _strCargo, false, false, "", "WEST", "CH-53E Pilot ", [], "", "NO CHANGE", "UNCHANGED", "Auto", 1
] + []) call _func_COC_Create_Unit;

call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepare.sqf"));
call (compile (preprocessFile "\vbs2\editor\data\scripts\waypoint\waypointsPrepareSynch.sqf"));

if (isNil "_map") then
{
  processInitCommands;
};
