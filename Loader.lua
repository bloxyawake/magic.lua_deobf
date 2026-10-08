local coreGui = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

local val = {
  {
    key = "free", label = "Magic (Free)", url = "https://raw.githubusercontent.com/bloxyawake/magic.lua_deobf/refs/heads/main/Free.lua", state = "load", color = Color3.fromRGB(150, 180, 255), }, {
    key = "beta", label = "Magic (Beta)", url = "https://raw.githubusercontent.com/bloxyawake/magic.lua_deobf/refs/heads/main/Beta.lua", state = "load", color = Color3.fromRGB(255, 180, 80), }, {
    key = "premium", label = "Magic (Premium)", url = "https://raw.githubusercontent.com/bloxyawake/magic.lua_deobf/refs/heads/main/Premium.lua", state = "load", color = Color3.fromRGB(80, 255, 130), }, }

local val2 = {
  load = Color3.fromRGB(150, 180, 255), outdated = Color3.fromRGB(255, 200, 60), dev = Color3.fromRGB(255, 90, 90), }

local parent = type(gethui) == "function" and gethui() or coreGui

local magicLoader = Instance.new("ScreenGui")
magicLoader.Name = "Magic | Loader"
magicLoader.ResetOnSpawn = false
magicLoader.IgnoreGuiInset = true
magicLoader.DisplayOrder = 1100
magicLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
magicLoader.Parent = parent

local instance = Instance.new("Frame", magicLoader)
instance.Size = UDim2.new(1, 0, 1, 0)
instance.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
instance.BackgroundTransparency = 0.55
instance.BorderSizePixel = 0
instance.ZIndex = 0

local instance2 = Instance.new("Frame", magicLoader)
instance2.AnchorPoint = Vector2.new(0.5, 0.5)
instance2.Position = UDim2.new(0.5, 0, 0.5, 0)
instance2.Size = UDim2.new(0, 360, 0, 280)
instance2.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
instance2.BorderSizePixel = 0
instance2.ZIndex = 1

Instance.new("UICorner", instance2).CornerRadius = UDim.new(0, 12)

local instance3 = Instance.new("UIStroke", instance2)
instance3.Color = Color3.fromRGB(80, 130, 255)
instance3.Thickness = 2
instance3.Transparency = 0.1

local instance4 = Instance.new("Frame", instance2)
instance4.Size = UDim2.new(1, 0, 0, 34)
instance4.Position = UDim2.new(0, 0, 0, 6)
instance4.BackgroundTransparency = 1
instance4.ZIndex = 3
instance4.Active = true

local instance5 = Instance.new("TextLabel", instance4)
instance5.Size = UDim2.new(1, 0, 0, 22)
instance5.Position = UDim2.new(0, 0, 0, 4)
instance5.BackgroundTransparency = 1
instance5.Text = "Magic Loader"
instance5.TextColor3 = Color3.fromRGB(150, 180, 255)
instance5.Font = Enum.Font.GothamBold
instance5.TextSize = 15
instance5.ZIndex = 2

local val3 = false
local position, position2

local function helper(val4)
  local element = val4.Position - position

  instance2.Position = UDim2.new(
    position2.X.Scale, position2.X.Offset + element.X, position2.Y.Scale, position2.Y.Offset + element.Y
  )
end

instance4.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then
    val3 = true
    position = input.Position
    position2 = instance2.Position

    input.Changed:Connect(function()
      if input.UserInputState == Enum.UserInputState.End then
        val3 = false
      end
    end)
  end
end)

userInputService.InputChanged:Connect(function(input2)
  if val3
    and (input2.UserInputType == Enum.UserInputType.MouseMovement
      or input2.UserInputType == Enum.UserInputType.Touch) then
    helper(input2)
  end
end)

local instance6 = Instance.new("Frame", instance2)
instance6.Size = UDim2.new(1, -24, 0, 150)
instance6.Position = UDim2.new(0, 12, 0, 50)
instance6.BackgroundTransparency = 1
instance6.ZIndex = 2

