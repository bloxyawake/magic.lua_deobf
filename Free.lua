local function safeCall()
local val

  if (type(identifyexecutor)) == "function" then
    local success, val2
    val2, success = pcall(identifyexecutor)

    if val2 and (type(success)) == "string" then
      val = success
    end
  end

  if not val and (type(getexecutorname)) == "function" then
    local val3, success2
    val3, success2 = pcall(getexecutorname)

    if val3 and (type(success2)) == "string" then
      val = success2
    end
  end

  if val then
    local lower = val:lower()

    if (lower:find("xeno", 1, true)) then
      return "Xeno", val
    else
      if (lower:find("solara", 1, true)) then
        return "Solara", val
      else
        if (lower:find("real", 1, true)) then
          return "Real", val
        else
          if (lower:find("wave", 1, true)) then
            return "Wave", val
          else
            if (lower:find("jjsploit", 1, true)) then
              return "JJSploit", val
            else
              if (lower:find("delta", 1, true)) then
                return "Delta", val
              else
                if (lower:find("potassium", 1, true)) then
                  return "Potassium", val
                else
                  return "Unknow", val
                end
              end
            end
          end
        end
      end
    end
  else
    return "Unknow", "Unknown"
  end
end

local function helper()

  local val4 = (type(gethui)) == "function" and gethui()
  local coreGui = val4

  if not val4 then

    coreGui = game:GetService("CoreGui")
  end

  local magicDetection = Instance.new("ScreenGui")
  magicDetection.Name = "Magic Detection"
  magicDetection.ResetOnSpawn = false
  magicDetection.IgnoreGuiInset = true
  magicDetection.DisplayOrder = 999
  magicDetection.Parent = coreGui

  local frame = Instance.new("Frame")
  frame.AnchorPoint = Vector2.new(0.5, 0)
  frame.Position = UDim2.new(0.5, 0, 0, 20)
  frame.Size = UDim2.new(0, 440, 0, 95)
  frame.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
  frame.BackgroundTransparency = 0.08
  frame.BorderSizePixel = 0
  frame.Parent = magicDetection

  Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

  local instance = Instance.new("UIStroke", frame)
  instance.Color = Color3.fromRGB(80, 130, 255)
  instance.Thickness = 2
  instance.Transparency = 0.1

  local instance2 = Instance.new("TextLabel", frame)
  instance2.Size = UDim2.new(1, 0, 0, 28)
  instance2.Position = UDim2.new(0, 0, 0, 6)
  instance2.BackgroundTransparency = 1
  instance2.Text = "MAGIC | DETECTION"
  instance2.TextColor3 = Color3.fromRGB(150, 180, 255)
  instance2.Font = Enum.Font.GothamBold
  instance2.TextSize = 15

  local main = Instance.new("TextLabel", frame)
  main.Name = "Main"
  main.Size = UDim2.new(1, 0, 0, 26)
  main.Position = UDim2.new(0, 0, 0, 34)
  main.BackgroundTransparency = 1
  main.Text = "Detecting executor..."
  main.TextColor3 = Color3.fromRGB(255, 255, 255)
  main.Font = Enum.Font.GothamMedium
  main.TextSize = 15

  local sub = Instance.new("TextLabel", frame)
  sub.Name = "Sub"
  sub.Size = UDim2.new(1, 0, 0, 22)
  sub.Position = UDim2.new(0, 0, 0, 62)
  sub.BackgroundTransparency = 1
  sub.Text = ""
  sub.TextColor3 = Color3.fromRGB(150, 150, 160)
  sub.Font = Enum.Font.Gotham
  sub.TextSize = 13

  return magicDetection, main, sub
end

local val5, val6 = safeCall()

local val7, label, val8 = helper()

local val9 = ({
  Real = 100, Xeno = 60, Solara = 65, Wave = 99, JJSploit = 55, Delta = 100, Potassium = 99, Unknow = 55, ["Not supported"] = 0, })[val5] or 0

label.Text = "Executor: " .. val5
local val10 = val6

if val6 then

  val10 = val6 ~= val5 and val6 ~= "Unknown"
end

if val10 then
  val8.Text = "(raw: " .. val6 .. ")"
end

task.wait(5)
label.Text = "Compatibility: " .. val9 .. "%"

if val9 == 100 then
  label.TextColor3 = Color3.fromRGB(80, 255, 130)
  val8.Text = "Full support"
else
  if val9 >= 90 then
    label.TextColor3 = Color3.fromRGB(80, 255, 130)
    val8.Text = "Great work"
  else
    if val9 >= 70 then
      label.TextColor3 = Color3.fromRGB(255, 220, 80)
      val8.Text = "Bad work"
    else
      if val9 >= 50 then
        label.TextColor3 = Color3.fromRGB(255, 160, 80)
        val8.Text = "Super bad work"
      else
        label.TextColor3 = Color3.fromRGB(255, 80, 80)
        val8.Text = "Not supported"
      end
    end
  end
end

task.wait(3)
val7:Destroy()

local helper2, helper3, helper4, helper5, helper6, helper7, helper8, helper9, helper10, helper11, helper12, magicKey, frame2, frame3, textBox, textLabel, textButton, helper13, val11, waitLoop, userInputService, players, replicatedFirst, localPlayer, val12, humanoid, humanoidRootPart, penablox, config, helper14, val13, val14, helper15, val15, val16, val17, val18, val19, val20, val21, val22, val23, helper16, iterate, val24, val25, val26, val27, val28, val29, helper17, helper18, helper19, helper20, helper21, waitForChild, helper22, namecall, val30

