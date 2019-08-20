-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 1:27 PM British Summer Time

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
			Roact.createElement("ImageLabel", {
				Image = "rbxassetid://3695227561",
				ImageColor3 = Color3.new(1, 1, 1),
				Size = UDim2.new(0, 0, .5, 0),
				Position = UDim2.new(.1, 0, .25, 0) 
			}			, {
				Roact.createElement("UIAspectRatioConstraint", {
					AspectRatio = 1 
				})
			}),
			Roact.createElement("ImageLabel", {
				Image = "rbxassetid://3695227765",
				ImageColor3 = Color3.new(1, 1, 1),
				Size = UDim2.new(0, 0, .5, 0),
				Position = UDim2.new(.8, 0, .25, 0) 
			}			, {
				Roact.createElement("UIAspectRatioConstraint", {
					AspectRatio = 1 
				})
			})
		})
	});
end;
exports.default = Toggle;
return exports;
