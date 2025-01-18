local settings = {
    ['keybinds'] = {
        ['show_command_line'] = Enum.KeyCode.Comma
    }
}

local repos = 'https://raw.githubusercontent.com/IDKdir/wtrb/refs/heads/main'

local function import(url)
    local s, e = pcall(function()
        return loadstring(repos .. url)
    end)
    if not s then
        return warn('Could not import ', url)
    end
end

getgenv()['import'] = import
getgenv()['settings'] = settings

import('/main.lua')