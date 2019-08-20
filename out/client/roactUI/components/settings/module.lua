-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 1:27 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local Toggle = TS.import(script.Parent.Parent, "toggle", "module").default;
local function Base(props)
	return Roact.createElement("Frame", {}	, {
		Roact.createElement("TextLabel", {
			Text = props.name,
			Size = UDim2.new(1, 0, 1, 0) 
		}),
		Roact.createElement(Toggle, {})
	});
end;
exports.default = Base;
return exports;
