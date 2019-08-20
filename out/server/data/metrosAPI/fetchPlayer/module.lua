-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 5:02 PM British Summer Time

local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"));
local exports = {};
local HttpService = TS.import(TS.getModule("services")).HttpService;
local http = TS.import(game:GetService("ServerScriptService"), "TS", "modules", "http", "module").default;
local everything = TS.import(game:GetService("ServerScriptService"), "TS", "data", "metrosAPI", "graphData", "player", "module").default;
local FetchPlayerEnum = TS.import(game:GetService("ServerScriptService"), "TS", "data", "enums", "metrosAPI", "module").FetchPlayerEnum;
exports.default = function(player)
	return TS.Promise.new(function(resolve, reject)
		http:request({
			Url = "http://localhost:4000/graphql";
			Method = "POST";
			Body = HttpService:JSONEncode({
				query = everything(player.UserId, "userId");
			});
			Headers = {
				['Content-Type'] = 'application/json';
			};
		}, {}):andThen(function(result)
			if result.StatusCode == 200 then
				local _0, _1 = pcall(function()
					local idk = HttpService:JSONDecode(result.Body);
					local root = idk;
					local getPlayer = root.data.getPlayer;
					local playerUnknown = getPlayer;
					local player = playerUnknown;
					resolve(player);
				end);
				if not _0 then
					local JsonDecodeException = _1;
					reject(FetchPlayerEnum.FAILED_TO_DECODE);
				end;
			else
				reject(FetchPlayerEnum.FAILED_TO_FETCH);
			end;
		end):catch(function(err)
			reject(FetchPlayerEnum.FAILED_TO_FETCH);
		end);
	end);
end;
return exports;
