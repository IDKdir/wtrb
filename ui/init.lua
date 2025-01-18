local CoreGui = game:GetService('CoreGui')
if CoreGui:FindFirstChild('CommandGui') then
    CoreGui['CommandGui']:Destroy()
end

local CommandGui = Instance.new("ScreenGui")
local CommandLine = Instance.new("TextBox")
local Frame = Instance.new("Frame")

CommandGui.Parent = game:GetService('CoreGui')
CommandGui.Name = 'CommandGui'
CommandGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CommandLine.Parent = CommandGui
CommandLine.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
CommandLine.BackgroundTransparency = 0.300
CommandLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
CommandLine.BorderSizePixel = 0
CommandLine.Position = UDim2.new(0, 0, -1, 0)
CommandLine.Size = UDim2.new(1, 0, 0.0540200993, 0)
CommandLine.Font = Enum.Font.SourceSans
CommandLine.Text = ""
CommandLine.TextColor3 = Color3.fromRGB(0, 0, 0)
CommandLine.TextSize = 14.000

Frame.Parent = CommandLine
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, -7.02325583, 0)
Frame.Size = UDim2.new(1, 0, 7.02325583, 0)

getgenv()['GUI'] = {
    ['CommandGui'] = CommandGui,
    ['CommandLine'] = CommandLine,
    ['Frame'] = Frame
}