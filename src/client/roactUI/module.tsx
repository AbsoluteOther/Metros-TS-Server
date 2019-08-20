import * as Roact from "@rbxts/roact";
import Settings from "./components/settings/module";



const LocalPlayer = game.GetService("Players")
    .LocalPlayer as Player;
const PlayerGui = LocalPlayer.FindFirstChildOfClass(
    "PlayerGui",
);


function Base(props: { name: string }) {

    return (
        <screengui>
            <textlabel Text={props.name}/>
            <frame
                Size={new UDim2(1,0,.2,0)}
                Position={new UDim2(.5,0,.5,0)}

            >
                <Settings name={"hot sauce"}/>
            </frame>

        </screengui>
    )
}

export default function mount() {
    const comp = Roact.createElement(Base, {
        name: "YEET",
    });

    Roact.mount(comp, PlayerGui);
}
