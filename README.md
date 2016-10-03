# XM8CustomDeployBike
XM8CustomApps (InfiSTAR) Deploy Bike System by exceptionptr (0x2AFF)

**Installation**

- Extract your mpmission.
- Put the addons folder and content into your mpmission.
- Add following lines into your init.sqf
```
// Deploy/Scrap Bike Functions
#include "addons\deployBike\createBike.sqf";
fnc_bike_deploy = compileFinal preprocessFileLineNumbers "addons\deployBike\deployBike.sqf";
fnc_bike_scrap = compileFinal preprocessFileLineNumbers "addons\deployBike\scrapBike.sqf";
```
- Open your mpmissions config.cpp and find `class Bikes {};`and add the `class Scrap:ExileAbstractAction` to the class:

```
class Bikes
	{
		targetType = 2;
		target = "Bicycle";
	
		class Actions
		{
			class Flip: ExileAbstractAction
			{
				title = "Flip";
				condition = "true";
				action = "_this call ExileClient_object_vehicle_flip";
			};
				
			class Scrap: ExileAbstractAction
			{
				title = "Scrap";
				condition = "true";
				action = "_this call fnc_bike_scrap";
			};
		};
	};
```
	
- Pack your mpmission.
- Go to `@ExileServer\addons` and unpack `a3_infiSTAR_Exile_customApps.pbo`
- Edit the `class customapp_7` in `app_defines.hpp`:

```
class customapp_7 {
	submenu = 0;
	toggleable = 0;
	text = "Deploy Bike";
	tooltip = "Deploy Bike";
	fnc = "call fnc_bike_deploy;";
	pic = "\exile_assets\texture\item\Exile_Item_DuctTape.paa";
};
```

**Have fun!**
