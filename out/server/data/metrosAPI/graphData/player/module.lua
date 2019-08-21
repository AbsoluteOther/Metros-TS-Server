-- Compiled with https://roblox-ts.github.io v0.2.14
-- August 21, 2019, 5:13 PM British Summer Time

local exports = {};
exports.default = function(id, idType)
	return "\
{\
getPlayer(id: \"" .. tostring(id) .. "\", type: \"" .. tostring(idType) .. "\") {\
    userid\
    banned\
    admin\
    banks {\
      id\
      owner_id\
      balance\
      frozen,\
      bank_players {\
        user_id\
        read\
        write\
      }\
    }\
    criminal_offences{\
      id,\
      offense_code\
      retribution_code\
      issued_player\
    }\
    vehicles {\
      id\
      miles\
      vin\
      fuel\
      fuel_capacity\
      fuel_level\
      modifications\
      registration_id\
      created_at\
      deleted_at\
      updated_at\
      registrations {\
        id\
      }\
    }\
  }}";
end;
return exports;
