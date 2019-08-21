-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local exports = {};
local UserStore;
do
	UserStore = setmetatable({}, {
		__tostring = function() return "UserStore" end;
	});
	UserStore.__index = UserStore;
	function UserStore.new(...)
		local self = setmetatable({}, UserStore);
		self:constructor(...);
		return self;
	end;
	function UserStore:constructor(...)
		self.playerData = {};
	end;
	function UserStore:getPlayer(userId)
		return self.playerData[userId];
	end;
	function UserStore:addPlayer(userId, player)
		local _0 = self.playerData;
		_0[userId] = player;
		return self:getPlayer(userId);
	end;
	function UserStore:removePlayer(userId)
		self.playerData[userId] = nil;
		return self:getPlayer(userId);
	end;
end;
exports.default = UserStore.new();
return exports;
