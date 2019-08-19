import http from "./modules/http/module";
import {HttpService, Players} from "@rbxts/services";
import PlayerPlayerManager from "./modules/player/module";

Players.PlayerAdded.Connect((player: Player) => {
    const plr = new PlayerPlayerManager(player, () => {
        plr.getVehicles();
    });
});

