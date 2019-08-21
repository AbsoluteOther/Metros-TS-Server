-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local Settings = TS.import(script.Parent, "components", "settings", "module").default;
local LocalPlayer = game:GetService("Players").LocalPlayer;
local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui");
local function Base(props)
	return Roact.createElement("ScreenGui", {}	, {
		Roact.createElement("TextLabel", {
			Text = props.name 
		}),
		Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, .2, 0),
			Position = UDim2.new(.5, 0, .5, 0) 
		}		, {
			Roact.createElement(Settings, {
				name = "hot sauce" 
			})
		})
	});
end;
local function mount()
	local comp = Roact.createElement(Base, {
		name = "YEET";
	});
	Roact.mount(comp, PlayerGui);
end;
exports.default = mount;
return exports;
