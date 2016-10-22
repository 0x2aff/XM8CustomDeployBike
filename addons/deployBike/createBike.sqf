// 2016 (c) 0x2AFF (exceptionptr)
// https://github.com/0x2aff/XM8CustomDeployBike

if (isServer) then
{
    "do_CreateBike" addPublicVariableEventHandler
    {
        private ["_parameters","_position","_vehicleArray","_rVehIndex","_vehicle","_spawnDir","_veh"];
        _parameters = _this select 1;
        _position = _parameters select 1;
        _spawnDir = (_parameters select 2) - 90; //not sure what the point is of turning it sideways is, take out - 90 if you don't want it
		
        _vehicleArray = ["Exile_Bike_Oldbike", "Exile_Bike_MountainBike"];
        _rVehIndex = floor (random (count _vehicleArray));
        _vehicle = _vehicleArray select _rVehIndex;
		
        _veh = createVehicle[_vehicle, [0,0,0], [], 0, "CAN_COLLIDE"];
        _veh setposATL _position;
        _veh setDir _spawnDir;
    };
};
