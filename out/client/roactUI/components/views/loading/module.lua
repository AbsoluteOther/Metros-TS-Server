-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local function Toggle()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0) 
	}	, {
		Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0) 
		}		, {
			Roact.createElement("TextLabel", {
				Text = "PROJECT METROS",
				BorderSizePixel = 0,
				BackgroundTransparency = 1 
			})
		})
	});
end;
exports.default = Toggle;
return exports;
