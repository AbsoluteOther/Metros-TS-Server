import http from "./modules/http/module";
import {HttpService, Players} from "@rbxts/services";
import PlayerPlayerManager from "./modules/player/module";

Players.PlayerAdded.Connect((player: Player) => {
    const plr = new PlayerPlayerManager(player, async () => {
        plr.getVehicles();

        wait(5);
        const char = plr.character();
        const res1 = await char.damage(50);
        wait(5);
       // const res = await char.kill();
    });
});
print("Roger that");