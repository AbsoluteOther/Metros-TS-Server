import * as Roact from "@rbxts/roact";


const tree = Roact.createElement("ScreenGui", {}, {
    Label: Roact.createElement("TextLabel", {
        Text: "Hello, World!",
        Size: new UDim2(.1, 0, .1, 0)
    })
});

const LocalPlayer = game.GetService("Players").LocalPlayer as Player;
const PlayerGui = LocalPlayer.FindFirstChildOfClass("PlayerGui");

Roact.mount(tree, PlayerGui, "HelloWorld");