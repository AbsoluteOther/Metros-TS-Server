export type Maybe<T> = T | null;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
    ID: string;
    String: string;
    Boolean: boolean;
    Int: number;
    Float: number;
    Date: any;
};

export type Bank_Players = {
    __typename?: "bank_players";
    id: Scalars["ID"];
    user_id: Scalars["ID"];
    bank_id: Scalars["ID"];
    read?: Maybe<Scalars["Boolean"]>;
    write?: Maybe<Scalars["Boolean"]>;
};

export type Banks = {
    __typename?: "Banks";
    id: Scalars["ID"];
    owner_id: Scalars["ID"];
    balance?: Maybe<Scalars["Float"]>;
    frozen?: Maybe<Scalars["Boolean"]>;
    bank_players?: Maybe<Array<Maybe<Bank_Players>>>;
    transactions?: Maybe<Array<Maybe<Transactions>>>;
};

export type Criminal_Offence = {
    __typename?: "criminal_offence";
    id: Scalars["ID"];
    offense_code?: Maybe<Scalars["String"]>;
    retribution_code?: Maybe<Scalars["String"]>;
    issued_player?: Maybe<Scalars["ID"]>;
    paid?: Maybe<Scalars["Boolean"]>;
    status?: Maybe<Scalars["Int"]>;
    offender_aware?: Maybe<Scalars["Boolean"]>;
    offender_player?: Maybe<Scalars["ID"]>;
    offender_notes?: Maybe<Scalars["String"]>;
    officer_notes?: Maybe<Scalars["String"]>;
    court_notes?: Maybe<Scalars["String"]>;
    date_reported?: Maybe<Scalars["String"]>;
    date_occured?: Maybe<Scalars["String"]>;
    date_finalized?: Maybe<Scalars["String"]>;
};

export interface PlayersInterface {
    myString: string;
    id: number;
    userid: number;
    banned: boolean;
    admin: boolean;
    vehicles?: Maybe<Array<Maybe<Vehicles>>>;
    banks?:  Maybe<Array<Maybe<Banks>>>;
    criminal_offences?: Maybe<Array<Maybe<Criminal_Offence>>>;
}

export type Players = {
    __typename?: "Players";
    id: Scalars["ID"];
    userid: Scalars["Int"];
    banned: Scalars["Boolean"];
    admin: Scalars["Boolean"];
    vehicles?: Maybe<Array<Maybe<Vehicles>>>;
    banks?: Maybe<Array<Maybe<Banks>>>;
    criminal_offences?: Maybe<Array<Maybe<Criminal_Offence>>>;
};

export type Query = {
    __typename?: "Query";
    getPlayer?: Maybe<Players>;
    getVehicle?: Maybe<Array<Maybe<Vehicles>>>;
    getBank?: Maybe<Array<Maybe<Banks>>>;
    getRegistration?: Maybe<Registrations>;
};

export type QueryGetPlayerArgs = {
    id: Scalars["ID"];
    type: Scalars["String"];
};

export type QueryGetVehicleArgs = {
    id: Scalars["ID"];
    type: Scalars["String"];
};

export type QueryGetBankArgs = {
    id: Scalars["ID"];
    type: Scalars["String"];
};

export type QueryGetRegistrationArgs = {
    id: Scalars["ID"];
    type: Scalars["String"];
};

export type Registrations = {
    __typename?: "registrations";
    id: Scalars["ID"];
    tag: Scalars["String"];
    expires?: Maybe<Scalars["String"]>;
    state?: Maybe<Scalars["Boolean"]>;
    issued_player?: Maybe<Scalars["ID"]>;
    vehicles?: Maybe<Array<Maybe<Vehicles>>>;
    owner_id?: Maybe<Scalars["ID"]>;
    vehicle_id?: Maybe<Scalars["ID"]>;
};

export type Transactions = {
    __typename?: "transactions";
    id: Scalars["ID"];
    bank_id?: Maybe<Scalars["String"]>;
    player_id?: Maybe<Scalars["String"]>;
    standing_balance?: Maybe<Scalars["Float"]>;
    charge?: Maybe<Scalars["Float"]>;
    to_bank?: Maybe<Scalars["ID"]>;
    reference?: Maybe<Scalars["String"]>;
    pin_verified?: Maybe<Scalars["Boolean"]>;
};

export type Vehicles = {
    __typename?: "vehicles";
    id: Scalars["ID"];
    miles: Scalars["Int"];
    model_id: Scalars["ID"];
    vin: Scalars["String"];
    fuel: Scalars["Int"];
    fuel_capacity: Scalars["Float"];
    fuel_level: Scalars["Float"];
    modifications?: Maybe<Scalars["String"]>;
    registration_id: Scalars["ID"];
    registrations?: Maybe<Array<Maybe<Registrations>>>;
    tag?: Maybe<Scalars["String"]>;
    owner_player?: Maybe<Scalars["String"]>;
    condition?: Maybe<Scalars["String"]>;
};