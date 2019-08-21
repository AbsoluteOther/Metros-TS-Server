-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local HttpService = TS.import(TS.getModule("services")).HttpService;
local Http;
do
	Http = setmetatable({}, {
		__tostring = function() return "Http" end;
	});
	Http.__index = Http;
	function Http.new(...)
		local self = setmetatable({}, Http);
		self:constructor(...);
		return self;
	end;
	function Http:constructor()
		self.requestCache = { {} };
	end;
	Http.log = TS.async(function(self, request, response, extra)
		local logResponse = {
			time = tick();
			request = request;
			response = response;
			extra = extra;
		};
		local _0 = self.requestCache;
		_0[#_0 + 1] = logResponse;
	end);
	Http.request = TS.async(function(self, request, extra)
		local response = HttpService:RequestAsync(request);
		self:log(request, response, extra);
		return response;
	end);
end;
exports.default = Http.new();
return exports;
