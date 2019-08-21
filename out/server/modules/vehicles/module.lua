-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local userStore = TS.import(game:GetService("ServerScriptService"), "TS", "data", "stores", "userData", "module").default;
local _0 = TS.import(game:GetService("ServerScriptService"), "TS", "data", "enums", "vehicle");
local vehicleAuthorisationEnum, vehicleErrorEnum = _0.vehicleAuthorisationEnum, _0.vehicleErrorEnum;
local vehicle;
do
	vehicle = setmetatable({}, {
		__tostring = function() return "vehicle" end;
	});
	vehicle.__index = vehicle;
	function vehicle.new(...)
		local self = setmetatable({}, vehicle);
		self:constructor(...);
		return self;
	end;
	function vehicle:constructor(vehicle)
		self.vehicleId = "";
		self.state = {
			locked = true;
		};
		self.VehicleData = vehicle;
	end;
	function vehicle:checkAuthorisation(player)
		local PlayerData = userStore:getPlayer(player.UserId);
		if PlayerData then
			if self.VehicleData.owner_player == PlayerData.id then
				return vehicleAuthorisationEnum.ALL;
			else
				return vehicleAuthorisationEnum.NONE;
			end;
		end;
	end;
	function vehicle:setLocked(lock, player)
		if self:checkAuthorisation(player) == vehicleAuthorisationEnum.ALL then
			self.state.locked = lock;
			return self:getLocked();
		else
			return vehicleErrorEnum.AUTHENTICATION_FAILED;
		end;
	end;
	function vehicle:getLocked()
		return self.state.locked;
	end;
end;
exports.default = vehicle;
return exports;