local instance7 = Instance.new("Frame", instance2)
instance7.Size = UDim2.new(1, -24, 0, 40)
instance7.Position = UDim2.new(0, 12, 0, 212)
instance7.BackgroundTransparency = 1
instance7.ZIndex = 2

local val5 = {}

local function createElement(text, val6)
  local color = val6 or Color3.fromRGB(80, 130, 255)

  local instance8 = Instance.new("Frame", magicLoader)
  instance8.AnchorPoint = Vector2.new(1, 1)
  instance8.Position = UDim2.new(1, 380, 1, -20)
  instance8.Size = UDim2.new(0, 220, 0, 52)
  instance8.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
  instance8.BorderSizePixel = 0
  instance8.ZIndex = 500

  Instance.new("UICorner", instance8).CornerRadius = UDim.new(0, 10)

  local instance9 = Instance.new("UIStroke", instance8)
  instance9.Color = color
  instance9.Thickness = 2
  instance9.Transparency = 0.1

  local instance10 = Instance.new("Frame", instance8)
  instance10.Size = UDim2.new(0, 4, 1, -12)
  instance10.Position = UDim2.new(0, 6, 0, 6)
  instance10.BackgroundColor3 = color
  instance10.BorderSizePixel = 0
  instance10.ZIndex = 501

  Instance.new("UICorner", instance10).CornerRadius = UDim.new(0, 4)

  local instance11 = Instance.new("TextLabel", instance8)
  instance11.Size = UDim2.new(1, -30, 1, 0)
  instance11.Position = UDim2.new(0, 20, 0, 0)
  instance11.BackgroundTransparency = 1
  instance11.Text = text
  instance11.TextColor3 = Color3.fromRGB(240, 240, 245)
  instance11.Font = Enum.Font.GothamMedium
  instance11.TextSize = 14
  instance11.TextXAlignment = Enum.TextXAlignment.Left
  instance11.ZIndex = 501

  local val7 = -20 - #val5 * 62

  tweenService:Create(
    instance8, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(1, -20, 1, val7) }
  ):Play()

  table.insert(val5, instance8)

  task.delay(1.8, function()
    local create = tweenService:Create(instance8, TweenInfo.new(
      0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In
    ), {
      Position = UDim2.new(1, 380, 1, val7), BackgroundTransparency = 1, })

    instance9.Transparency = 1
    instance10.BackgroundTransparency = 1
    instance11.TextTransparency = 1
    create:Play()
    task.wait(0.3)

    for index, value in ipairs(val5) do
      if value == instance8 then
        table.remove(val5, index)
        break
      end
    end

    instance8:Destroy()
  end)
end

local function helper2(p3)
  if type(setclipboard) == "function" then
    return true
  end

  if type(toclipboard) == "function" then
    return true
  end

  return false
end

