import { Players } from "../../types/graph/module";

/*
    Author @Adam1717_

    This stores the Player data pulled from the Metros-API and store it in a lookup table based on the userId.
 */

class UserStore {

    // Defining the store array

    playerData = new Map<number, Players>();

    getPlayer(userId: number) {
        return <Players> this.playerData.get(userId);
    }

    // Add player to "players"
    addPlayer(userId: number, player: Players) {
        this.playerData.set(userId, player);
        return this.getPlayer(userId);
    }

    // Delete player from "players)
    removePlayer(userId: number) {
        this.playerData.delete(userId);

        return this.getPlayer(userId);
    }
}

// exporting initialised version of this class for persistence
export default new UserStore();