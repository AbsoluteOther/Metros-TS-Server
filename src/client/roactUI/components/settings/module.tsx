import * as Roact from "@rbxts/roact";
import Toggle from "../toggle/module";

export default function Base(props: { name: string }) {

    return (
        <frame>
            <textlabel
                Text={props.name}
                Size={new UDim2(1,0,1,0)}

            />
            <Toggle/>
        </frame>

    )
}