local function createElement2(val8, val9)
  local instance12 = Instance.new("TextButton", instance6)
  instance12.Size = UDim2.new(1, 0, 0, 44)
  instance12.Position = UDim2.new(0, 0, 0, (val9 - 1) * 50)
  instance12.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
  instance12.BorderSizePixel = 0
  instance12.Text = ""
  instance12.AutoButtonColor = false
  instance12.ZIndex = 2

  Instance.new("UICorner", instance12).CornerRadius = UDim.new(0, 6)

  local instance13 = Instance.new("UIStroke", instance12)
  instance13.Color = Color3.fromRGB(40, 40, 55)
  instance13.Thickness = 1

  local instance14 = Instance.new("TextLabel", instance12)
  instance14.Size = UDim2.new(1, -100, 1, 0)
  instance14.Position = UDim2.new(0, 16, 0, 0)
  instance14.BackgroundTransparency = 1
  instance14.Text = val8.label
  instance14.TextColor3 = Color3.fromRGB(220, 220, 230)
  instance14.Font = Enum.Font.Gotham
  instance14.TextSize = 14
  instance14.TextXAlignment = Enum.TextXAlignment.Left
  instance14.ZIndex = 3

  local instance15 = Instance.new("TextLabel", instance12)
  instance15.Size = UDim2.new(0, 80, 1, 0)
  instance15.Position = UDim2.new(1, -90, 0, 0)
  instance15.BackgroundTransparency = 1
  instance15.Text = val8.state
  instance15.TextColor3 = val2[val8.state] or Color3.fromRGB(150, 150, 160)
  instance15.Font = Enum.Font.Gotham
  instance15.TextSize = 13
  instance15.TextXAlignment = Enum.TextXAlignment.Right
  instance15.ZIndex = 3

  instance12.MouseEnter:Connect(function()
    instance12.BackgroundColor3 = Color3.fromRGB(32, 32, 44)
    instance13.Color = val8.color
  end)

  instance12.MouseLeave:Connect(function()
    instance12.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
    instance13.Color = Color3.fromRGB(40, 40, 55)
  end)

  instance12.MouseButton1Click:Connect(function()
    instance15.Text = "loading..."
    instance15.TextColor3 = val8.color

    for index2, value2 in ipairs(instance6:GetChildren()) do
      if value2:IsA("TextButton") then
        value2.Active = false
      end
    end

    for index3, value3 in ipairs(instance7:GetChildren()) do
      if value3:IsA("TextButton") then
        value3.Active = false
      end
    end

    task.wait(0.15)
    local val10 = -1

    while true do
      val10 = 1 + val10

      if not (val10 <= 10) then
        break
      end

      local val11 = val10
      instance2.BackgroundTransparency = val11 / 10
      instance.BackgroundTransparency = 0.55 + val11 / 20

      for index4, value4 in ipairs(instance2:GetDescendants()) do
        if value4:IsA("TextLabel") or value4:IsA("TextButton") then
          value4.TextTransparency = val11 / 10
        end

        if value4:IsA("Frame") and value4 ~= instance2 then
          value4.BackgroundTransparency = val11 / 10
        end

        if value4:IsA("UIStroke") then
          value4.Transparency = val11 / 10
        end
      end

      task.wait(0.02)
    end

    magicLoader:Destroy()
    local val12, loader = pcall(function() loadstring(game:HttpGet(val8.url))() end)

    if not val12 then
      warn("[Magic Loader] Failed to load " .. val8.label .. ": " .. tostring(loader))
    end
  end)

  return instance12
end

for index5, value5 in ipairs(val) do
  createElement2(value5, index5)
end

local instance16 = Instance.new("TextButton", instance7)
instance16.Size = UDim2.new(1, 0, 1, 0)
instance16.Position = UDim2.new(0, 0, 0, 0)
instance16.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
instance16.BorderSizePixel = 0
instance16.Text = "Discord"
instance16.TextColor3 = Color3.fromRGB(120, 150, 255)
instance16.Font = Enum.Font.GothamBold
instance16.TextSize = 14
instance16.AutoButtonColor = false
instance16.ZIndex = 2

Instance.new("UICorner", instance16).CornerRadius = UDim.new(0, 8)

local instance17 = Instance.new("UIStroke", instance16)
instance17.Color = Color3.fromRGB(40, 40, 55)
instance17.Thickness = 1

instance16.MouseEnter:Connect(function()
  instance16.BackgroundColor3 = Color3.fromRGB(32, 32, 44)
  instance17.Color = Color3.fromRGB(120, 150, 255)
end)

instance16.MouseLeave:Connect(function()
  instance16.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
  instance17.Color = Color3.fromRGB(40, 40, 55)
end)

instance16.MouseButton1Click:Connect(function()
  if helper2("https://discord.gg/44nyfRtprJ") then
    createElement("Link copied", Color3.fromRGB(80, 130, 255))
  else
    createElement("Clipboard not available", Color3.fromRGB(255, 90, 90))
    warn("[Magic Loader] Clipboard not available. Discord: https://discord.gg/44nyfRtprJ")
  end
end)

warn("[Magic] Loader started")
