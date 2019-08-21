-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local Toggle = TS.import(script.Parent.Parent, "toggle", "module").default;
local function Base(props)
	return Roact.createElement("Frame", {}	, {
		Roact.createElement("UIListLayout", {}),
		Roact.createElement(Toggle, {
			disabled = false,
			toggled = true,
			change = function()
				print("3");
			end 
		})
	});
end;
exports.default = Base;
return exports;
