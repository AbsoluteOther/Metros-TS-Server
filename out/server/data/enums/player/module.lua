-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 20, 2019, 1:27 PM British Summer Time

local exports = {};
character = character or {};
do
	character.CHARACTER_DOES_NOT_EXIST = 0;
	character[0] = "CHARACTER_DOES_NOT_EXIST";
	character.HUMANOID_DOES_NOT_EXIST = 1;
	character[1] = "HUMANOID_DOES_NOT_EXIST";
	character.PRIMARY_PART_DOES_NOT_EXIST = 2;
	character[2] = "PRIMARY_PART_DOES_NOT_EXIST";
	character.TELEPORT_RESULT_UNKNOWN = 3;
	character[3] = "TELEPORT_RESULT_UNKNOWN";
	character.FAILED_TO_SET_HEALTH = 4;
	character[4] = "FAILED_TO_SET_HEALTH";
end;
exports.character = character;
return exports;
