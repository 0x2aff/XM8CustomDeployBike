if !((vehicle player) isEqualTo player) exitWith {};

if ("Exile_Item_DuctTape" in (magazines player)) then {	
    player playMove "AinvPknlMstpSnonWnonDr_medic3";
	player removeItem "Exile_Item_DuctTape";
	
    _spawnPos = player modelToWorld [0,3,0];
	do_CreateBike = [player, _spawnPos, _spawnDir];
	publicVariableServer "do_CreateBike";
	
    uiSleep 4;
	["SuccessTitleAndText", ["Bike deployed!", "Your Duct Tape have been removed."]] call ExileClient_gui_toaster_addTemplateToast;
};