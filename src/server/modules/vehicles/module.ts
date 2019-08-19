import {Players, Vehicles} from "../../data/types/graph/module";
import {VehicleState} from "../../data/types/vehicle.module";
import userStore from "../../data/stores/userData/module"
import {vehicleAuthorisationEnum, vehicleErrorEnum} from "../../data/enums/vehicle.module";

class vehicle {
    vehicleId: string = "";
    VehicleData: Vehicles;

    state: VehicleState = {
        locked: <Boolean> true,
    };

    private checkAuthorisation(player: Player) {
        const PlayerData = userStore.getPlayer(player.UserId);
        if (<Players> PlayerData) {
            // Designed for future vehicle perm system
            if (this.VehicleData.owner_player === PlayerData.id) {
                return vehicleAuthorisationEnum.ALL;
            } else {
                return vehicleAuthorisationEnum.NONE;
            }
        }
    }

    constructor(vehicle: Vehicles) {
        this.VehicleData = vehicle;
    }

    public setLocked(lock: Boolean, player: Player) {
        if (this.checkAuthorisation(player) === vehicleAuthorisationEnum.ALL) {
            this.state.locked = lock;
            return this.getLocked();
        } else {
            return vehicleErrorEnum.AUTHENTICATION_FAILED;
        }
    }

    public getLocked() {
        return <Boolean> this.state.locked;
    }
}


export default vehicle;