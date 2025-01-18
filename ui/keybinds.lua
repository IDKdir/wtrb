local uis = game:GetService('UserInputService')
local keybinds = getgenv()['settings']['keybinds']
local command_line = getgenv()['GUI']['CommandLine']

local function InputBegan(input)
    if uis:GetFocusedTextBox() then return end
    if input.KeyCode == keybinds['show_command_line'] then
        command_line:TweenPosition(
            UDim2.new(0, 0, 0, 0),
            Enum.EasingDirection.In,
            Enum.EasingStyle.Quad,
            0.5,
            true,
            function()
                command_line:CaptureFocus()
            end
        )
    end
end

uis.InputBegan:connect(InputBegan)