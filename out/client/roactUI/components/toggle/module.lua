-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local Roact = TS.import(TS.getModule("roact").roact.src);
local Tween = TS.import(TS.getModule("tween")).default;
local OutElastic = TS.import(TS.getModule("easing-functions")).OutElastic;
local Toggle;
do
	Toggle = Roact.Component:extend("Toggle");
	function Toggle:init(props)
		self.updatePositions = TS.async(function(toggled)
			local toggle = self.sliderRef:getValue();
			local background = self.backgroundRef:getValue();
			if toggle and background then
				local _0;
				if toggled then
					_0 = 0.5;
				else
					_0 = 0;
				end;
				toggle:TweenPosition(UDim2.new(_0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .2, true, function()
					self:setState({
						animating = false;
					});
				end);
				if toggled then
					Tween(.2, OutElastic, function(x)
						local _1 = x;
						background.ImageColor3 = _1;
						return _1;
					end, background.ImageColor3, Color3.fromRGB(0, 197, 137), 0.5, 0.5);
				else
					Tween(.2, OutElastic, function(x)
						local _1 = x;
						background.ImageColor3 = _1;
						return _1;
					end, background.ImageColor3, Color3.fromRGB(255, 255, 255), 0.5, 0.5);
				end;
			end;
		end);
		self.clicked = function()
			if not self.props.disabled and not self.state.animating then
				self.updatePositions(not self.state.toggled);
				self:setState({
					toggled = not self.state.toggled;
					animating = true;
				});
			end;
		end;
		self:setState({
			toggled = self.props.toggled;
			animating = false;
		});
		self.sliderRef = Roact.createRef();
		self.backgroundRef = Roact.createRef();
		self.updatePositions(self.props.toggled);
	end;
	function Toggle:didUpdate(previousProps, previousState)
		if previousState.toggled ~= self.state.toggled then
		end;
	end;
	function Toggle:render()
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 275, 0, 128) 
		}		, {
			Roact.createElement("ImageButton", {
				Image = "rbxassetid://3695679569",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				[Roact.Event.MouseButton1Click] = self.clicked,
				[Roact.Ref] = self.backgroundRef 
			}			, {
				["slider"] = Roact.createElement("ImageButton", {
					Image = "rbxassetid://3695699299",
					ImageColor3 = Color3.fromRGB(240, 240, 240),
					BackgroundTransparency = 1,
					Size = UDim2.new(0.9, 0, 1.1, 0),
					[Roact.Event.MouseButton1Click] = self.clicked,
					[Roact.Ref] = self.sliderRef 
				}				, {
					Roact.createElement("UIAspectRatioConstraint", {})
				}),
				["border"] = Roact.createElement("ImageButton", {
					Image = "rbxassetid://3695646888",
					ImageColor3 = Color3.fromRGB(134, 0, 2),
					ImageTransparency = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					[Roact.Event.MouseButton1Click] = self.clicked 
				})
			})
		});
	end;
end;
exports.default = Toggle;
return exports;