if val9 == 0 then
  warn("[Magic] Unsupported.")
  return
else
  warn("[Magic] Detected: " .. val5 .. " (" .. val9 .. "%)")

  local val31 = (type(gethui)) == "function" and gethui()
  local coreGui2 = val31

  if not val31 then

    coreGui2 = game:GetService("CoreGui")
  end

  magicKey = Instance.new("ScreenGui")
  magicKey.Name = "Magic | Key"
  magicKey.ResetOnSpawn = false
  magicKey.IgnoreGuiInset = true
  magicKey.DisplayOrder = 1000
  magicKey.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  magicKey.Parent = coreGui2

  frame2 = Instance.new("Frame")
  frame2.Size = UDim2.new(1, 0, 1, 0)
  frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  frame2.BackgroundTransparency = 0.5
  frame2.BorderSizePixel = 0
  frame2.ZIndex = 0
  frame2.Parent = magicKey

  frame3 = Instance.new("Frame")
  frame3.AnchorPoint = Vector2.new(0.5, 0.5)
  frame3.Position = UDim2.new(0.5, 0, 0.5, 0)
  frame3.Size = UDim2.new(0, 380, 0, 230)
  frame3.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
  frame3.BorderSizePixel = 0
  frame3.ZIndex = 1
  frame3.Parent = magicKey

  Instance.new("UICorner", frame3).CornerRadius = UDim.new(0, 12)

  local uiStroke = Instance.new("UIStroke")
  uiStroke.Color = Color3.fromRGB(80, 130, 255)
  uiStroke.Thickness = 2
  uiStroke.Transparency = 0.1
  uiStroke.Parent = frame3

  local uiGradient = Instance.new("UIGradient")
  uiGradient.Rotation = 90

  uiGradient.Color = ColorSequence.new({
    (ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 30))), ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 15)), })

  uiGradient.Parent = frame3

  local textLabel2 = Instance.new("TextLabel")
  textLabel2.Size = UDim2.new(1, 0, 0, 40)
  textLabel2.Position = UDim2.new(0, 0, 0, 10)
  textLabel2.BackgroundTransparency = 1
  textLabel2.Text = "Magic | Key"
  textLabel2.TextColor3 = Color3.fromRGB(150, 180, 255)
  textLabel2.Font = Enum.Font.GothamBold
  textLabel2.TextSize = 22
  textLabel2.ZIndex = 2
  textLabel2.Parent = frame3

  local textLabel3 = Instance.new("TextLabel")
  textLabel3.Size = UDim2.new(1, 0, 0, 20)
  textLabel3.Position = UDim2.new(0, 0, 0, 48)
  textLabel3.BackgroundTransparency = 1
  textLabel3.Text = "Enter key to continue"
  textLabel3.TextColor3 = Color3.fromRGB(150, 150, 160)
  textLabel3.Font = Enum.Font.Gotham
  textLabel3.TextSize = 13
  textLabel3.ZIndex = 2
  textLabel3.Parent = frame3

  local frame4 = Instance.new("Frame")
  frame4.Size = UDim2.new(1, -60, 0, 42)
  frame4.Position = UDim2.new(0, 30, 0, 90)
  frame4.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
  frame4.BorderSizePixel = 0
  frame4.ZIndex = 2
  frame4.Parent = frame3

  Instance.new("UICorner", frame4).CornerRadius = UDim.new(0, 8)

  local uiStroke2 = Instance.new("UIStroke")
  uiStroke2.Color = Color3.fromRGB(50, 50, 70)
  uiStroke2.Thickness = 1
  uiStroke2.Parent = frame4

  textBox = Instance.new("TextBox")
  textBox.Size = UDim2.new(1, -20, 1, 0)
  textBox.Position = UDim2.new(0, 10, 0, 0)
  textBox.BackgroundTransparency = 1
  textBox.Text = ""
  textBox.PlaceholderText = "Enter key here..."
  textBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
  textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
  textBox.Font = Enum.Font.Gotham
  textBox.TextSize = 14
  textBox.TextXAlignment = Enum.TextXAlignment.Left
  textBox.ClearTextOnFocus = false
  textBox.ZIndex = 3
  textBox.Parent = frame4

  textLabel = Instance.new("TextLabel")
  textLabel.Size = UDim2.new(1, -60, 0, 20)
  textLabel.Position = UDim2.new(0, 30, 0, 138)
  textLabel.BackgroundTransparency = 1
  textLabel.Text = ""
  textLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
  textLabel.Font = Enum.Font.Gotham
  textLabel.TextSize = 13
  textLabel.TextXAlignment = Enum.TextXAlignment.Left
  textLabel.ZIndex = 2
  textLabel.Parent = frame3

  textButton = Instance.new("TextButton")
  textButton.Size = UDim2.new(1, -60, 0, 38)
  textButton.Position = UDim2.new(0, 30, 0, 165)
  textButton.BackgroundColor3 = Color3.fromRGB(80, 130, 255)
  textButton.BorderSizePixel = 0
  textButton.Text = "Submit"
  textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  textButton.Font = Enum.Font.GothamBold
  textButton.TextSize = 15
  textButton.AutoButtonColor = false
  textButton.ZIndex = 2
  textButton.Parent = frame3

  Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 8)

  local uiStroke3 = Instance.new("UIStroke")
  uiStroke3.Color = Color3.fromRGB(120, 160, 255)
  uiStroke3.Thickness = 1
  uiStroke3.Transparency = 0.2
  uiStroke3.Parent = textButton

  textButton.MouseEnter:Connect(function()
    textButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    return
  end)

  textButton.MouseLeave:Connect(function()
    textButton.BackgroundColor3 = Color3.fromRGB(80, 130, 255)
    return
  end)

  function helper13()
    local position = frame3.Position
    local count = 0

    while true do
      count = 1 + count

      if not (count <= 6) then
        break
      end

      frame3.Position = position + (UDim2.new(0, count % 2 == 0 and 8 or -8, 0, 0))
      task.wait(0.03)
    end

    frame3.Position = position
    return
  end

  val11 = false

  function waitLoop()

    if val11 then
      return
    else
      if textBox.Text == "free" then
        val11 = true

        textLabel.Text = "Key accepted! Loading..."
        textLabel.TextColor3 = Color3.fromRGB(80, 255, 130)

        textButton.Text = "Unlocked"
        textButton.BackgroundColor3 = Color3.fromRGB(60, 200, 100)

        task.wait(0.6)

        for i = 0, 10 do
          frame3.BackgroundTransparency = i / 10
          frame2.BackgroundTransparency = 0.5 + i / 20

          for index, value in ipairs(frame3:GetDescendants()) do
            local textLabel4 = value:IsA("TextLabel")

            if textLabel4 or value:IsA("TextButton") then
              value.TextTransparency = i / 10
            end

            if (value:IsA("Frame")) and value ~= frame3 then
              value.BackgroundTransparency = i / 10
            end
          end

          task.wait(0.02)
        end

        magicKey:Destroy()
      else
        textLabel.Text = "Invalid key. Try again."
        textLabel.TextColor3 = Color3.fromRGB(255, 80, 80)

        helper13()
        textBox.Text = ""
      end

      return
    end
  end

  textButton.MouseButton1Click:Connect(waitLoop)

  textBox.FocusLost:Connect(function(p1)
    if p1 then
      waitLoop()
    end

    return
  end)

  textBox:GetPropertyChangedSignal("Text"):Connect(function()
    if textLabel.Text ~= "" then
      textLabel.Text = ""
    end

    return
  end)

  while true do
    task.wait(0.1)

    if val11 then
      break
    end
  end

  warn("[Magic] Key accepted")

  local rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

  userInputService = game:GetService("UserInputService")

  local runService = game:GetService("RunService")

  players = game:GetService("Players")

  game:GetService("ReplicatedStorage")

  replicatedFirst = game:GetService("ReplicatedFirst")
  localPlayer = players.LocalPlayer
  local character = localPlayer.Character
  local wait = character

  if not character then

    wait = localPlayer.CharacterAdded:Wait()
  end

  val12 = wait

  humanoid = val12:WaitForChild("Humanoid")

  humanoidRootPart = val12:WaitForChild("HumanoidRootPart")

  localPlayer.CharacterAdded:Connect(function(character2)
    val12 = character2
    humanoid = character2.WaitForChild(character2, "Humanoid")
    humanoidRootPart = character2:WaitForChild("HumanoidRootPart")
    return
  end)

  local element = getgenv()

  element.Penablox = getgenv().Penablox or {}

  penablox = getgenv().Penablox

  penablox.Config = {
    BhopEnabled = true, BhopSpeed = 32, NoSpreadEnabled = false, DisableAC = true, DefPeekEnabled = false, DefPeekKey = Enum.KeyCode.Q, DefPeekRestoreVel = true, DefPeekDebug = true, DefPeekFreezeTime = 0.5, AntiMapKickEnabled = true, AntiMapKickOffset = 200, SpawnCT = (Vector3.new(426, -95.1827316, -249)), SpawnT = (Vector3.new(556, -102.182732, -27)), ResolverEnabled = false, ResolverTeamCheck = true, ResolverShowStatus = true, ResolverBiasAngle = 25, ResolverLERP = true, ResolverLERPSpeed = 0.35, AntiAimActive = false, AntiAimHeight = 10, AntiAimSideways = 0, AntiAimJitterMode = "none", AntiAimJitterRange = 8, AntiAimJitterRate = 6, AntiAimMoveSpeed = 100, AntiAimSendRate = 120, AntiAimHoldOnShoot = true, AntiAimHoldTime = 0.15, AntiAimReEnableDelay = 0.3, PosSpoofEnabled = true, }

  penablox.savedPeekCFrame = nil
  penablox.pendingTeleport = false
  penablox.lastTeleport = 0
  penablox.freezeUntil = 0
  penablox.cachedSpawn = nil
  penablox.mapKickGraceEnd = 0

  config = penablox.Config

  function helper14()

    if not config.PosSpoofEnabled then
      return
    else
      local character3 = localPlayer.Character

      if not character3 then
        return
      else

        if not (character3:FindFirstChild("HumanoidRootPart")) then
          return
        else
          return
        end
      end
    end
  end

  runService.PostSimulation:Connect(helper14)

  localPlayer.CharacterAdded:Connect(function()
    task.wait(0.05)
    helper14()
    return
  end)

  helper14()
  local

  warn("[Penablox] Pos spoof active")
  val13 = nil
  local success3, val32
  val32, success3 = pcall(function() return require(replicatedFirst:WaitForChild("AAHandler", 10)) end)

  if val32 and (type(success3)) == "table" then
    local val33 = {}
    val13 = success3

    for key, value2 in pairs(success3) do
      table.insert(val33, tostring(key))
    end

    warn("[AntiAim] AAHandler loaded. Methods: " .. (table.concat(val33, ", ")))
  else
    warn("[AntiAim] AAHandler FAILED:", success3)
  end

  local

  local magicPenabloxWindow = rayfield:CreateWindow({
    Name = "Magic | Penablox", LoadingTitle = "Penablox Lua", LoadingSubtitle = "by ExE", ConfigurationSaving = { Enabled = false }, KeySystem = false, ToggleKey = Enum.KeyCode.RightControl, })

  local

  local combatTab = magicPenabloxWindow:CreateTab("Combat")
  combatTab:CreateSection("Weapon Modifications")

  combatTab:CreateToggle({
    Name = "No Spread", CurrentValue = config.NoSpreadEnabled, Flag = "NoSpreadToggle", Callback = function(value3)
      config.NoSpreadEnabled = value3
      return
    end, })

  local

  combatTab:CreateSection("Defensive Peek")
  local

  combatTab:CreateToggle({
    Name = "Defensive Peek (hold Q)", CurrentValue = config.DefPeekEnabled, Flag = "DefPeekToggle", Callback = function(value4)
      config.DefPeekEnabled = value4

      if value4 then
        warn("[DefPeek] ON")
      else
        penablox.savedPeekCFrame = nil
        warn("[DefPeek] OFF")
      end

      return
    end, })

  combatTab:CreateToggle({
    Name = "DefPeek: reset velocity", CurrentValue = config.DefPeekRestoreVel, Flag = "DefPeekVelToggle", Callback = function(value5)
      config.DefPeekRestoreVel = value5
      return
    end, })

  combatTab:CreateSlider({
    Name = "Freeze after peek (sec)", Range = { 0, 20 }, Increment = 1, Suffix = " x0.1s", CurrentValue = 5, Flag = "DefPeekFreezeSlider", Callback = function(value6)
      config.DefPeekFreezeTime = (tonumber(value6)) / 10
      return
    end, })

  combatTab:CreateToggle({
    Name = "Debug", CurrentValue = config.DefPeekDebug, Flag = "DefPeekDebugToggle", Callback = function(value7)
      config.DefPeekDebug = value7
      return
    end, })

  local

  local antiAimTab = magicPenabloxWindow:CreateTab("Anti-Aim")
  antiAimTab:CreateSection("AA")

  antiAimTab:CreateToggle({
    Name = "Enable Anti-Aim", CurrentValue = config.AntiAimActive, Flag = "AntiAimActive", Callback = function(value8)
      config.AntiAimActive = value8
      warn("[AntiAim]", value8 and "ON" or "OFF")
      return
    end, })

  antiAimTab:CreateSection("Head Offset")

  antiAimTab:CreateSlider({
    Name = "Vertical (- down / + up)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 10, Flag = "AntiAimHeightSlider", Callback = function(value9)
      config.AntiAimHeight = tonumber(value9)
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Horizontal (- left / + right)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimSidewaysSlider", Callback = function(value10)
      config.AntiAimSideways = tonumber(value10)
      return
    end, })

  antiAimTab:CreateSection("Mode")

  antiAimTab:CreateDropdown({
    Name = "Mode", Options = { "None", "Left â Right (jitter)" }, CurrentOption = { "None" }, Flag = "AntiAimJitterDropdown", Callback = function(value11)
      local val34 = value11

      if (type(val34)) == "table" then
        val34 = val34[1]
      end

      if val34 == "None" then
        config.AntiAimJitterMode = "none"
      else
        if val34 == "Left â Right (jitter)" then
          config.AntiAimJitterMode = "lr"
        end
      end

      warn("[AntiAim] jitter ->", config.AntiAimJitterMode)
      return
    end, })

  antiAimTab:CreateSection("Jitter (Left â Right)")

  local

  local

  antiAimTab:CreateSlider({
    Name = "Amplitude", Range = { 1, 30 }, Increment = 1, Suffix = " studs", CurrentValue = 8, Flag = "AntiAimJitterRangeSlider", Callback = function(value12)
      config.AntiAimJitterRange = tonumber(value12)
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Frequency", Range = { 1, 30 }, Increment = 1, Suffix = " Hz", CurrentValue = 6, Flag = "AntiAimJitterRateSlider", Callback = function(value13)
      config.AntiAimJitterRate = tonumber(value13)
      return
    end, })

  antiAimTab:CreateSection("AC Bypass")

  antiAimTab:CreateToggle({
    Name = "Pos Spoof (bypass :3 desync detector)", CurrentValue = config.PosSpoofEnabled, Flag = "PosSpoofToggle", Callback = function(value14)
      config.PosSpoofEnabled = value14
      warn("[PosSpoof]", value14 and "ON" or "OFF")
      return
    end, })

  local

  local resolverTab = magicPenabloxWindow:CreateTab("Resolver")
  resolverTab:CreateSection("Divine OLD Resolver")

  resolverTab:CreateToggle({
    Name = "Enable resolver", CurrentValue = config.ResolverEnabled, Flag = "ResolverToggle", Callback = function(value15)
      config.ResolverEnabled = value15
      warn("[Resolver]", value15 and "ON" or "OFF")
      return
    end, })

  resolverTab:CreateToggle({
    Name = "Skip teammates", CurrentValue = config.ResolverTeamCheck, Flag = "ResolverTeamCheckToggle", Callback = function(value16)
      config.ResolverTeamCheck = value16
      return
    end, })

  local

  resolverTab:CreateToggle({
    Name = "Show status (console)", CurrentValue = config.ResolverShowStatus, Flag = "ResolverShowStatusToggle", Callback = function(value17)
      config.ResolverShowStatus = value17
      return
    end, })

  resolverTab:CreateSection("Tuning")

  local

  local

  resolverTab:CreateSlider({
    Name = "Bias angle (JITTER_AA)", Range = { 5, 90 }, Increment = 1, Suffix = " deg", CurrentValue = 25, Flag = "ResolverBiasAngleSlider", Callback = function(value18)
      config.ResolverBiasAngle = tonumber(value18)
      return
    end, })

  resolverTab:CreateToggle({
    Name = "LERP (smooth transition)", CurrentValue = config.ResolverLERP, Flag = "ResolverLERPToggle", Callback = function(value19)
      config.ResolverLERP = value19
      return
    end, })

  resolverTab:CreateSlider({
    Name = "LERP speed", Range = { 5, 100 }, Increment = 5, Suffix = " %", CurrentValue = 35, Flag = "ResolverLERPSpeedSlider", Callback = function(value20)
      config.ResolverLERPSpeed = (tonumber(value20)) / 100
      return
    end, })

  local

  local miscTab = magicPenabloxWindow:CreateTab("Misc")
  miscTab:CreateSection("Movement Modifications")

  miscTab:CreateToggle({
    Name = "Sub-Tick AutoBhop", CurrentValue = config.BhopEnabled, Flag = "BhopToggle", Callback = function(value21)
      config.BhopEnabled = value21
      return
    end, })

  miscTab:CreateSlider({
    Name = "Bhop Target Speed", Range = { 32, 100 }, Increment = 1, Suffix = " studs/s", CurrentValue = config.BhopSpeed, Flag = "BhopSpeedSlider", Callback = function(value22)
      config.BhopSpeed = tonumber(value22)
      return
    end, })

  local

  miscTab:CreateSection("Anti Map Kick")
  local

  miscTab:CreateToggle({
    Name = "Anti Map Kick (auto-respawn)", CurrentValue = config.AntiMapKickEnabled, Flag = "AntiMapKickToggle", Callback = function(value23)
      config.AntiMapKickEnabled = value23
      warn("[AntiMapKick]", value23 and "ON" or "OFF")
      return
    end, })

  miscTab:CreateSlider({
    Name = "Detection Offset (above kill Y)", Range = { 50, 400 }, Increment = 10, Suffix = " studs", CurrentValue = config.AntiMapKickOffset, Flag = "AntiMapKickOffsetSlider", Callback = function(value24)
      config.AntiMapKickOffset = tonumber(value24)
      return
    end, })

  local

  miscTab:CreateSection("Anti-AntiCheat")

  miscTab:CreateToggle({
    Name = "Disable Client AC", CurrentValue = config.DisableAC, Flag = "DisableACToggle", Callback = function(value25)
      config.DisableAC = value25
      return
    end, })

  function helper2(...)
    if config.DefPeekDebug then
      warn("[DefPeek]", ...)
    end

    return
  end

  function helper3()
    return (tick()) < penablox.freezeUntil
  end

  local

  val14 = 0

  function helper4()
    val14 = tick()
    return
  end

  function helper15()
    if (tick()) - val14 > 15 then
      helper4()
    end

    return
  end

  helper4()
  val15 = false
  val16 = false
  local

  val17 = 0
  val18 = nil
  val19 = 1
  val20 = 0
  val21 = 0
  val22 = 0
  val23 = os.clock()

  function helper16()
    return localPlayer.Character
  end

  function iterate()
    local object = helper16()

    if not object then
      return nil
    else
      local val35 = {}

      for index2, value26 in ipairs(object:GetDescendants()) do

        if (value26:IsA("Motor6D")) and value26.Name ~= "" then
          val35[value26.Name] = value26.C0
        end
      end

      return val35
    end
  end

  penablox.aaController = {
    hold = function()
      if not val15 then
        return
      else
        val16 = true
        return
      end
    end, release = function()
      if not val15 then
        return
      else
        val16 = false
        return
      end
    end, isActive = function() return val15 end, isHeld = function() return val16 end, }

  runService.PreSimulation:Connect(function()

    if not val13 then
      return
    else
      local val36 = os.clock()
      local val37 = math.min(val36 - val23, 0.033333333333333)
      val23 = val36
      local antiAimJitterMode = config.AntiAimJitterMode or "none"

      if antiAimJitterMode == "lr" then
        if val36 - val20 >= 1 / (math.max(config.AntiAimJitterRate or 6, 0.1)) then
          val20 = val36
          val19 = -val19
        end
      end

      if not config.AntiAimActive then
        if val15 then
          val15 = false
          val16 = false
          val21 = 0
          val22 = 0
        end

        return
      else
        if not val15 then
          val15 = true
          val16 = false
          val21 = 0
          val22 = 0
          val23 = val36
          val18 = iterate()
          warn("[AntiAim] entered")
        end

        if val16 then
          return
        else
          if val36 - val17 < 1 / (math.max(config.AntiAimSendRate or 120, 1)) then
            return
          else
            val17 = val36
            local object2 = helper16()

            if not (object2 and object2:FindFirstChild("HumanoidRootPart")) then
              return
            else
              if val18 then
                for key2, value27 in pairs(val18) do
                end
              end

              local antiAimSideways = config.AntiAimSideways or 0
              local antiAimHeight = config.AntiAimHeight or 0
              local antiAimJitterRange = config.AntiAimJitterRange or 8

              if antiAimJitterMode == "lr" then
                antiAimSideways = antiAimSideways + val19 * antiAimJitterRange
              end

              local antiAimMoveSpeed = config.AntiAimMoveSpeed or 100

              if antiAimMoveSpeed >= 100 or val37 <= 0 then
                val21 = antiAimSideways
                val22 = antiAimHeight
              else
                local val38 = 1 - (math.exp(-(antiAimMoveSpeed / 100 * 300) * val37))
                val21 = val21 + (antiAimSideways - val21) * val38
                val22 = val22 + (antiAimHeight - val22) * val38
              end

              CFrame.new(val21, 1 + val22, 0)

              local neck = val18 and val18.Neck or CFrame.new()
              return
            end
          end
        end
      end
    end
  end)

  local

  function helper5(val39, val40)
    local humanoidRootPart2 = val39:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart2 then
      return
    else
      local rootJoint = humanoidRootPart2:FindFirstChild("RootJoint")
      local val41 = not rootJoint

      if val41 or not (rootJoint:IsA("Motor6D")) then
        return
      else
        if not (rootJoint:GetAttribute("BaseC0")) then
          rootJoint:SetAttribute("BaseC0", rootJoint.C0)
        end

        rootJoint.C0 = (rootJoint:GetAttribute("BaseC0")) * (CFrame.Angles(0, val40, 0))
        return
      end
    end
  end

  localPlayer.CharacterAdded:Connect(function()
    val15 = false
    val16 = false
    val18 = nil
    val19 = 1
    val20 = 0
    val21 = 0
    val22 = 0
    val23 = os.clock()
    return
  end)

  function helper6(val42)

    if val42 == localPlayer then
      return false
    else
      if not config.ResolverTeamCheck then
        return true
      else
        local team = localPlayer:GetAttribute("Team")
        local val43 = not team
        local team2 = val42:GetAttribute("Team")

        if val43 or not team2 then
          return true
        else
          return team ~= team2
        end
      end
    end
  end

  warn("[AntiAim] module loaded")

  function helper7()
    local character4 = localPlayer.Character
    local humanoidRootPart3 = character4

    if character4 then

      humanoidRootPart3 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    local val44 = humanoidRootPart3

    if not val44 then
      return nil
    else
      local val45 = nil
      local huge = math.huge

      for index3, value28 in ipairs(players:GetPlayers()) do

        if (helper6(value28)) and value28.Character then

          local humanoidRootPart4 = value28.Character:FindFirstChild("HumanoidRootPart")

          local humanoid2 = value28.Character:FindFirstChildOfClass("Humanoid")
          local val46 = humanoidRootPart4

          if humanoidRootPart4 then

            val46 = humanoid2 and humanoid2.Health > 0
          end

          if val46 then
            local magnitude = (humanoidRootPart4.Position - val44.Position).Magnitude

            if magnitude < huge then
              huge = magnitude
              val45 = value28
            end
          end
        end
      end

      return val45
    end
  end

  function helper8(val47)
    local lookVector = val47.CFrame.LookVector
    return math.atan2(lookVector.X, lookVector.Z)
  end

  val24 = {}
  val25 = {}
  val26 = {}
  val27 = 0
  local

  val28 = {}

  function helper9(val48, val49)
    return math.abs(val29(val48 - val49))
  end

  val29 = function(p8) return math.atan2(math.sin(p8), math.cos(p8)) end

  function helper10(val50, val51, val52)
    return val50 + (val29(val51 - val50)) * val52
  end

  function helper17(val53)
    local character5 = val53.Character
    local humanoidRootPart5 = character5

    if character5 then

      humanoidRootPart5 = val53.Character:FindFirstChild("HumanoidRootPart")
    end

    local val54 = humanoidRootPart5

    if not val54 then
      return
    else
      local val55 = val24[val53] or {}
      val24[val53] = val55
      table.insert(val24[val53], helper8(val54))

      if #val24[val53] > 10 then
        table.remove(val24[val53], 1)
      end

      return
    end
  end

  function helper18(val56)
    local val57 = val24[val56]

    local val58 = not val57 or #val57 < 10

    if val58 then
      return "LEGIT"
    else
      local val59 = 0
      local val60 = 0
      local val61 = #val57
      local val62 = 1

      while true do
        val62 = 1 + val62

        if not (val62 <= val61) then
          break
        end

        local val63 = val62
        val59 = val59 + (helper9(val57[val63], val57[val63 - 1]))

        if (math.sign(math.sin(val57[val63]))) ~= (math.sign(math.sin(val57[val63 - 1]))) then
          val60 = val60 + 1
        end
      end

      local val64 = val59 / (#val57 - 1)

      if val64 < (math.rad(4)) then
        return "LEGIT"
      else

        if val64 < (math.rad(18)) and val60 < 3 then
          return "STATIC_AA"
        else
          return "JITTER_AA"
        end
      end
    end
  end

  function helper19(val65)
    local character6 = val65.Character
    local humanoidRootPart6 = character6

    if character6 then

      humanoidRootPart6 = val65.Character:FindFirstChild("HumanoidRootPart")
    end

    local val66 = humanoidRootPart6

    if not val66 then
      return 0
    else
      local val67 = helper8(val66)
      local val68 = helper18(val65)

      if val68 == "LEGIT" then
        return val67
      else
        if val68 == "STATIC_AA" then
          local val69 = not val26[val65]

          if val69 and (os.clock()) - val27 <= 0.25 then
            val26[val65] = val67
            val27 = 0
          end

          return val26[val65] or val67
        else
          local val70 = math.sign(math.sin(val67))

          if val28[val65] then
            val70 = -val70
            val28[val65] = nil
          end

          local val71 = val29(val67 + val70 * (math.rad(config.ResolverBiasAngle or 25)))

          if config.ResolverLERP then

            val25[val65] = helper10(val25[val65] or val71, val71, config.ResolverLERPSpeed or 0.35)
            return val25[val65]
          else
            return val71
          end
        end
      end
    end
  end

  local

  function helper11()
    local object3 = helper20()

    if not object3 then
      return nil
    else
      local lower2 = object3:lower()
      local val72 = lower2 == "ct"
      local val73 = val72

      if not val72 then
        local find = lower2:find("counter", 1, true)
        local find2 = find

        if not find then
          local find3 = lower2:find("blue", 1, true)

          find2 = find3 or lower2:find("defend", 1, true)
        end

        val73 = find2
      end

      if val73 then
        return config.SpawnCT
      else
        local val74 = lower2 == "t"
        local val75 = val74

        if not val74 then
          local find4 = lower2:find("terror", 1, true)
          local find5 = find4

          if not find4 then
            local find6 = lower2:find("red", 1, true)

            find5 = find6 or lower2:find("attack", 1, true)
          end

          val75 = find5
        end

        if val75 then
          return config.SpawnT
        else
          return nil
        end
      end
    end
  end

  runService.Heartbeat:Connect(function()

    if not config.ResolverEnabled then
      return
    else
      local element2 = helper7()

      if element2 and element2.Character then
        helper17(element2)
        local val76 = helper19(element2)
        helper5(element2.Character, val76)

        if config.ResolverShowStatus then
          if (os.clock()) * 2 % 1 < 0.05 then
            warn(string.format(
              "[Resolver/Divine] %s | AA=%s | yaw=%.1fÂ°", element2.Name, helper18(element2), math.deg(val76)
            ))
          end
        end
      end

      return
    end
  end)

  warn("[Resolver] Divine OLD loaded")

  function helper20()
    local team3 = localPlayer.Team
    local name = team3 and team3.Name

    if name then
      return team3.Name
    else
      local team4 = localPlayer:GetAttribute("Team")

      if (type(team4)) == "string" then
        return team4
      else

        if team3 and (typeof(team3.TeamColor)) == "BrickColor" then
          local color = team3.TeamColor.Color

          if color.R > color.B then
            return "T"
          else
            return "CT"
          end
        else
          return nil
        end
      end
    end
  end

  localPlayer.CharacterAdded:Connect(function()
    penablox.cachedSpawn = nil
    return
  end)

  localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
    penablox.cachedSpawn = nil
    return
  end)

  local

  function helper12()
    local character7 = localPlayer.Character

    return character7 and character7:FindFirstChild("HumanoidRootPart") or nil
  end

  runService.Stepped:Connect(function()
local val77

    if not config.AntiMapKickEnabled then
      return
    else
      if (tick()) < penablox.mapKickGraceEnd then
        return
      else
        local character8 = localPlayer.Character

        if not character8 or not character8.Parent then
          return
        else
          local humanoid3 = character8:FindFirstChildOfClass("Humanoid")

          if not humanoid3 or humanoid3.Health <= 0 then
            return
          else
            if (humanoid3:GetState()) == Enum.HumanoidStateType.Dead then
              return
            else
              humanoidRootPart7 = character8:FindFirstChild("HumanoidRootPart")

              if not humanoidRootPart7 then
                return
              else
                if humanoidRootPart7.Position.Y
                  < (workspace.FallenPartsDestroyHeight or -500) + config.AntiMapKickOffset then
                  val77 = helper11()

                  if val77 then
                    pcall(function()
                      humanoidRootPart7.CFrame = CFrame.new(val77 + (Vector3.new(0, 5, 0)))
                      humanoidRootPart7.AssemblyLinearVelocity = Vector3.zero
                      humanoidRootPart7.AssemblyAngularVelocity = Vector3.zero

                      return
                    end)
                  end
                end

                return
              end
            end
          end
        end
      end
    end
  end)

  warn("[AntiMapKick] hardcoded coords active")

  userInputService.InputBegan:Connect(function(input)
    if input.KeyCode ~= config.DefPeekKey then
      return
    else
      if not config.DefPeekEnabled then
        return
      else
        local element3 = helper12()

        if element3 then
          penablox.savedPeekCFrame = element3.CFrame
          helper2("Q saved")
        end

        return
      end
    end
  end)

  userInputService.InputEnded:Connect(function(input2)
    if input2.KeyCode ~= config.DefPeekKey then
      return
    else
      if penablox.savedPeekCFrame then
        penablox.savedPeekCFrame = nil
        helper2("Q reset")
      end

      return
    end
  end)

  localPlayer.CharacterAdded:Connect(function()
    penablox.savedPeekCFrame = nil
    penablox.pendingTeleport = false
    penablox.freezeUntil = 0
    penablox.mapKickGraceEnd = (tick()) + 2

    return
  end)

  runService.PreSimulation:Connect(function()

    if not penablox.pendingTeleport then
      return
    else
      penablox.pendingTeleport = false

      if not config.DefPeekEnabled or not penablox.savedPeekCFrame then
        return
      else
        local val78 = tick()

        if val78 - penablox.lastTeleport < 0.05 then
          return
        else
          penablox.lastTeleport = val78

          pcall(function()
            local parent = helper12()
            local parent3 = parent and parent.Parent

            if parent3 then
              parent.CFrame = penablox.savedPeekCFrame

              if config.DefPeekRestoreVel then
                parent.AssemblyLinearVelocity = Vector3.zero
                parent.AssemblyAngularVelocity = Vector3.zero
              end

              local val79 = config.DefPeekFreezeTime > 0 and (tick()) + config.DefPeekFreezeTime
              penablox.freezeUntil = val79 or 0
            end

            return
          end)

          return
        end
      end
    end
  end)

  runService.PreSimulation:Connect(function()

    if not (helper3()) then
      return
    else
      if not penablox.savedPeekCFrame then
        return
      else
        local parent2 = helper12()

        if not parent2 or not parent2.Parent then
          return
        else
          parent2.AssemblyLinearVelocity = Vector3.zero
          parent2.AssemblyAngularVelocity = Vector3.zero
          return
        end
      end
    end
  end)

  function helper21(val80)
    local val81 = not val80

    if val81 or not (val80:IsA("Tool")) then
      return
    else
      if val80.Name ~= "SSG-08" then
        return
      else

        val80.ChildAdded:Connect(function(child)
          local val82 = child.Name == "Shoot"

          if val82 and child:IsA("Configuration") then

            if config.DefPeekEnabled and penablox.savedPeekCFrame then
              penablox.pendingTeleport = true
            end
          end

          return
        end)

        return
      end
    end
  end

  local

  local function helper23(val83)

    if not val83 then
      return
    else
      local ssg08 = val83:FindFirstChild("SSG-08")

      if ssg08 then
        helper21(ssg08)
      end

      val83.ChildAdded:Connect(function(child2)
        if (child2:IsA("Tool")) then
          helper21(child2)
        end

        return
      end)

      return
    end
  end

  if localPlayer.Character then
    helper23(localPlayer.Character)
  end

  localPlayer.CharacterAdded:Connect(helper23)

  task.spawn(function()
    while (task.wait(1)) do
      helper15()
    end

    return
  end)

  localPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    helper4()
    return
  end)

  runService.PreSimulation:Connect(function()

    if not config.BhopEnabled then
      return
    else
      if (helper3()) then
        return
      else
        local val84 = not val12
        local val85 = val84

        if not val84 then
          local val86 = not humanoidRootPart
          local val87 = val86

          if not val86 then

            val87 = not humanoid or humanoid.Health <= 0
          end

          val85 = val87
        end

        if val85 then
          return
        else

          local getState = humanoid:GetState()

          if (userInputService:IsKeyDown(Enum.KeyCode.Space)) then

            if getState == Enum.HumanoidStateType.Landed
              or humanoid.FloorMaterial ~= Enum.Material.Air then

              humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
          end

          local val88 = getState == Enum.HumanoidStateType.Jumping
          local val89 = val88

          if not val88 then

            val89 = getState == Enum.HumanoidStateType.Freefall
              or humanoid.FloorMaterial == Enum.Material.Air
          end

          if val89 then
            local moveDirection = humanoid.MoveDirection

            if moveDirection.Magnitude > 0 then
              local bhopSpeed = config.BhopSpeed

              humanoidRootPart.AssemblyLinearVelocity = Vector3.new(
                moveDirection.X * bhopSpeed, humanoidRootPart.AssemblyLinearVelocity.Y, moveDirection.Z * bhopSpeed
              )
            end
          end

          return
        end
      end
    end
  end)

  warn("[Penablox] Loaded")

  local replicatedStorage = game:GetService("ReplicatedStorage")
  waitForChild = replicatedStorage:WaitForChild("MainEvent", 10)

  if not waitForChild then
    warn("[ShootDelay] MainEvent not found")
    return
  else
    function helper22(val90)
      local character9 = localPlayer.Character
      local humanoidRootPart8 = character9

      if character9 then

        humanoidRootPart8 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
      end

      local val91 = humanoidRootPart8

      if not val91 then
        return false
      else
        local val92 = 0
        local val93 = 0
        local n = val90.n
        local val94 = 0

        while true do
          val94 = 1 + val94

          if not (val94 <= n) then
            break
          end

          local val95 = val90[val94]

          if (typeof(val95)) == "Vector3" then
            val92 = val92 + 1

            if (val95 - val91.Position).Magnitude < 10 then
              val93 = val93 + 1
            end
          end
        end

        return val92 >= 2 and val93 >= 1
      end
    end

    local element4 = getrawmetatable(game)
    namecall = element4.__namecall
    setreadonly(element4, false)
    local

    val30 = false

    element4.__namecall = newcclosure(function(p18, ...)
      local val96 = getnamecallmethod()
      local val97 = not val30
      local val98 = val97

      if val97 then
        local val99 = val96 == "FireServer"
        local val100 = val99

        if val99 then
          local val101 = rawequal(p18, waitForChild)
          local val102 = val101

          if val101 then
            local antiAimHoldOnShoot = config.AntiAimHoldOnShoot
            local val103 = antiAimHoldOnShoot

            if antiAimHoldOnShoot then
              local aaController = penablox.aaController
              local val104 = aaController

              if aaController then
                local val105 = penablox.aaController.isActive()

                val104 = val105 and not (penablox.aaController.isHeld())
              end

              val103 = val104
            end

            val102 = val103
          end

          val100 = val102
        end

        val98 = val100
      end

      local element5

      if val98 then
        element5 = table.pack(...)

        if (helper22(element5)) then
          val30 = true
          penablox.aaController.hold()
          local antiAimHoldTime = config.AntiAimHoldTime or 0.15
          local

          task.delay(antiAimHoldTime, function()
            pcall(function()
              namecall(waitForChild, table.unpack(element5, 1, element5.n))
              return
            end)

            return
          end)

          task.delay(antiAimHoldTime + (config.AntiAimReEnableDelay or 0.3), function()
            if penablox.aaController then
              penablox.aaController.release()
            end

            val30 = false
            return
          end)

          return
        else
          return namecall(p18, ...)
        end
      end
    end)

    setreadonly(element4, true)

    warn("[Penablox] Shoot delay fix loaded")
    warn("[Penablox] Fully loaded")

    return
  end
end
