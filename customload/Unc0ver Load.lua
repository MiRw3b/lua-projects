pcall(function() loadstring(game:HttpGet("http://ligma.wtf/scripts/compat.lua", true))() end)
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/unc0verlogo.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/customload/images/unc0verlogo.png"))
writefile("loadingimages/unc0verbg.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/customload/images/unc0verbg.png"))

--// make
local funniload = Instance.new("ScreenGui")
local unc0ver = Instance.new("ImageLabel")
local logo = Instance.new("ImageLabel")

--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

unc0ver.Name = "unc0ver"
unc0ver.Parent = funniload
unc0ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unc0ver.BorderSizePixel = 0
unc0ver.Position = UDim2.new(0, -50, 0, -50)
unc0ver.Size = UDim2.new(1, 100, 1, 100)
unc0ver.ZIndex = 0
unc0ver.Image = getasset("loadingimages/unc0verbg.png")

logo.Name = "logo"
logo.Parent = unc0ver
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.Position = UDim2.new(0.5, -203, 0.5, -42)
logo.Size = UDim2.new(0, 407, 0, 85)
logo.Image = getasset("loadingimages/unc0verlogo.png")

--// scrip
local LoadingGui = game:WaitForChild("CoreGui"):WaitForChild("RobloxLoadingGui")
LoadingGui.Enabled = false
LoadingGui:Destroy()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

funniload:Destroy()
