-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local fetchPlayer = TS.import(game:GetService("ServerScriptService"), "TS", "data", "metrosAPI", "fetchPlayer", "module").default;
local UserStore = TS.import(game:GetService("ServerScriptService"), "TS", "data", "stores", "userData", "module").default;
local graphTypes = TS.import(game:GetService("ServerScriptService"), "TS", "data", "types", "graph", "module");
local characterEnum = TS.import(game:GetService("ServerScriptService"), "TS", "data", "enums", "player", "module").character;
local PlayerManager;
do
	PlayerManager = setmetatable({}, {
		__tostring = function() return "PlayerManager" end;
	});
	PlayerManager.__index = PlayerManager;
	function PlayerManager.new(...)
		local self = setmetatable({}, PlayerManager);
		self:constructor(...);
		return self;
	end;
	function PlayerManager:constructor(player, ready)
		self.playerRef = player;
		fetchPlayer(player):andThen(function(playerData)
			UserStore:addPlayer(player.UserId, playerData);
			ready();
		end);
	end;
	PlayerManager.getVehicles = TS.async(function(self)
		local userData = TS.await(UserStore:getPlayer(self.playerRef.UserId));
		if userData and userData.vehicles then
			return userData.vehicles;
		end;
	end);
	PlayerManager.getCharacter = TS.async(function(self)
		local char = self.playerRef.Character;
		if char ~= nil then
			return char;
		else
			return characterEnum.CHARACTER_DOES_NOT_EXIST;
		end;
	end);
	PlayerManager.getHumanoid = TS.async(function(self)
		local char = TS.await(self:getCharacter());
		local humanoid = char:WaitForChild("Humanoid", 5);
		if char and humanoid then
			return humanoid;
		else
			return characterEnum.HUMANOID_DOES_NOT_EXIST;
		end;
	end);
	function PlayerManager:character()
		return {
			respawn = TS.async(function()
				self.playerRef:LoadCharacter();
			end);
			kill = TS.async(function()
				local humanoid = TS.await(self:getHumanoid());
				if humanoid then
					humanoid.Health = 0;
					if humanoid.Health <= 0 then
						return true;
					else
						return characterEnum.FAILED_TO_SET_HEALTH;
					end;
				else
					return characterEnum.HUMANOID_DOES_NOT_EXIST;
				end;
			end);
			teleport = TS.async(function(position)
				local char = TS.await(self:getCharacter());
				char:MoveTo(position);
				if char.PrimaryPart then
					return not not ((char.PrimaryPart.Position.X - position.X < 10) and (char.PrimaryPart.Position.Z - position.Z < 10));
				else
				end;
			end);
			damage = TS.async(function(amount)
				local humanoid = TS.await(self:getHumanoid());
				humanoid:TakeDamage(amount);
			end);
		};
	end;
	PlayerManager.getBanks = TS.async(function(self)
		local userData = TS.await(UserStore:getPlayer(self.playerRef.UserId));
		if userData and userData.banks then
			return userData.banks;
		end;
	end);
	PlayerManager.getCrimes = TS.async(function(self)
		local userData = TS.await(UserStore:getPlayer(self.playerRef.UserId));
		if userData and userData.banks then
			return userData.banks;
		end;
	end);
end;
exports.default = PlayerManager;
return exports;
