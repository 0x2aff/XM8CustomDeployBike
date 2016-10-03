// 2016 (c) 0x2AFF (exceptionptr)
// https://github.com/0x2aff/XM8CustomDeployBike

if !((vehicle player) isEqualTo player) exitWith {};

if (typeOf cursorTarget == "Exile_Bike_OldBike" || typeOf cursorTarget == "Exile_Bike_MountainBike") then {
    deletevehicle cursorTarget;
    player playMove "AinvPknlMstpSnonWnonDr_medic3";
    player additem "Exile_Item_DuctTape";
    uiSleep 4;
    ["SuccessTitleAndText", ["Bike scrapped!", "You received your Duct Tape in return."]] call ExileClient_gui_toaster_addTemplateToast;
};
