export default (id: String | Number, idType: String) => {
    return <String> `
{
getPlayer(id: "${id}", type: "${idType}") {
    userid
    banned
    admin
    banks {
      id
      owner_id
      balance
      frozen,
      bank_players {
        user_id
        read
        write
      }
    }
    criminal_offences{
      id,
      offense_code
      retribution_code
      issued_player
    }
    vehicles {
      id
      miles
      vin
      fuel
      fuel_capacity
      fuel_level
      modifications
      registration_id
      created_at
      deleted_at
      updated_at
      registrations {
        id
      }
    }
  }}`;
};