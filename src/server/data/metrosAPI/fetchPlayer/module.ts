import {HttpService} from "@rbxts/services";
import http from "../../../modules/http/module";
import everything from "../graphData/player/module";
import {FetchPlayerEnum} from "../../enums/metrosAPI/module";
import {Players, PlayersInterface} from "../../types/graph/module";
import {RootObject} from "./test.module";






export default (player: Player) => {
    return new Promise((resolve, reject) => {
        http.request(
            {Url: "http://localhost:4000/graphql",
                Method: "POST",
                Body: HttpService.JSONEncode({
                    query: everything(player.UserId, "userId")
                }),
                Headers: {'Content-Type': 'application/json'}}, {}
        ).then(function (result) {
            if (result.StatusCode === 200) {

                try {
                    const idk: unknown = HttpService.JSONDecode(result.Body);
                    const root: RootObject = idk as RootObject;

                    const getPlayer = root.data.getPlayer;
                    const playerUnknown: unknown = getPlayer as unknown;
                    const player: Players = playerUnknown as Players;

                    resolve(<Players> player);
                } catch (JsonDecodeException) {
                    reject(<FetchPlayerEnum> FetchPlayerEnum.FAILED_TO_DECODE);
                }
            } else {
                reject(FetchPlayerEnum.FAILED_TO_FETCH);
            }
        }).catch((err) => {
            reject(FetchPlayerEnum.FAILED_TO_FETCH);
        })
    })

}