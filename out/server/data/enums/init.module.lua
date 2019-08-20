-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 1:27 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local vehicle = TS.import(game:GetService("ServerScriptService"), "TS", "data", "enums", "vehicle");
exports.default = {
	vehicle = vehicle;
};
return exports;
