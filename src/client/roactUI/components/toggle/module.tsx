import * as Roact from "@rbxts/roact";
import V = Enum.KeyCode.V;
import Tween from "@rbxts/tween";
import { Standard, Deceleration, OutElastic } from "@rbxts/easing-functions";

interface AcceptedState {
    toggled: boolean;
    animating: boolean;

}

interface AcceptedProps {
    toggled: boolean;
    change: Function;
    disabled: boolean;
}

class Toggle extends Roact.Component<AcceptedProps, AcceptedState> {

    private sliderRef: Roact.Ref<ImageButton>;
    private backgroundRef: Roact.Ref<ImageButton>;
    constructor(props: AcceptedProps) {
        super(props);

        this.setState({
            toggled: this.props.toggled,
            animating: false,
        });


        this.sliderRef = Roact.createRef<ImageButton>();
        this.backgroundRef = Roact.createRef<ImageButton>();
        this.updatePositions(this.props.toggled);
    }

    updatePositions = async (toggled: boolean) => {
        const toggle: ImageButton | undefined = this.sliderRef.getValue();
        const background: ImageButton | undefined = this.backgroundRef.getValue();

        if (toggle && background) {
            toggle.TweenPosition(new UDim2(toggled ? 0.5 : 0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .2, true, () => {
                this.setState({animating: false});
            });
            if (toggled) {
                Tween(.2, OutElastic, x => background.ImageColor3 = x, background.ImageColor3, Color3.fromRGB(0,197,137), 0.5, 0.5)
            } else {
                Tween(.2, OutElastic, x => background.ImageColor3 = x, background.ImageColor3, Color3.fromRGB(255,255,255), 0.5, 0.5)

            }
        }
    }

    clicked = () => {
        if (!this.props.disabled && !this.state.animating) {
            this.updatePositions(!this.state.toggled);
            this.setState({toggled: !this.state.toggled, animating: true});
        }
    }


    didUpdate(previousProps: AcceptedProps, previousState: AcceptedState) {
        if (previousState.toggled !== this.state.toggled) {

        }
    }


    render() {
        return (

            <frame
                BackgroundTransparency={1}
                Size={new UDim2(0, 275, 0, 128)}

            >
                <imagebutton
                    Image="rbxassetid://3695679569"
                    BackgroundTransparency={1}
                    Size={new UDim2(1, 0, 1, 0)}
                    Event={{
                        MouseButton1Click: this.clicked
                    }}
                    Ref={this.backgroundRef}
                >
                    <imagebutton
                        Image="rbxassetid://3695699299"
                        ImageColor3={Color3.fromRGB(240, 240, 240)}
                        BackgroundTransparency={1}
                        Size={new UDim2(0.9, 0, 1.1, 0)}
                        Key="slider"
                        Event={{
                            MouseButton1Click: this.clicked
                        }}
                        Ref={this.sliderRef}
                    >
                        <uiaspectratioconstraint />
                    </imagebutton>
                    <imagebutton
                        Image="rbxassetid://3695646888"
                        ImageColor3={Color3.fromRGB(134, 0, 2)}
                        ImageTransparency={1}
                        BackgroundTransparency={1}
                        Size={new UDim2(1, 0, 1, 0)}
                        Key="border"
                        Event={{
                            MouseButton1Click: this.clicked
                        }}
                    />
                </imagebutton>
            </frame>
        )

    }

}


export default Toggle
