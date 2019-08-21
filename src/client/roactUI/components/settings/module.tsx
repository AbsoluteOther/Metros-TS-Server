import * as Roact from "@rbxts/roact";
import Toggle from "../toggle/module";

export default function Base(props: { name: string }) {

    return (
        <frame>
            <uilistlayout/>


            <Toggle disabled={false} toggled={true} change={() => {
                print("3")
            }}/>

        </frame>

    )
}