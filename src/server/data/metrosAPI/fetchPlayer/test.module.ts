

    export type BankPlayer = {
        user_id: string;
        write: boolean;
        read: boolean;
    }

    export type Bank = {
        frozen: boolean;
        owner_id: string;
        balance: number;
        id: string;
        bank_players: BankPlayer[];
    }

    export type Vehicle = {
        registration_id: string;
        modifications: string;
        miles: number;
        vin: string;
        id: string;
        fuel: number;
        updated_at: string;
        fuel_level: number;
        fuel_capacity: number;
    }

    export type CriminalOffence = {
        retribution_code: string;
        offense_code: string;
        id: string;
    }

    export type GetPlayer = {
        banks: Bank[];
        admin: boolean;
        banned: boolean;
        userid: number;
        vehicles: Vehicle[];
        criminal_offences: CriminalOffence[];
    }

    export type Data = {
        getPlayer: GetPlayer;
    }

    export type RootObject = {
        data: Data;
    }
