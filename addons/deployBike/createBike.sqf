// 2016 (c) 0x2AFF (exceptionptr)
// https://github.com/0x2aff/XM8CustomDeployBike

if (isDedicated || isServer) then
{
    "do_CreateBike" addPublicVariableEventHandler
    {
        _parameters = (_this select 1);
        _parameters2 = (_parameters select 1);
		
        _vehicleArray = ["Exile_Bike_Oldbike", "Exile_Bike_MountainBike"];
        _rVehIndex = floor random count _vehicleArray;
        _vehicle = _vehicleArray select _rVehIndex;
		
        _spawnDir = (getDir player) -90;
		
        veh = createVehicle[_vehicle, _parameters2, [], 0, "NONE"];
        veh setDir _spawnDir;
    }
}
