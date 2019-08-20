import fetchPlayer from "../../data/metrosAPI/fetchPlayer/module";
import UserStore from "../../data/stores/userData/module";
import * as graphTypes from "../../data/types/graph/module";
import {HttpService} from "@rbxts/services";
import { character as characterEnum } from "./../../data/enums/player/module"


class PlayerManager {
    playerRef: Player;

    constructor(player: Player, ready: Function) {
        this.playerRef = player;
        fetchPlayer(player).then((playerData) => {
            UserStore.addPlayer(player.UserId, <graphTypes.Players> playerData);
            ready();
        });
    }


    async getVehicles() {
        const userData = await UserStore.getPlayer(this.playerRef.UserId);
        if (userData && userData.vehicles) {
            return userData.vehicles
        }
    }

    async getCharacter() {
        const char: Model  | undefined = <Model  | undefined> this.playerRef.Character;

        if (char !== undefined) {
            return <Model> char;
        } else {
            return characterEnum.CHARACTER_DOES_NOT_EXIST;
        }
    }


    async getHumanoid() {
        const char: Model = <Model> await this.getCharacter();
        const humanoid: Humanoid = <Humanoid> char.WaitForChild("Humanoid", 5);

        if (char && humanoid) {
            return <Humanoid> humanoid;
        } else {
            return characterEnum.HUMANOID_DOES_NOT_EXIST;
        }
    }

    character() {
        return {
            respawn: async () => {
                this.playerRef.LoadCharacter();
            },
            kill: async () => {
                const humanoid: Humanoid = <Humanoid> await this.getHumanoid();
                if (humanoid) {
                    humanoid.Health = 0;
                    if (humanoid.Health <= 0) {
                        return true
                    } else {
                        return characterEnum.FAILED_TO_SET_HEALTH
                    }
                } else {
                    return characterEnum.HUMANOID_DOES_NOT_EXIST;
                }

            },
            teleport: async (position: Vector3) => {
                const char: Model = <Model> await this.getCharacter();
                char.MoveTo(position);
                if (char.PrimaryPart) {
                    return !!((char.PrimaryPart.Position.X - position.X < 10) && (char.PrimaryPart.Position.Z - position.Z < 10));
                } else {

                }
            },
            damage: async (amount: number) => {
                const humanoid: Humanoid = <Humanoid> await this.getHumanoid();
                humanoid.TakeDamage(amount);
            }
        }
    }

    async getBanks() {
        const userData = await UserStore.getPlayer(this.playerRef.UserId);
        if (userData && userData.banks) {
            return userData.banks;
        }
    }

    async getCrimes() {
        const userData = await UserStore.getPlayer(this.playerRef.UserId);
        if (userData && userData.banks) {
            return userData.banks;
        }
    }
}

export default PlayerManager;