import * as Roact from "@rbxts/roact";

export default function Toggle() {



    return (

        <frame>
            <imagelabel
                Image={"rbxassetid://3695227901"}
                ImageColor3={new Color3(1,1,1)}
                Size={new UDim2(0,605,0,210)}
            >
                <imagelabel
                    // I
                    Image={"rbxassetid://3695227561"}
                    ImageColor3={new Color3(1,1,1)}
                    Size={new UDim2(0,0,.5,0)}
                    Position={new UDim2(.1,0,.25,0)}
                >
                    <uiaspectratioconstraint AspectRatio={1}/>
                </imagelabel>

                <imagelabel
                    // O
                    Image={"rbxassetid://3695227765"}
                    ImageColor3={new Color3(1,1,1)}
                    Size={new UDim2(0,0,.5,0)}
                    Position={new UDim2(.8,0,.25,0)}
                >
                    <uiaspectratioconstraint AspectRatio={1} DominantAxis={Enum.DominantAxis.Height}/>
                    <uiaspectratioconstraint AspectRatio={} Archivable={} RobloxLocked={}
                </imagelabel>

            </imagelabel>


        </frame>

    )
}