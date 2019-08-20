-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 5:02 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local function Toggle()
	return Roact.createElement("Frame", {}	, {
		Roact.createElement("ImageLabel", {
			Image = "rbxassetid://3695227901",
			ImageColor3 = Color3.new(1, 1, 1),
			Size = UDim2.new(0, 605, 0, 210) 
		}		, {

		})
	});
end;
exports.default = Toggle;
return exports;
