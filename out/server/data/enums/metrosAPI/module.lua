-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 1:27 PM British Summer Time

local exports = {};
FetchPlayerEnum = FetchPlayerEnum or {};
do
	FetchPlayerEnum.FAILED_TO_FETCH = 0;
	FetchPlayerEnum[0] = "FAILED_TO_FETCH";
	FetchPlayerEnum.FAILED_TO_DECODE = 1;
	FetchPlayerEnum[1] = "FAILED_TO_DECODE";
end;
exports.FetchPlayerEnum = FetchPlayerEnum;
return exports;
