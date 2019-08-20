-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 5:02 PM British Summer Time

local exports = {};
vehicleAuthorisationEnum = vehicleAuthorisationEnum or {};
do
	vehicleAuthorisationEnum.ALL = 0;
	vehicleAuthorisationEnum[0] = "ALL";
	vehicleAuthorisationEnum.DRIVE = 1;
	vehicleAuthorisationEnum[1] = "DRIVE";
	vehicleAuthorisationEnum.LOCK = 2;
	vehicleAuthorisationEnum[2] = "LOCK";
	vehicleAuthorisationEnum.NONE = 3;
	vehicleAuthorisationEnum[3] = "NONE";
end;
vehicleErrorEnum = vehicleErrorEnum or {};
do
	vehicleErrorEnum.AUTHENTICATION_FAILED = 0;
	vehicleErrorEnum[0] = "AUTHENTICATION_FAILED";
	vehicleErrorEnum.VEHICLE_UNAVAILABLE = 1;
	vehicleErrorEnum[1] = "VEHICLE_UNAVAILABLE";
	vehicleErrorEnum.VEHICLE_DOES_NOT_EXIST = 2;
	vehicleErrorEnum[2] = "VEHICLE_DOES_NOT_EXIST";
	vehicleErrorEnum.VEHICLE_IN_USE = 3;
	vehicleErrorEnum[3] = "VEHICLE_IN_USE";
	vehicleErrorEnum.VEHICLE_UNKNOWN = 4;
	vehicleErrorEnum[4] = "VEHICLE_UNKNOWN";
	vehicleErrorEnum.VEHICLE_OUT_OF_FUEL = 5;
	vehicleErrorEnum[5] = "VEHICLE_OUT_OF_FUEL";
end;
exports.vehicleAuthorisationEnum = vehicleAuthorisationEnum;
exports.vehicleErrorEnum = vehicleErrorEnum;
return exports;
