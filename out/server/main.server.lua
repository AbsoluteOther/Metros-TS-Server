-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local Players = TS.import(TS.getModule("services")).Players;
local PlayerPlayerManager = TS.import(game:GetService("ServerScriptService"), "TS", "modules", "player", "module").default;
Players.PlayerAdded:Connect(function(player)
	local plr;
	plr = PlayerPlayerManager.new(player, TS.async(function()
		plr:getVehicles();
		wait(5);
		local char = plr:character();
		local res1 = TS.await(char.damage(50));
		wait(5);
	end));
end);
print("Roger that");
