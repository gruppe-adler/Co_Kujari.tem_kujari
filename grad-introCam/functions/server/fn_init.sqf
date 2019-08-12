private _multiPlier = 1;

sleep 5;

setTimeMultiplier 100;

sleep 40;

for "_i" from 0 to 99 do {
	setTimeMultiplier _multiPlier;
	_multiPlier = _multiPlier - 1;
	sleep 0.5;
};