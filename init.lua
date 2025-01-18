local repos = ''

local function import(url)
    local s, e = pcall(function()
        return loadstring(repos .. url)
    end)
    if not s then
        return warn('Could not import ', url)
    end
end

getgenv().import = import