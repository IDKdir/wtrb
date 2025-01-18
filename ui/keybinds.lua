local uis = game:GetService('UserInputService')
local keybinds = getgenv()['settings']['keybinds']

uis.InputBegan:connect(function(input)
    if uis:GetFocusedTextBox() then return end
    if input.KeyCode == keybinds['show_command_line'] then

    end
end)