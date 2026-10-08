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
    local success2, val3
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

local helper2, helper3, helper4, iterate, safeCall2, iterate2, helper5, helper6, helper7, helper8, helper9, helper10, iterate3, iterate4, helper11, helper12, helper13, helper14, helper15, helper16, helper17, helper18, helper19, iterate5, val11, val12, safeCall3, safeCall4, helper20, magicKey, frame2, frame3, instance3, instance4, instance5, helper21, val13, val14, waitLoop, userInputService, players, replicatedStorage, physicsService, localPlayer, val15, humanoid, humanoidRootPart, penablox, config, val16, val17, val18, val19, val20, val21, val22, val23, val24, helper22, helper23, helper24, helper25, val25, aaHandler, helper26, val26, val27, val28, helper27, val29, iterate6, val30, val31, val32, val33, val34, val35, val36, val37, val38, val39, val40, val41, val42, val43, helper28, val44, helper29, val45, helper30, val46, helper31, val47, val48, checkRaycastAgainstRealBody, getBodyPartName, val49, val50, helper32, val51, val52, val53, helper33, safeCall5, iterate7, waitForChild, helper34, helper35, namecall, val54

if val9 == 0 then
  warn("[Magic] Unsupported.")
  return
else
  local rayfield, runService, replicatedFirst, magicPenabloxWindow, combatTab, antiAimTab, resolverTab, miscTab

  do
    warn("[Magic] Detected: " .. val5 .. " (" .. val9 .. "%)")
    val11 = nil
    val12 = 0

    function safeCall3(val55, val56)
      local val57 = val56 or 8
      local val58 = false

      task.spawn(function()
local val59, success3, val60

        if (type(request)) == "function" then
          local val61, success4
          val61, success4 = pcall(function() return request({ Url = val55, Method = "GET" }) end)

          local val62 = val61

          if val61 then
            local val63 = (type(success4)) == "table"
            local val64 = val63

            if val63 then

              local val65 = success4.StatusCode == 200 or success4.StatusCode == 201
              local val66 = val65

              if val65 then

                val66 = (type(success4.Body)) == "string" and #success4.Body > 5
              end

              val64 = val66
            end

            val62 = val64
          end

          if val62 then
            body = success4.Body
            val58 = true
            return
          else
            if (type(http_request)) == "function" then
              local val67, success5
              val67, success5 = pcall(function() return http_request({ Url = val55, Method = "GET" }) end)

              local val68 = val67

              if val67 then
                local val69 = (type(success5)) == "table"
                local val70 = val69

                if val69 then

                  local val71 = success5.StatusCode == 200 or success5.StatusCode == 201
                  local val72 = val71

                  if val71 then

                    val72 = (type(success5.Body)) == "string" and #success5.Body > 5
                  end

                  val70 = val72
                end

                val68 = val70
              end

              if val68 then
                body = success5.Body
                val58 = true
                return
              else
                val59, success3 = pcall(function()

                  return game:HttpGet(val55)
                end)

                val60 = val59

                if val59 then

                  val60 = (type(success3)) == "string" and #success3 > 5
                end

                if val60 then
                  body = success3
                end

                val58 = true
                return
              end
            end
          end
        end
      end)

      local val73 = tick()

      while true do

        if not val58 and (tick()) - val73 < val57 then
          task.wait(0.05)
        else
          break
        end
      end

      return body
    end

    function safeCall4()

      local val74

      if val11 and (os.clock()) - val12 < 60 then
        return val11
      else
        val74 = safeCall3("https://raw.githubusercontent.com/keys124321/keys/refs/heads/main/key_premium"
          .. "?_=" .. (tostring(os.time())), 8)

        if not val74 then
          return nil
        else
          local val75 = {
            pcall(function()

              local httpService = game:GetService("HttpService")
              return httpService:JSONDecode(val74)
            end), }

          local val76 = val75[2]

          if not val75[1] or (type(val76)) ~= "table" then
            return nil
          else
            val11 = val76
            val12 = os.clock()
            return val76
          end
        end
      end
    end

    function helper20()

      local localPlayer2 = game:GetService("Players").LocalPlayer
      local lower2 = localPlayer2

      if localPlayer2 then

        lower2 = localPlayer2.Name:lower()
      end

      return lower2 or ""
    end

    local val77 = (type(gethui)) == "function" and gethui()
    local coreGui2 = val77

    if not val77 then

      coreGui2 = game:GetService("CoreGui")
    end

    magicKey = Instance.new("ScreenGui")
    magicKey.Name = "Magic | Key"
    magicKey.ResetOnSpawn = false
    magicKey.IgnoreGuiInset = true
    magicKey.DisplayOrder = 1000
    magicKey.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    magicKey.Parent = coreGui2
  end

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

  do
    frame3.BorderSizePixel = 0
    frame3.ZIndex = 1
    frame3.Parent = magicKey

    Instance.new("UICorner", frame3).CornerRadius = UDim.new(0, 12)

    local instance6 = Instance.new("UIStroke", frame3)
    instance6.Color = Color3.fromRGB(80, 130, 255)
    instance6.Thickness = 2
    instance6.Transparency = 0.1
    instance6.Parent = frame3

    local instance7 = Instance.new("UIGradient", frame3)
    instance7.Rotation = 90

    instance7.Color = ColorSequence.new({
      (ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 30))), ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 15)), })
  end

  do
    local instance8 = Instance.new("TextLabel", frame3)
    instance8.Size = UDim2.new(1, 0, 0, 40)
    instance8.Position = UDim2.new(0, 0, 0, 10)
    instance8.BackgroundTransparency = 1
    instance8.Text = "Magic | Beta"
    instance8.TextColor3 = Color3.fromRGB(150, 180, 255)
    instance8.Font = Enum.Font.GothamBold
    instance8.TextSize = 22
    instance8.ZIndex = 2
    instance8.Parent = frame3

    local instance9 = Instance.new("TextLabel", frame3)
    instance9.Size = UDim2.new(1, 0, 0, 20)
    instance9.Position = UDim2.new(0, 0, 0, 48)
    instance9.BackgroundTransparency = 1
    instance9.Text = "Enter key to continue"
    instance9.TextColor3 = Color3.fromRGB(150, 150, 160)
    instance9.Font = Enum.Font.Gotham
    instance9.TextSize = 13
    instance9.ZIndex = 2
    instance9.Parent = frame3
  end

  do
    local instance10 = Instance.new("Frame", frame3)
    instance10.Size = UDim2.new(1, -60, 0, 42)
    instance10.Position = UDim2.new(0, 30, 0, 90)
    instance10.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    instance10.BorderSizePixel = 0
    instance10.ZIndex = 2

    Instance.new("UICorner", instance10).CornerRadius = UDim.new(0, 8)

    local instance11 = Instance.new("UIStroke", instance10)
    instance11.Color = Color3.fromRGB(50, 50, 70)
    instance11.Thickness = 1

    instance3 = Instance.new("TextBox", instance10)
  end

  instance3.Size = UDim2.new(1, -20, 1, 0)
  instance3.Position = UDim2.new(0, 10, 0, 0)
  instance3.BackgroundTransparency = 1
  instance3.Text = ""
  instance3.PlaceholderText = "Magic-XXXXXXXXXXXX"
  instance3.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
  instance3.TextColor3 = Color3.fromRGB(255, 255, 255)
  instance3.Font = Enum.Font.Gotham
  instance3.TextSize = 14
  instance3.TextXAlignment = Enum.TextXAlignment.Left
  instance3.ClearTextOnFocus = false
  instance3.ZIndex = 3

  instance4 = Instance.new("TextLabel", frame3)
  instance4.Size = UDim2.new(1, -60, 0, 20)
  instance4.Position = UDim2.new(0, 30, 0, 138)
  instance4.BackgroundTransparency = 1
  instance4.Text = ""
  instance4.TextColor3 = Color3.fromRGB(255, 80, 80)
  instance4.Font = Enum.Font.Gotham
  instance4.TextSize = 13
  instance4.TextXAlignment = Enum.TextXAlignment.Left
  instance4.ZIndex = 2
  instance4.Parent = frame3

  instance5 = Instance.new("TextButton", frame3)

  do
    instance5.Size = UDim2.new(1, -60, 0, 38)
    instance5.Position = UDim2.new(0, 30, 0, 165)
    instance5.BackgroundColor3 = Color3.fromRGB(80, 130, 255)
    instance5.BorderSizePixel = 0
    instance5.Text = "Submit"
    instance5.TextColor3 = Color3.fromRGB(255, 255, 255)
    instance5.Font = Enum.Font.GothamBold
    instance5.TextSize = 15
    instance5.AutoButtonColor = false
    instance5.ZIndex = 2

    Instance.new("UICorner", instance5).CornerRadius = UDim.new(0, 8)

    local instance12 = Instance.new("UIStroke", instance5)
    instance12.Color = Color3.fromRGB(120, 160, 255)
    instance12.Thickness = 1
    instance12.Transparency = 0.2
  end

  instance5.MouseEnter:Connect(function()
    instance5.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    return
  end)

  instance5.MouseLeave:Connect(function()
    instance5.BackgroundColor3 = Color3.fromRGB(80, 130, 255)
    return
  end)

  function helper21()
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

  val13 = false
  val14 = false

  function waitLoop()

    local val78 = val13 or val14

    if val78 then
      return
    else
      text = instance3.Text

      if (type(text)) ~= "string" or #text < 8 then
        instance4.Text = "Key is too short."
        instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

        helper21()
        return
      else
        if (text:sub(1, 6)) ~= "Magic-" then
          instance4.Text = "Key must start with 'Magic-'"
          instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

          helper21()
          return
        else
          val14 = true
          instance5.Text = "Checking..."

          instance4.Text = "Verifying key..."
          instance4.TextColor3 = Color3.fromRGB(150, 180, 255)

          task.spawn(function()
            local val79 = safeCall4()
            val14 = false
            instance5.Text = "Submit"

            if not val79 then
              instance4.Text = "Failed to fetch whitelist. Check your connection."
              instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

              helper21()
              return
            else
              local val80 = val79[text]

              if val80 == nil then
                instance4.Text = "Key not found."
                instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

                helper21()
                instance3.Text = ""
                return
              else

                if (tostring(val80):lower()) ~= (helper20()) then
                  instance4.Text = "Key is bound to another user."
                  instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

                  helper21()
                  return
                else
                  val13 = true
                  script_key = text

                  instance4.Text = "Welcome, " .. game:GetService("Players").LocalPlayer.Name
                    .. "!"

                  instance4.TextColor3 = Color3.fromRGB(80, 255, 130)

                  instance5.Text = "Unlocked"
                  instance5.BackgroundColor3 = Color3.fromRGB(60, 200, 100)

                  task.wait(1.2)

                  for i = 0, 10 do
                    frame3.BackgroundTransparency = i / 10
                    frame2.BackgroundTransparency = 0.5 + i / 20

                    for index, value in ipairs(frame3:GetDescendants()) do
                      local textLabel = value:IsA("TextLabel")

                      if textLabel or value:IsA("TextButton") then
                        value.TextTransparency = i / 10
                      end

                      if (value:IsA("Frame")) and value ~= frame3 then
                        value.BackgroundTransparency = i / 10
                      end
                    end

                    task.wait(0.02)
                  end

                  magicKey:Destroy()
                  return
                end
              end
            end
          end)

          return
        end
      end
    end
  end

  instance5.MouseButton1Click:Connect(waitLoop)

  instance3.FocusLost:Connect(function(p3)
    if p3 then
      waitLoop()
    end

    return
  end)

  do

    instance3:GetPropertyChangedSignal("Text"):Connect(function()
      local val81 = instance4.Text ~= ""

      if val81 and instance4.TextColor3 ~= (Color3.fromRGB(80, 255, 130)) then
        instance4.Text = ""
      end

      return
    end)

    while true do
      task.wait(0.1)

      if val13 then
        break
      end
    end

    warn("[Magic] Key accepted")

    rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

    userInputService = game:GetService("UserInputService")

  end

  runService = game:GetService("RunService")

  players = game:GetService("Players")

  replicatedStorage = game:GetService("ReplicatedStorage")

  replicatedFirst = game:GetService("ReplicatedFirst")

  physicsService = game:GetService("PhysicsService")
  localPlayer = players.LocalPlayer

  do
    local character = localPlayer.Character
    local wait = character

    if not character then

      wait = localPlayer.CharacterAdded:Wait()
    end

    val15 = wait

    humanoid = val15:WaitForChild("Humanoid")

    humanoidRootPart = val15:WaitForChild("HumanoidRootPart")

    localPlayer.CharacterAdded:Connect(function(character2)
      val15 = character2
      humanoid = character2:WaitForChild("Humanoid")
      humanoidRootPart = character2:WaitForChild("HumanoidRootPart")
      return
    end)
  end

  do
    local element = getgenv()

    element.Penablox = getgenv().Penablox or {}

    penablox = getgenv().Penablox

    penablox.Config = {
      BhopEnabled = true, BhopSpeed = 32, NoSpreadEnabled = false, DisableAC = true, DefPeekEnabled = false, DefPeekKey = Enum.KeyCode.Q, DefPeekRestoreVel = true, DefPeekDebug = true, DefPeekFreezeTime = 0.5, AntiMapKickEnabled = true, AntiMapKickOffset = 200, NoclipEnabled = true, KnifeBotEnabled = false, KnifeBotRate = 0.05, KnifeBotBehindStuds = 1, KnifeBotAutoEquip = true, KnifeBotPredictive = true, KnifeSpamEnabled = true, KnifeSpamCount = 4, KnifeSpamDelay = 0.03, ResolverEnabled = false, ResolverTeamCheck = true, ResolverAdaptive = true, ResolverManualOffset = 0, ResolverShowStatus = true, ResolverBiasAngle = 25, ResolverLERP = true, ResolverLERPSpeed = 0.35, ForceHeadshotEnabled = false, ForceHeadshotOnMiss = false, ForceHeadshotIgnoreTm = true, AntiAimActive = false, AntiAimHeight = 10, AntiAimSideways = 0, AntiAimJitterMode = "none", AntiAimJitterRange = 8, AntiAimJitterRate = 6, AntiAimSendRate = 45, AntiAimMoveSpeed = 100, AntiAimMagicSpeed = 100000, AntiAimMagicPitch = 180, AntiAimMagicCircle = true, AntiAimMagicCircleRadius = 9.5, AntiAimMagicCircleSpeed = 10000, AntiAimMagicHeight = 0, AntiAimMagicSideways = 0, AntiAimHoldOnShoot = true, AntiAimHoldTime = 0.15, AntiAimReEnableDelay = 0.3, PosSpoofEnabled = true, FakeLagEnabled = false, FakeLagMode = "delay", FakeLagDelay = 0.35, FakeLagJitterRange = 18, FakeLagJitterRate = 10, FakeLagChaosDur = 0.25, FakeLagChaosPause = 0.15, FakeLagShowStatus = true, SpawnCT = (Vector3.new(426, -95.1827316, -249)), SpawnT = (Vector3.new(556, -102.182732, -27)), }

    penablox.savedPeekCFrame = nil
    penablox.pendingTeleport = false
    penablox.lastTeleport = 0
    penablox.freezeUntil = 0
    penablox.cachedSpawn = nil
  end

  penablox.mapKickGraceEnd = 0
  penablox.resolverData = {}
  penablox.pendingShots = {}

  config = penablox.Config
  val16 = {}
  val17 = 1
  val18 = 0
  val19 = 0
  val20 = os.clock()
  val21 = 0
  val22 = 0
  val23 = 0
  val24 = false

  function helper22(val82)
    val19 = val19 + val82 * 6

    return Vector3.new(
      (math.sin(val19)) * 0.35, (math.cos(val19 * 1.37)) * 0.15, (math.cos(val19)) * 0.35
    )
  end

  function helper23(pos)
    val16[val17] = { t = (os.clock()), pos = pos }
    val17 = val17 % 240 + 1

    if val18 < 240 then
      val18 = val18 + 1
    end

    return
  end

  function helper24(val83)

    local val84 = val83 <= 0 or val18 == 0

    if val84 then
      return nil
    else
      local val85 = (os.clock()) - val83
      local pos2 = nil
      local huge = math.huge

      for j = 1, 240 do
        local element2 = val16[j]

        if element2 and element2.t <= val85 then
          local val86 = val85 - element2.t

          if val86 < huge then
            huge = val86
            pos2 = element2.pos
          end
        end
      end

      return pos2
    end
  end

  function helper25()

    if not config.PosSpoofEnabled then
      return
    else
      local character3 = localPlayer.Character

      if not character3 then
        return
      else
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart2 then
          return
        else
          local val87 = os.clock()
          local val88 = math.min(val87 - val20, 0.033333333333333)
          val20 = val87
          helper23(humanoidRootPart2.Position)
          position2 = nil

          if config.FakeLagEnabled then
            local fakeLagMode = config.FakeLagMode or "delay"

            if fakeLagMode == "delay" then

              position2 = (helper24(config.FakeLagDelay or 0.35)) or humanoidRootPart2.Position
            else
              if fakeLagMode == "jitter" then
                if val87 - val22 >= 1 / (math.max(config.FakeLagJitterRate or 10, 1)) then
                  val22 = val87
                  val21 = val21 + 1
                end

                local fakeLagJitterRange = config.FakeLagJitterRange or 18
                local val89 = val21 % 2 == 0 and 1 or -1
                local val90 = val21 * 1.61803398875

                position2 = humanoidRootPart2.Position + (Vector3.new(
                  (math.cos(val90)) * fakeLagJitterRange * val89, 0, (math.sin(val90)) * fakeLagJitterRange * val89
                ))
              else
                if fakeLagMode == "chaos" then
                  local val91 = val87 - val23

                  if val91
                    >= (val24 and (config.FakeLagChaosDur or 0.25) or config.FakeLagChaosPause
                      or 0.15) then
                    val23 = val87
                    val24 = not val24
                  end

                  if val24 then
                    local assemblyLinearVelocity = humanoidRootPart2.AssemblyLinearVelocity

                    local val92 = Vector3.new(
                      assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z
                    ).Magnitude > 1

                    local unit = val92

                    unit = val92
                      and Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z).Unit

                    local unit2 = unit

                    unit2 = unit
                      or Vector3.new((math.random()) - 0.5, 0, (math.random()) - 0.5).Unit

                    position2 = humanoidRootPart2.Position
                      - unit2 * (config.FakeLagJitterRange or 18)
                  else
                    position2 = humanoidRootPart2.Position
                  end
                else
                  position2 = humanoidRootPart2.Position
                end
              end
            end
          else
            position2 = humanoidRootPart2.Position + (helper22(val88))
          end

          pcall(function()
            localPlayer:SetAttribute("Pos", position2)
            return
          end)

          return
        end
      end
    end
  end

  runService.PostSimulation:Connect(helper25)

  localPlayer.CharacterAdded:Connect(function()
    task.wait(0.05)
    val20 = os.clock()
    helper25()
    return
  end)

  helper25()
  warn("[Penablox] Pos/FakeLag module active (attribute-based)")
  val25 = nil
  aaHandler = nil

  for index2, value2 in ipairs(replicatedFirst:GetChildren()) do
    if value2.Name == "AAHandler" then
      aaHandler = value2
      break
    end
  end

  if not aaHandler then
    local val93 = 0

    while true do
      val93 = 1 + val93

      if not (40 >= val93) then
        break
      end

      aaHandler = replicatedFirst:FindFirstChild("AAHandler")

      if aaHandler then
        break
      else
        task.wait(0.25)
      end
    end
  end

  if aaHandler then
    local success6, val94
    val94, success6 = pcall(function() return require(aaHandler) end)

    if val94 and (type(success6)) == "table" then
      local val95 = {}
      val25 = success6

      for key in pairs(success6) do
        table.insert(val95, tostring(key))
      end

      warn("[AntiAim] AAHandler loaded. Methods: " .. (table.concat(val95, ", ")))
    else
      warn("[AntiAim] AAHandler require failed:", success6)
    end
  else
    warn("[AntiAim] AAHandler not found in ReplicatedFirst")
  end

  magicPenabloxWindow = rayfield:CreateWindow({
    Name = "Magic | Penablox", LoadingTitle = "Penablox Lua", LoadingSubtitle = "by ExE", ConfigurationSaving = { Enabled = false }, KeySystem = false, ToggleKey = Enum.KeyCode.RightControl, })

  local

  combatTab = magicPenabloxWindow:CreateTab("Combat")
  combatTab:CreateSection("Weapon Modifications")

  combatTab:CreateToggle({
    Name = "No Spread", CurrentValue = config.NoSpreadEnabled, Flag = "NoSpreadToggle", Callback = function(value3)
      config.NoSpreadEnabled = value3
      return
    end, })

  local

  combatTab:CreateSection("Knife Spam (packet race)")

  combatTab:CreateToggle({
    Name = "Knife Spam (multi-fire)", CurrentValue = config.KnifeSpamEnabled, Flag = "KnifeSpamToggle", Callback = function(value4)
      config.KnifeSpamEnabled = value4
      warn("[KnifeSpam]", value4 and "ON" or "OFF")
      return
    end, })

  combatTab:CreateSlider({
    Name = "Packets per knife", Range = { 2, 8 }, Increment = 1, Suffix = " sends", CurrentValue = 4, Flag = "KnifeSpamCountSlider", Callback = function(value5)
      config.KnifeSpamCount = tonumber(value5)
      return
    end, })

  combatTab:CreateSlider({
    Name = "Delay between sends", Range = { 1, 10 }, Increment = 1, Suffix = " x0.01s", CurrentValue = 3, Flag = "KnifeSpamDelaySlider", Callback = function(value6)
      config.KnifeSpamDelay = (tonumber(value6)) / 100
      return
    end, })

  local

  local

  combatTab:CreateSection("Knife Bot (auto farm)")

  combatTab:CreateToggle({
    Name = "Knife Bot (auto farm)", CurrentValue = config.KnifeBotEnabled, Flag = "KnifeBotToggle", Callback = function(value7)
      config.KnifeBotEnabled = value7
      warn("[KnifeBot]", value7 and "ON" or "OFF")
      return
    end, })

  combatTab:CreateSlider({
    Name = "Teleport rate", Range = { 5, 60 }, Increment = 1, Suffix = " Hz", CurrentValue = 20, Flag = "KnifeBotRateSlider", Callback = function(value8)
      config.KnifeBotRate = 1 / (math.max((tonumber(value8)) or 20, 1))
      return
    end, })

  combatTab:CreateSlider({
    Name = "Behind offset (0 = on target)", Range = { 0, 8 }, Increment = 1, Suffix = " studs", CurrentValue = 1, Flag = "KnifeBotBehindSlider", Callback = function(value9)
      config.KnifeBotBehindStuds = tonumber(value9)
      return
    end, })

  local

  local

  combatTab:CreateToggle({
    Name = "Predictive teleport (aim ahead)", CurrentValue = config.KnifeBotPredictive, Flag = "KnifeBotPredictiveToggle", Callback = function(value10)
      config.KnifeBotPredictive = value10
      return
    end, })

  combatTab:CreateToggle({
    Name = "Auto-equip M9", CurrentValue = config.KnifeBotAutoEquip, Flag = "KnifeBotAutoEquipToggle", Callback = function(value11)
      config.KnifeBotAutoEquip = value11
      return
    end, })

  local

  local

  combatTab:CreateSection("Defensive Peek")

  combatTab:CreateToggle({
    Name = "Defensive Peek (hold Q)", CurrentValue = config.DefPeekEnabled, Flag = "DefPeekToggle", Callback = function(value12)
      config.DefPeekEnabled = value12

      if value12 then
        warn("[DefPeek] ON")
      else
        penablox.savedPeekCFrame = nil
        warn("[DefPeek] OFF")
      end

      return
    end, })

  combatTab:CreateToggle({
    Name = "DefPeek: reset velocity", CurrentValue = config.DefPeekRestoreVel, Flag = "DefPeekVelToggle", Callback = function(value13)
      config.DefPeekRestoreVel = value13
      return
    end, })

  combatTab:CreateSlider({
    Name = "Freeze after peek (sec)", Range = { 0, 20 }, Increment = 1, Suffix = " x0.1s", CurrentValue = 5, Flag = "DefPeekFreezeSlider", Callback = function(value14)
      config.DefPeekFreezeTime = (tonumber(value14)) / 10
      return
    end, })

  combatTab:CreateToggle({
    Name = "Debug", CurrentValue = config.DefPeekDebug, Flag = "DefPeekDebugToggle", Callback = function(value15)
      config.DefPeekDebug = value15
      return
    end, })

  antiAimTab = magicPenabloxWindow:CreateTab("Anti-Aim")
  antiAimTab:CreateSection("AA")

  antiAimTab:CreateToggle({
    Name = "Enable Anti-Aim", CurrentValue = config.AntiAimActive, Flag = "AntiAimActive", Callback = function(value16)
      config.AntiAimActive = value16
      warn("[AntiAim]", value16 and "ON" or "OFF")
      return
    end, })

  antiAimTab:CreateSection("Head Offset (LR mode)")

  local

  antiAimTab:CreateSlider({
    Name = "Vertical (- down / + up)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 10, Flag = "AntiAimHeightSlider", Callback = function(value17)
      config.AntiAimHeight = tonumber(value17)
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Horizontal (- left / + right)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimSidewaysSlider", Callback = function(value18)
      config.AntiAimSideways = tonumber(value18)
      return
    end, })

  antiAimTab:CreateSection("Mode")

  antiAimTab:CreateDropdown({
    Name = "Mode", Options = { "None", "Left â Right (jitter)", "Magic (spin body)" }, CurrentOption = { "None" }, Flag = "AntiAimJitterDropdown", Callback = function(value19)
      local val96 = value19

      if (type(val96)) == "table" then
        val96 = val96[1]
      end

      if val96 == "None" then
        config.AntiAimJitterMode = "none"
      else
        if val96 == "Left â Right (jitter)" then
          config.AntiAimJitterMode = "lr"
        else
          if val96 == "Magic (spin body)" then
            config.AntiAimJitterMode = "magic"
          end
        end
      end

      warn("[AntiAim] jitter ->", config.AntiAimJitterMode)
      return
    end, })

  antiAimTab:CreateSection("Jitter (Left â Right)")

  antiAimTab:CreateSlider({
    Name = "Amplitude", Range = { 1, 30 }, Increment = 1, Suffix = " studs", CurrentValue = 8, Flag = "AntiAimJitterRangeSlider", Callback = function(value20)
      config.AntiAimJitterRange = tonumber(value20)
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Frequency", Range = { 1, 30 }, Increment = 1, Suffix = " Hz", CurrentValue = 6, Flag = "AntiAimJitterRateSlider", Callback = function(value21)
      config.AntiAimJitterRate = tonumber(value21)
      return
    end, })

  local

  antiAimTab:CreateSection("Magic (spin body)")
  local

  antiAimTab:CreateSlider({
    Name = "Vertical (- down / + up)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimMagicHeightSlider", Callback = function(value22)
      config.AntiAimMagicHeight = tonumber(value22)
      return
    end, })

  local

  antiAimTab:CreateSlider({
    Name = "Horizontal (- left / + right)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimMagicSidewaysSlider", Callback = function(value23)
      config.AntiAimMagicSideways = tonumber(value23)
      return
    end, })

  local

  antiAimTab:CreateSection("Magic â Circle Flight")
  local

  antiAimTab:CreateToggle({
    Name = "Body orbits around center", CurrentValue = config.AntiAimMagicCircle, Flag = "AntiAimMagicCircleToggle", Callback = function(value24)
      config.AntiAimMagicCircle = value24
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Orbit radius", Range = { 1, 30 }, Increment = 1, Suffix = " studs", CurrentValue = 10, Flag = "AntiAimMagicCircleRadiusSlider", Callback = function(value25)
      config.AntiAimMagicCircleRadius = tonumber(value25)
      return
    end, })

  local

  local

  antiAimTab:CreateSection("AC Bypass")
  local

  antiAimTab:CreateToggle({
    Name = "Noclip (standalone, no collision)", CurrentValue = config.NoclipEnabled, Flag = "NoclipToggle", Callback = function(value26)
      config.NoclipEnabled = value26
      warn("[Noclip]", value26 and "ON" or "OFF")
      return
    end, })

  antiAimTab:CreateToggle({
    Name = "Pos Spoof (bypass :3 desync detector)", CurrentValue = config.PosSpoofEnabled, Flag = "PosSpoofToggle", Callback = function(value27)
      config.PosSpoofEnabled = value27
      warn("[PosSpoof]", value27 and "ON" or "OFF")
      return
    end, })

  resolverTab = magicPenabloxWindow:CreateTab("Resolver")
  resolverTab:CreateSection("Unified Resolver (Divine + Tournament)")

  local

  resolverTab:CreateToggle({
    Name = "Enable resolver", CurrentValue = config.ResolverEnabled, Flag = "ResolverToggle", Callback = function(value28)
      config.ResolverEnabled = value28
      warn("[Resolver]", value28 and "ON" or "OFF")
      return
    end, })

  resolverTab:CreateToggle({
    Name = "Tournament adaptive (16-offset elimination)", CurrentValue = config.ResolverAdaptive, Flag = "ResolverAdaptiveToggle", Callback = function(value29)
      config.ResolverAdaptive = value29
      warn("[Resolver] adaptive:", value29)
      return
    end, })

  local

  local

  resolverTab:CreateToggle({
    Name = "Skip teammates", CurrentValue = config.ResolverTeamCheck, Flag = "ResolverTeamCheckToggle", Callback = function(value30)
      config.ResolverTeamCheck = value30
      return
    end, })

  resolverTab:CreateToggle({
    Name = "Show status (console)", CurrentValue = config.ResolverShowStatus, Flag = "ResolverStatusToggle", Callback = function(value31)
      config.ResolverShowStatus = value31
      return
    end, })

  resolverTab:CreateSection("Tuning")

  local

  resolverTab:CreateSlider({
    Name = "Bias angle (JITTER_AA)", Range = { 5, 90 }, Increment = 1, Suffix = " deg", CurrentValue = 25, Flag = "ResolverBiasAngleSlider", Callback = function(value32)
      config.ResolverBiasAngle = tonumber(value32)
      return
    end, })

  local

  resolverTab:CreateToggle({
    Name = "LERP (smooth transition)", CurrentValue = config.ResolverLERP, Flag = "ResolverLERPToggle", Callback = function(value33)
      config.ResolverLERP = value33
      return
    end, })

  local

  resolverTab:CreateSlider({
    Name = "LERP speed", Range = { 5, 100 }, Increment = 5, Suffix = " %", CurrentValue = 35, Flag = "ResolverLERPSpeedSlider", Callback = function(value34)
      config.ResolverLERPSpeed = (tonumber(value34)) / 100
      return
    end, })

  local

  resolverTab:CreateSlider({
    Name = "Manual offset (if tournament off)", Range = { -180, 180 }, Increment = 5, Suffix = " deg", CurrentValue = 0, Flag = "ResolverManualOffsetSlider", Callback = function(value35)
      config.ResolverManualOffset = tonumber(value35)
      return
    end, })

  resolverTab:CreateSection("Force Headshot (:3 hook)")

  resolverTab:CreateToggle({
    Name = "Enable force headshot", CurrentValue = config.ForceHeadshotEnabled, Flag = "ForceHeadshotToggle", Callback = function(value36)
      config.ForceHeadshotEnabled = value36
      warn("[ForceHS]", value36 and "ON" or "OFF")
      return
    end, })

  local

  local

  resolverTab:CreateToggle({
    Name = "Only on actual hit (no phantom)", CurrentValue = not config.ForceHeadshotOnMiss, Flag = "ForceHeadshotOnHitToggle", Callback = function(value37)
      config.ForceHeadshotOnMiss = not value37
      return
    end, })

  resolverTab:CreateToggle({
    Name = "Skip teammates", CurrentValue = config.ForceHeadshotIgnoreTm, Flag = "ForceHeadshotIgnoreTmToggle", Callback = function(value38)
      config.ForceHeadshotIgnoreTm = value38
      return
    end, })

  miscTab = magicPenabloxWindow:CreateTab("Misc")
  miscTab:CreateSection("Movement Modifications")

  miscTab:CreateToggle({
    Name = "Sub-Tick AutoBhop", CurrentValue = config.BhopEnabled, Flag = "BhopToggle", Callback = function(value39)
      config.BhopEnabled = value39
      return
    end, })

  miscTab:CreateSlider({
    Name = "Bhop Target Speed", Range = { 32, 100 }, Increment = 1, Suffix = " studs/s", CurrentValue = config.BhopSpeed, Flag = "BhopSpeedSlider", Callback = function(value40)
      config.BhopSpeed = tonumber(value40)
      return
    end, })

  miscTab:CreateSection("Anti Map Kick")

  local

  local

  miscTab:CreateToggle({
    Name = "Anti Map Kick (auto-respawn)", CurrentValue = config.AntiMapKickEnabled, Flag = "AntiMapKickToggle", Callback = function(value41)
      config.AntiMapKickEnabled = value41
      warn("[AntiMapKick]", value41 and "ON" or "OFF")
      return
    end, })

  miscTab:CreateSlider({
    Name = "Detection Offset (above kill Y)", Range = { 50, 400 }, Increment = 10, Suffix = " studs", CurrentValue = config.AntiMapKickOffset, Flag = "AntiMapKickOffsetSlider", Callback = function(value42)
      config.AntiMapKickOffset = tonumber(value42)
      return
    end, })

  local

  miscTab:CreateSection("Anti-AntiCheat")

  miscTab:CreateToggle({
    Name = "Disable Client AC", CurrentValue = config.DisableAC, Flag = "DisableACToggle", Callback = function(value43)
      config.DisableAC = value43
      return
    end, })

  local

  local

  miscTab:CreateSection("Network / Fake Lag")

  miscTab:CreateToggle({
    Name = "Fake Lag (Pos attribute manipulation)", CurrentValue = config.FakeLagEnabled, Flag = "FakeLagToggle", Callback = function(value44)
      config.FakeLagEnabled = value44
      warn("[FakeLag]", value44 and "ON" or "OFF")
      return
    end, })

  local

  miscTab:CreateDropdown({
    Name = "Mode", Options = { "Delay (lag behind)", "Jitter (shake enemies' view)", "Chaos (spike on/off)" }, CurrentOption = { "Delay (lag behind)" }, Flag = "FakeLagModeDropdown", Callback = function(value45)
      local val97 = value45

      if (type(val97)) == "table" then
        val97 = val97[1]
      end

      if val97 == "Delay (lag behind)" then
        config.FakeLagMode = "delay"
      else
        if val97 == "Jitter (shake enemies' view)" then
          config.FakeLagMode = "jitter"
        else
          if val97 == "Chaos (spike on/off)" then
            config.FakeLagMode = "chaos"
          end
        end
      end

      warn("[FakeLag] mode ->", config.FakeLagMode)
      return
    end, })

  local

  miscTab:CreateSlider({
    Name = "Delay amount (sec)", Range = { 5, 100 }, Increment = 5, Suffix = " x0.01s", CurrentValue = 35, Flag = "FakeLagDelaySlider", Callback = function(value46)
      config.FakeLagDelay = (tonumber(value46)) / 100
      return
    end, })

  miscTab:CreateSlider({
    Name = "Jitter range (studs)", Range = { 5, 40 }, Increment = 1, Suffix = " studs", CurrentValue = 18, Flag = "FakeLagJitterRangeSlider", Callback = function(value47)
      config.FakeLagJitterRange = tonumber(value47)
      return
    end, })

  miscTab:CreateSlider({
    Name = "Jitter update rate", Range = { 2, 30 }, Increment = 1, Suffix = " Hz", CurrentValue = 10, Flag = "FakeLagJitterRateSlider", Callback = function(value48)
      config.FakeLagJitterRate = tonumber(value48)
      return
    end, })

  do
    miscTab:CreateSlider({
      Name = "Chaos: spike duration", Range = { 5, 100 }, Increment = 5, Suffix = " x0.01s", CurrentValue = 25, Flag = "FakeLagChaosDurSlider", Callback = function(value49)
        config.FakeLagChaosDur = (tonumber(value49)) / 100
        return
      end, })

    local

    function helper2(...)
      if config.DefPeekDebug then
        warn("[DefPeek]", ...)
      end

      return
    end

    miscTab:CreateSlider({
      Name = "Chaos: pause between spikes", Range = { 5, 100 }, Increment = 5, Suffix = " x0.01s", CurrentValue = 15, Flag = "FakeLagChaosPauseSlider", Callback = function(value50)
        config.FakeLagChaosPause = (tonumber(value50)) / 100
        return
      end, })

    function helper26()
      return (tick()) < penablox.freezeUntil
    end

    local

    val26 = 0

    function helper3()
      if (tick()) - val26 > 15 then
        val27()
      end

      return
    end
  end

  do
    val27 = function()
      val26 = tick()
      return
    end

    val27()

    val28 = false

    local success7 = pcall(function()
      physicsService:RegisterCollisionGroup("MagicAANoClip")
      return
    end)

    pcall(function()
      physicsService:CollisionGroupSetCollidable("MagicAANoClip", "MagicAANoClip", false)
      return
    end)

    val28 = success7
    warn("[Noclip] CollisionGroup registered:", tostring(success7))

    function helper27(val98, val99)
      local parent3 = val98.Parent

      while true do

        if parent3 and parent3 ~= val99 then
          local accessory = parent3:IsA("Accessory")

          if accessory or parent3:IsA("Tool") then
            return true
          else
            parent3 = parent3.Parent
          end
        else
          break
        end
      end

      return false
    end

    local
  end

  do

    function helper4(val100)

      local val101 = not val100 or val30[val100]

      if val101 then
        return
      else
        val30[val100] = true

        val100.DescendantAdded:Connect(function(descendant)
          if not config.NoclipEnabled then
            return
          else
            if (descendant:IsA("BasePart")) then
              val29(descendant, val100)
            end

            return
          end
        end)

        return
      end
    end

    val29 = function(p9, p10)
      if not (p9:IsA("BasePart")) then
        return
      else
        if (helper27(p9, p10)) then
          return
        else
          pcall(function()
            p9.CanCollide = false

            if val28 then
              p9.CollisionGroup = "MagicAANoClip"
            end

            return
          end)

          return
        end
      end
    end

    function iterate(val102)
      if not val102 then
        return
      else
        for index3, value51 in ipairs(val102:GetDescendants()) do
          local element3 = value51

          if (element3:IsA("BasePart")) then
            pcall(function()
              element3.CollisionGroup = "Default"
              return
            end)
          end
        end

        return
      end
    end

    function iterate6(val103)

      if not val103 then
        return
      else
        for index4, value52 in ipairs(val103:GetDescendants()) do
          val29(value52, val103)
        end

        humanoid2 = val103:FindFirstChildOfClass("Humanoid")

        if humanoid2 and humanoid2.RootPart then
          pcall(function()
            humanoid2.RootPart.CanCollide = false

            if val28 then
              humanoid2.RootPart.CollisionGroup = "MagicAANoClip"
            end

            return
          end)
        end

        return
      end
    end

    val30 = {}

    runService.PreSimulation:Connect(function()
      if not config.NoclipEnabled then
        return
      else
        local character4 = localPlayer.Character

        if not character4 then
          return
        else
          helper4(character4)
          iterate6(character4)
          return
        end
      end
    end)
  end

  task.spawn(function()
    local noclipEnabled = config.NoclipEnabled

    while (task.wait(0.1)) do

      if noclipEnabled and not config.NoclipEnabled then
        iterate(localPlayer.Character)
      end

      noclipEnabled = config.NoclipEnabled
    end

    return
  end)

  localPlayer.CharacterAdded:Connect(function(character5)
    val30[character5] = nil
    task.wait(0.05)
    helper4(character5)

    if config.NoclipEnabled then
      iterate6(character5)
    end

    return
  end)

  if localPlayer.Character then
    helper4(localPlayer.Character)
  end

  warn("[Noclip] module loaded (standalone)")
  local

  local

  local

  val31 = false
  val32 = false
  val33 = 0
  val34 = nil
  val35 = 1
  val36 = 0
  local

  val37 = 0
  val38 = 0
  val39 = os.clock()

  function safeCall2(val104)
    if not val25 then
      return
    else
      pcall(function()
        local val105 = val104 or {}
        val25:SendMotorOverrides(val105, nil)
        return
      end)

      return
    end
  end

  val40 = 0

  do
    val41 = 0

    function iterate2()
      local object = val42()

      if not object then
        return nil
      else
        local val106 = {}

        for index5, value53 in ipairs(object:GetDescendants()) do

          if (value53:IsA("Motor6D")) and value53.Name ~= "" then
            val106[value53.Name] = value53.C0
          end
        end

        return val106
      end
    end

    val42 = function() return localPlayer.Character end

    penablox.aaController = {
      hold = function()
        if not val31 then
          return
        else
          val32 = true
          return
        end
      end, release = function()
        if not val31 then
          return
        else
          val32 = false
          return
        end
      end, isActive = function() return val31 end, isHeld = function() return val32 end, }

    runService.PreSimulation:Connect(function()

      if not val25 then
        return
      else
        local val107 = os.clock()
        local val108 = math.min(val107 - val39, 0.033333333333333)
        val39 = val107
        local antiAimJitterMode = config.AntiAimJitterMode or "none"

        if antiAimJitterMode == "lr" then
          if val107 - val36 >= 1 / (math.max(config.AntiAimJitterRate or 6, 0.1)) then
            val36 = val107
            val35 = -val35
          end
        end

        if antiAimJitterMode == "magic" and config.AntiAimActive then
          val40 = (val40 + (config.AntiAimMagicSpeed or 100000) * val108) % 360
          val41 = (val41 + (config.AntiAimMagicCircleSpeed or 10000) * val108) % 360
        end

        if not config.AntiAimActive then
          if val31 then
            val31 = false
            val32 = false
            val37 = 0
            val38 = 0
            val40 = 0
            val41 = 0
          end

          return
        else
          if not val31 then
            val31 = true
            val32 = false
            val37 = 0
            val38 = 0
            val39 = val107
            val34 = iterate2()
            warn("[AntiAim] entered")
          end

          if val32 then
            return
          else
            if val107 - val33 < 1 / (math.max(config.AntiAimSendRate or 45, 1)) then
              return
            else
              val33 = val107
              local object2 = val42()

              local humanoidRootPart3 = object2
              humanoidRootPart3 = object2 and object2:FindFirstChild("HumanoidRootPart")

              if not humanoidRootPart3 then
                return
              else
                local val109 = {}

                if val34 then
                  for key2, value54 in pairs(val34) do
                    val109[key2] = value54
                  end
                end

                if antiAimJitterMode == "magic" then
                  local val110 = math.rad(config.AntiAimMagicPitch or 180)
                  local val111 = math.rad(val40)
                  local antiAimMagicCircleRadius = 0

                  if config.AntiAimMagicCircle then
                    antiAimMagicCircleRadius = config.AntiAimMagicCircleRadius or 9.5
                  end

                  local val112 = math.rad(val41)

                  local vectorToObjectSpace = humanoidRootPart3.CFrame:VectorToObjectSpace((Vector3.new(
                    (math.cos(val112)) * antiAimMagicCircleRadius, 0, (math.sin(val112)) * antiAimMagicCircleRadius
                  )) + (Vector3.new(
                    0, config.AntiAimMagicHeight or 0, 0
                  )) + humanoidRootPart3.CFrame.RightVector * (config.AntiAimMagicSideways or 0))

                  local rootJoint = val34 and val34.RootJoint

                  local cframe = rootJoint
                  cframe = rootJoint or CFrame.new()

                  val109.RootJoint = (CFrame.new(vectorToObjectSpace))
                    * (CFrame.Angles(0, val111, 0)) * (CFrame.Angles(val110, 0, 0)) * cframe

                  safeCall2(val109)
                  return
                else
                  local antiAimSideways = config.AntiAimSideways or 0
                  local antiAimHeight = config.AntiAimHeight or 0
                  local antiAimJitterRange = config.AntiAimJitterRange or 8

                  if antiAimJitterMode == "lr" then
                    antiAimSideways = antiAimSideways + val35 * antiAimJitterRange
                  end

                  local antiAimMoveSpeed = config.AntiAimMoveSpeed or 100

                  if antiAimMoveSpeed >= 100 or val108 <= 0 then
                    val37 = antiAimSideways
                    val38 = antiAimHeight
                  else
                    local val113 = 1 - (math.exp(-(antiAimMoveSpeed / 100 * 300) * val108))
                    val37 = val37 + (antiAimSideways - val37) * val113
                    val38 = val38 + (antiAimHeight - val38) * val113
                  end

                  local cframe2 = CFrame.new(val37, 1 + val38, 0)

                  local neck = val34 and val34.Neck

                  val109.Neck = cframe2 * (neck or CFrame.new())
                  safeCall2(val109)
                  return
                end
              end
            end
          end
        end
      end
    end)

    localPlayer.CharacterAdded:Connect(function()
      val31 = false
      val32 = false
      val34 = nil
      val35 = 1
      val36 = 0
      val37 = 0
      val38 = 0
      val40 = 0
      val41 = 0
      val39 = os.clock()
      return
    end)
  end

  do
    warn("[AntiAim] module loaded")
    val43 = { 0, 30, -30, 60, -60, 90, -90, 120, -120, 150, -150, 180, 15, -15, 45, -45 }

    function helper5(val114)
      local humanoidRootPart4 = val114:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart4 then
        return nil
      else
        local lookVector = humanoidRootPart4.CFrame.LookVector
        return math.atan2(lookVector.X, lookVector.Z)
      end
    end

    function helper6()
      local val115 = {}

      for k = 1, #val43 do
        val115[k] = val43[k]
      end

      return val115
    end

    function helper28(val116)
      if val116 == localPlayer then
        return false
      else
        if not config.ResolverTeamCheck then
          return true
        else
          local team = localPlayer:GetAttribute("Team")
          local val117 = not team
          local team2 = val116:GetAttribute("Team")

          if val117 or not team2 then
            return true
          else
            return team ~= team2
          end
        end
      end
    end

    function helper7(val118)
      local bodyYaw = val118:FindFirstChild("BodyYaw")

      if bodyYaw and bodyYaw:IsA("NumberValue") then
        return (math.rad((tonumber(bodyYaw.Value)) or 0)), true
      else
        return nil, false
      end
    end

    local

    function helper8(val119, val120, val121)
      return val119 + (val44(val120 - val119)) * val121
    end

    val44 = function(p20) return math.atan2(math.sin(p20), math.cos(p20)) end

    function helper29(val122, val123)
      return math.abs(val44(val122 - val123))
    end
  end

  do
    local

    function helper9(val124)
      local yawSamples = val124.yawSamples

      if #yawSamples < 12 then
        return "LEGIT"
      else
        local val125 = 0
        local val126 = 0
        local val127 = #yawSamples
        local val128 = 1

        while true do
          val128 = 1 + val128

          if not (val127 >= val128) then
            break
          end

          local val129 = val128
          val125 = val125 + (helper29(yawSamples[val129], yawSamples[val129 - 1]))

          if (math.sign(math.sin(yawSamples[val129])))
            ~= (math.sign(math.sin(yawSamples[val129 - 1]))) then
            val126 = val126 + 1
          end
        end

        local val130 = val125 / (#yawSamples - 1)

        if val130 < (math.rad(4)) then
          return "LEGIT"
        else

          if val130 < (math.rad(18)) and val126 < 3 then
            return "STATIC_AA"
          else
            return "JITTER_AA"
          end
        end
      end
    end

    local

    function helper10(val131)
      local val132 = penablox.resolverData[val131]

      if not val132 then
        val132 = val45()
        penablox.resolverData[val131] = val132
      end

      return val132
    end

    val45 = function()
      local val133 = helper6()

      return {
        pool = val133, idx = 1, current = val133[1], locked = nil, misses = 0, hits = 0, lastShot = 0, yawSamples = {}, modeCache = "LEGIT", resolvedDelta = nil, lastBaseYaw = 0, lastMissed = false, }
    end

    function iterate3(val134)

      if (typeof(val134)) ~= "Vector3" then
        return nil
      else
        local val135 = 6
        local val136 = nil

        for index6, value55 in ipairs(players:GetPlayers()) do

          if (helper28(value55)) and value55.Character then

            local torso = value55.Character:FindFirstChild("Torso")
            local val137 = torso

            if not torso then

              local upperTorso = value55.Character:FindFirstChild("UpperTorso")
              local humanoidRootPart5 = upperTorso

              if not upperTorso then

                humanoidRootPart5 = value55.Character:FindFirstChild("HumanoidRootPart")
              end

              val137 = humanoidRootPart5
            end

            if val137 then
              local magnitude = (val137.Position - val134).Magnitude

              if magnitude < val135 then
                val135 = magnitude
                val136 = value55
              end
            end
          end
        end

        return val136
      end
    end
  end

  do
    function helper30(val138)
      if #val138.pool <= 1 then
        val138.pool = helper6()
        val138.idx = 1
        val138.current = val138.pool[1]

        return
      else
        table.remove(val138.pool, val138.idx)

        if val138.idx > #val138.pool then
          val138.idx = 1
        end

        val138.current = val138.pool[val138.idx]
        return
      end
    end

    function iterate4()
      local val139 = {}

      for index7, value56 in ipairs(players:GetPlayers()) do

        if (helper28(value56)) and value56.Character then

          local humanoid3 = value56.Character:FindFirstChildOfClass("Humanoid")

          if humanoid3 then
            val139[value56] = humanoid3.Health
          end
        end
      end

      return val139
    end

    function helper11(val140, val141)
      local element4 = helper10(val140)
      local val142, v299 = helper7(val141)

      local val143 = val142 or (helper5(val141)) or 0
      element4.lastBaseYaw = val143
      val46(element4, val143)
      local val144 = helper9(element4)
      element4.modeCache = val144
      local locked

      if config.ResolverAdaptive then

        locked = element4.locked or element4.current or 0
      else
        locked = config.ResolverManualOffset or 0
      end

      local val145 = math.rad(locked)

      if val144 == "JITTER_AA" then
        local val146 = math.sign(math.sin(val143))

        if val146 == 0 then
          val146 = 1
        end

        if element4.lastMissed then
          val146 = -val146
          element4.lastMissed = false
        end

        val145 = val145 + val146 * (math.rad(config.ResolverBiasAngle or 25))
      end

      if config.ResolverLERP then

        element4.resolvedDelta = helper8(
          element4.resolvedDelta or val145, val145, config.ResolverLERPSpeed or 0.35
        )

        val145 = element4.resolvedDelta
      end

      return val145, val144
    end

    val46 = function(p29, p30) return end
  end

  do
    function penablox.resolverOnShot(p31, p32)
      if not config.ResolverEnabled then
        return
      else
        local val147 = iterate3(p32)

        if not val147 then
          return
        else
          helper10(val147).lastShot = os.clock()

          table.insert(penablox.pendingShots, {
            target = val147, snapshot = (iterate4()), time = (os.clock()), resolved = false, })

          return
        end
      end
    end

    task.spawn(function()
local val148, val149, val150

      while (task.wait(0.08)) do
        if not config.ResolverEnabled then
          penablox.pendingShots = {}
        else
          local val151 = os.clock()
          local val152 = #penablox.pendingShots - -1

          while true do
            val152 = -1 + val152

            if not (val152 >= 1 or false) then
              break
            end

            local val153 = val152
            local element5 = penablox.pendingShots[val153]

            if not element5.resolved and val151 - element5.time >= 0.3 then
              element5.resolved = true
              local target = element5.target

              if not target or not target.Parent then
                table.remove(penablox.pendingShots, val153)
              else
                character6 = target.Character
                val148 = character6

                humanoid4 = character6 and character6:FindFirstChildOfClass("Humanoid")
                val149 = humanoid4

                health = humanoid4 and humanoid4.Health or 0
                val150 = helper10(target)

                if health < (element5.snapshot[target] or 0) then
                  val150.hits = val150.hits + 1
                  val150.misses = 0
                  val150.locked = val150.current

                  if config.ResolverShowStatus then
                    warn(string.format(
                      "[Resolver] HIT %s | locked=%dÂ° | mode=%s", target.Name, val150.locked or 0, val150.modeCache
                    ))
                  end
                else
                  val150.misses = val150.misses + 1
                  val150.lastMissed = true

                  if config.ResolverAdaptive then
                    val150.locked = nil
                    helper30(val150)
                  end

                  if config.ResolverShowStatus then
                    warn(string.format(
                      "[Resolver] MISS %s | next=%dÂ° | pool=%d | mode=%s", target.Name, val150.current or 0, #val150.pool, val150.modeCache
                    ))
                  end
                end

                table.remove(penablox.pendingShots, val153)
              end
            end
          end

          while #penablox.pendingShots > 32 do
            table.remove(penablox.pendingShots, 1)
          end
        end
      end

      return
    end)

    task.spawn(function()
      while (task.wait(1)) do
        local val154 = os.clock()

        for key3, value57 in pairs(penablox.resolverData) do
          if val154 - (value57.lastShot or 0) > 8 then
            value57.pool = helper6()
            value57.idx = 1
            value57.current = value57.pool[1]
            value57.locked = nil
            value57.misses = 0
            value57.lastMissed = false
          end
        end
      end

      return
    end)

    players.PlayerRemoving:Connect(function(player)
      penablox.resolverData[player] = nil
      return
    end)

    players.PlayerAdded:Connect(function(player2)

      player2.CharacterAdded:Connect(function()
        penablox.resolverData[player2] = nil
        return
      end)

      return
    end)
  end

  do
    for index8, value58 in ipairs(players:GetPlayers()) do
      local element6 = value58

      if element6 ~= localPlayer then

        element6.CharacterAdded:Connect(function()
          penablox.resolverData[element6] = nil
          return
        end)
      end
    end

    function helper31(val155)
      local resolverBaseC0 = val155:GetAttribute("ResolverBaseC0")

      if not resolverBaseC0 then
        resolverBaseC0 = val155.C0
        val155:SetAttribute("ResolverBaseC0", resolverBaseC0)
      end

      return resolverBaseC0
    end

    function helper15(val156, val157)
      local humanoidRootPart6 = val156:FindFirstChild("HumanoidRootPart")
      local rootJoint2

      if not humanoidRootPart6 then
        return
      else
        rootJoint2 = humanoidRootPart6:FindFirstChild("RootJoint")
        local val158 = not rootJoint2
        local val159 = val158

        if not val158 then
          val159 = not (rootJoint2:IsA("Motor6D"))
        end

        if val159 then
          return
        else
          pcall(function()
            rootJoint2.C0 = (helper31(rootJoint2)) * (CFrame.Angles(0, val44(val157), 0))
            return
          end)

          return
        end
      end
    end

    local

    local

    val47 = function(p36)
      local humanoidRootPart7 = p36:FindFirstChild("HumanoidRootPart")
      local rootJoint3, resolverBaseC02

      if not humanoidRootPart7 then
        return
      else
        rootJoint3 = humanoidRootPart7:FindFirstChild("RootJoint")
        local motor6D = rootJoint3

        if rootJoint3 then
          motor6D = rootJoint3:IsA("Motor6D")
        end

        if motor6D then
          resolverBaseC02 = rootJoint3:GetAttribute("ResolverBaseC0")

          if resolverBaseC02 then
            pcall(function()
              rootJoint3.C0 = resolverBaseC02
              return
            end)
          end
        end

        return
      end
    end

    runService.Heartbeat:Connect(function()

      if not config.ResolverEnabled then
        for index9, value59 in ipairs(players:GetPlayers()) do

          if value59 ~= localPlayer and value59.Character then
            val47(value59.Character)
          end
        end

        return
      else
        for index10, value60 in ipairs(players:GetPlayers()) do
          local element7 = value60

          if (helper28(element7)) and element7.Character then

            local humanoid5 = element7.Character:FindFirstChildOfClass("Humanoid")

            if humanoid5 and humanoid5.Health > 0 then
              pcall(function()
                helper15(element7.Character, (helper11(element7, element7.Character)))
                return
              end)
            end
          end
        end

        return
      end
    end)
  end

  do
    function helper12(val160)

      if not config.ForceHeadshotIgnoreTm then
        return true
      else
        local getPlayerFromCharacter = players:GetPlayerFromCharacter(val160)

        if not getPlayerFromCharacter then
          return true
        else
          local team3 = localPlayer:GetAttribute("Team")
          local val161 = not team3
          local team4 = getPlayerFromCharacter:GetAttribute("Team")

          if val161 or not team4 then
            return true
          else
            return team3 ~= team4
          end
        end
      end
    end

    local

    warn("[Resolver] Unified loaded (Divine OLD fixed + Tournament 16)")
    val48 = nil
    checkRaycastAgainstRealBody = nil
    getBodyPartName = nil
    val49 = false

    function helper13()
      if val49 then
        return true
      else
        local element8 = val50()

        if not element8 then
          warn("[ForceHS] :3 shared table not found")
          return false
        else
          checkRaycastAgainstRealBody = element8.checkRaycastAgainstRealBody
          local

          getBodyPartName = element8.getBodyPartName

          element8.checkRaycastAgainstRealBody = function(p38, p39, p40, p41)
            local val162, val163, val164 = checkRaycastAgainstRealBody(p38, p39, p40, p41)

            if not config.ForceHeadshotEnabled then
              return val162, val163, val164
            else
              if not val164 then
                return val162, val163, val164
              else
                if config.ForceHeadshotOnMiss == false then

                  if val162 == nil or val163 == nil then
                    return val162, val163, val164
                  else
                    if not (helper12(p38)) then
                      return val162, val163, val164
                    else
                      return "Head", val163, true
                    end
                  end
                end
              end
            end
          end

          if (type(getBodyPartName)) == "function" then
            function element8.getBodyPartName(p42)
              local forceHeadshotEnabled = config.ForceHeadshotEnabled
              local parent4 = forceHeadshotEnabled

              if forceHeadshotEnabled then

                parent4 = p42 and p42.Parent
              end

              if parent4 then
                local model = p42:FindFirstAncestorOfClass("Model")

                if model then
                  local getPlayerFromCharacter2 = players:GetPlayerFromCharacter(model)

                  if getPlayerFromCharacter2 and helper12(model) then
                    if ({
                      Head = true, Torso = true, ["Left Arm"] = true, ["Right Arm"] = true, ["Left Leg"] = true, ["Right Leg"] = true, })[p42.Name] then
                      return "Head"
                    else
                      return getBodyPartName(p42)
                    end
                  else
                    return getBodyPartName(p42)
                  end
                end
              end
            end
          end

          val49 = true
          warn("[ForceHS] Hook installed on :3 shared table")
          return true
        end
      end
    end

    val50 = function()

      if val48 then
        return val48
      else
        if (type(getgc)) ~= "function" then
          return nil
        else
          local success8, val165
          val165, success8 = pcall(getgc, true)

          if not val165 or (type(success8)) ~= "table" then
            val165, success8 = pcall(getgc)
          end

          if not val165 or (type(success8)) ~= "table" then
            return nil
          else
            for index11, value61 in ipairs(success8) do
              if (type(value61)) == "table" then
                local val166 = rawget(value61, "checkRaycastAgainstRealBody")
                local val167 = rawget(value61, "getTargetPosition")
                local val168 = rawget(value61, "getCachedRaycastParams")
                local val169 = (type(val166)) == "function"
                local val170 = val169

                if val169 then

                  val170 = (type(val167)) == "function" and (type(val168)) == "function"
                end

                if val170 then
                  val48 = value61
                  return value61
                end
              end
            end

            return nil
          end
        end
      end
    end
  end

  do
    task.spawn(function()
      local count2 = 0

      while true do
        count2 = 1 + count2

        if not (20 >= count2) then
          break
        end

        if (helper13()) then
          return
        else
          task.wait(0.5)
        end
      end

      return
    end)

    task.spawn(function()

      while (task.wait(3)) do

        if config.ForceHeadshotEnabled and not val49 then
          helper13()
        end
      end

      return
    end)

    local

    function helper14()
      local character7 = localPlayer.Character

      return character7 and character7:FindFirstChild("HumanoidRootPart") or nil
    end

    localPlayer.CharacterAdded:Connect(function()

      if val49 and val48 then
        if (type(val48.checkRaycastAgainstRealBody)) ~= "function" then
          val49 = false
          val48 = nil
        end
      end

      return
    end)

    warn("[ForceHS] module loaded")
  end

  userInputService.InputBegan:Connect(function(input)
    if input.KeyCode ~= config.DefPeekKey then
      return
    else
      if not config.DefPeekEnabled then
        return
      else
        local element9 = helper14()

        if element9 then
          penablox.savedPeekCFrame = element9.CFrame
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
        local val171 = tick()

        if val171 - penablox.lastTeleport < 0.05 then
          return
        else
          penablox.lastTeleport = val171

          pcall(function()
            local parent = helper14()
            local parent5 = parent and parent.Parent

            if parent5 then
              parent.CFrame = penablox.savedPeekCFrame

              if config.DefPeekRestoreVel then
                parent.AssemblyLinearVelocity = Vector3.zero
                parent.AssemblyAngularVelocity = Vector3.zero
              end

              local val172 = config.DefPeekFreezeTime > 0 and (tick()) + config.DefPeekFreezeTime
              penablox.freezeUntil = val172 or 0
            end

            return
          end)

          return
        end
      end
    end
  end)

  runService.PreSimulation:Connect(function()

    if not (helper26()) then
      return
    else
      if not penablox.savedPeekCFrame then
        return
      else
        local parent2 = helper14()

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

  function helper32(val173)
    local val174 = not val173

    if val174 or not (val173:IsA("Tool")) then
      return
    else
      if val173.Name ~= "SSG-08" then
        return
      else

        val173.ChildAdded:Connect(function(child)
          local val175 = child.Name == "Shoot"

          if val175 and child:IsA("Configuration") then

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

  do
    local function helper36(val176)

      if not val176 then
        return
      else
        local ssg08 = val176:FindFirstChild("SSG-08")

        if ssg08 then
          helper32(ssg08)
        end

        val176.ChildAdded:Connect(function(child2)
          if (child2:IsA("Tool")) then
            helper32(child2)
          end

          return
        end)

        return
      end
    end

    if localPlayer.Character then
      helper36(localPlayer.Character)
    end

    function helper16(val177)
      local character8 = localPlayer.Character

      if not character8 then
        return
      else
        humanoidRootPart8 = character8:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart8 then
          return
        else
          local character9 = val177.Character

          if not character9 or not character9.Parent then
            return
          else
            local torso2 = character9:FindFirstChild("Torso")

            local upperTorso2 = torso2 or character9:FindFirstChild("UpperTorso")

            if not upperTorso2 then
              return
            else
              local val178 = math.max(config.KnifeBotBehindStuds or 1, 0.6)
              local position3 = upperTorso2.Position

              if config.KnifeBotPredictive then
                local humanoidRootPart9 = character9:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart9 then
                  local assemblyLinearVelocity2 = humanoidRootPart9.AssemblyLinearVelocity

                  if Vector3.new(assemblyLinearVelocity2.X, 0, assemblyLinearVelocity2.Z).Magnitude
                    > 1 then
                    position3 = upperTorso2.Position + (Vector3.new(
                      assemblyLinearVelocity2.X, 0, assemblyLinearVelocity2.Z
                    )) * ((config.KnifeBotRate or 0.05) * 0.5)
                  end
                end
              end

              local cframe4 = upperTorso2.CFrame
              local position4 = (cframe4 * (CFrame.new(0, 0, val178))).Position

              local vector = Vector3.new(
                position3.X + (position4.X - upperTorso2.Position.X), position3.Y + (position4.Y - upperTorso2.Position.Y), position3.Z + (position4.Z - upperTorso2.Position.Z)
              )

              cframe3 = CFrame.new(vector, vector + cframe4.LookVector)

              pcall(function()
                humanoidRootPart8.CFrame = cframe3
                humanoidRootPart8.AssemblyLinearVelocity = Vector3.zero
                humanoidRootPart8.AssemblyAngularVelocity = Vector3.zero

                return
              end)

              return
            end
          end
        end
      end
    end

    localPlayer.CharacterAdded:Connect(helper36)
    local

    val51 = { CT = config.SpawnCT, T = config.SpawnT }

    function helper17()
      local object3 = val52()

      if not object3 then
        return nil
      else
        local lower3 = object3:lower()
        local val179 = lower3 == "ct"
        local val180 = val179

        if not val179 then
          local find = lower3:find("counter", 1, true)
          local find2 = find

          if not find then
            local find3 = lower3:find("blue", 1, true)

            find2 = find3 or lower3:find("defend", 1, true)
          end

          val180 = find2
        end

        if val180 then
          return val51.CT
        else
          local val181 = lower3 == "t"
          local val182 = val181

          if not val181 then
            local find4 = lower3:find("terror", 1, true)
            local find5 = find4

            if not find4 then
              local find6 = lower3:find("red", 1, true)

              find5 = find6 or lower3:find("attack", 1, true)
            end

            val182 = find5
          end

          if val182 then
            return val51.T
          else
            return nil
          end
        end
      end
    end

    val52 = function()
      local team5 = localPlayer.Team
      local name = team5 and team5.Name

      if name then
        return team5.Name
      else
        local team6 = localPlayer:GetAttribute("Team")

        if (type(team6)) == "string" then
          return team6
        else

          if team5 and (typeof(team5.TeamColor)) == "BrickColor" then
            local color = team5.TeamColor.Color

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
  end

  do

    localPlayer.CharacterAdded:Connect(function()
      penablox.cachedSpawn = nil
      return
    end)

    function helper18(val183)
      local team7 = localPlayer:GetAttribute("Team")
      local val184 = not team7
      local team8 = val183:GetAttribute("Team")

      if val184 or not team8 then
        return true
      else
        return team7 ~= team8
      end
    end

    localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
      penablox.cachedSpawn = nil
      return
    end)

    runService.Stepped:Connect(function()
local val185

      if not config.AntiMapKickEnabled then
        return
      else
        if (tick()) < penablox.mapKickGraceEnd then
          return
        else
          local character10 = localPlayer.Character

          if not character10 or not character10.Parent then
            return
          else
            local humanoid6 = character10:FindFirstChildOfClass("Humanoid")

            if not humanoid6 or humanoid6.Health <= 0 then
              return
            else
              if (humanoid6:GetState()) == Enum.HumanoidStateType.Dead then
                return
              else
                humanoidRootPart10 = character10:FindFirstChild("HumanoidRootPart")

                if not humanoidRootPart10 then
                  return
                else
                  if humanoidRootPart10.Position.Y
                    < (workspace.FallenPartsDestroyHeight or -500) + config.AntiMapKickOffset then
                    val185 = helper17()

                    if val185 then
                      pcall(function()
                        humanoidRootPart10.CFrame = CFrame.new(val185 + (Vector3.new(0, 5, 0)))
                        humanoidRootPart10.AssemblyLinearVelocity = Vector3.zero
                        humanoidRootPart10.AssemblyAngularVelocity = Vector3.zero

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

    warn("[AntiMapKick] active")

    function helper19(val186)
      local character11 = localPlayer.Character

      local val187 = not character11 or not val186

      if val187 then
        return
      else
        humanoid7 = character11:FindFirstChildOfClass("Humanoid")

        if not humanoid7 then
          return
        else
          local backpack = localPlayer:FindFirstChild("Backpack")
          local val188 = backpack

          if backpack then

            val188 = val186.Parent ~= backpack and val186.Parent ~= character11
          end

          if val188 then
            val186.Parent = backpack
            task.wait()
          end

          pcall(function()
            humanoid7:EquipTool(val186)
            return
          end)

          task.wait()

          if val186.Parent ~= character11 then
            pcall(function()
              val186.Parent = character11
              humanoid7:EquipTool(val186)
              return
            end)
          end

          return
        end
      end
    end

    function iterate5()
      local character12 = localPlayer.Character
      local val189, backpack2, val190, starterGear

      if character12 then
        local m9 = character12:FindFirstChild("M9")

        if m9 and m9:IsA("Tool") then
          return m9
        else
          val189 = localPlayer
          backpack2 = localPlayer:FindFirstChild("Backpack")

          if backpack2 then
            local m92 = backpack2:FindFirstChild("M9")

            if m92 and m92:IsA("Tool") then
              return m92
            else
              val190 = localPlayer
              starterGear = localPlayer:FindFirstChild("StarterGear")

              if starterGear then
                local m93 = starterGear:FindFirstChild("M9")

                if m93 and m93:IsA("Tool") then
                  return m93
                else
                  if character12 then
                    for index12, value62 in ipairs(character12:GetDescendants()) do
                      local val191 = value62.Name == "M9"

                      if val191 and value62:IsA("Tool") then
                        return value62
                      end
                    end
                    return nil
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  do
    val53 = 0

    function helper33()
      local viewmodels = replicatedStorage:FindFirstChild("Viewmodels")

      if not viewmodels then
        return nil
      else
        local m94 = viewmodels:FindFirstChild("M9")

        if not m94 then
          return nil
        else
          local element10 = m94:Clone()
          element10.Name = "M9"
          return element10
        end
      end
    end

    function safeCall5()
      local humanoid8, val192

      if not config.KnifeBotAutoEquip then
        return
      else
        local character13 = localPlayer.Character

        if not character13 then
          return
        else
          humanoid8 = character13:FindFirstChildOfClass("Humanoid")

          if not humanoid8 then
            return
          else
            local m95 = character13:FindFirstChild("M9")

            if m95 and m95:IsA("Tool") then
              return
            else
              val192 = iterate5()

              if val192 then
                if val192.Parent ~= character13 then
                  helper19(val192)
                else
                  pcall(function()
                    humanoid8:EquipTool(val192)
                    return
                  end)
                end

                return
              else
                local val193 = helper33()

                if val193 then
                  helper19(val193)
                  return
                else
                  local val194 = os.clock()

                  if val194 - val53 > 5 then
                    val53 = val194
                    warn("[KnifeBot] M9 not found")
                  end

                  return
                end
              end
            end
          end
        end
      end
    end

    function iterate7()
      local character14 = localPlayer.Character

      if not character14 then
        return nil
      else
        local humanoidRootPart11 = character14:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart11 then
          return nil
        else
          local val195 = nil
          local huge2 = math.huge

          for index13, value63 in ipairs(players:GetPlayers()) do
            local val196 = value63 ~= localPlayer
            local parent6 = val196

            if val196 then

              parent6 = value63.Character and value63.Character.Parent
            end

            if parent6 then
              local character15 = value63.Character
              local humanoid9 = character15:FindFirstChildOfClass("Humanoid")
              local humanoidRootPart12 = character15:FindFirstChild("HumanoidRootPart")
              local torso3 = character15:FindFirstChild("Torso")

              local upperTorso3 = torso3
              upperTorso3 = torso3 or character15:FindFirstChild("UpperTorso")

              local val197 = humanoid9
              local forceField = character15:FindFirstChildOfClass("ForceField")

              if humanoid9 then
                local val198 = humanoid9.Health > 0
                local val199 = val198

                if val198 then
                  local val200 = (humanoid9:GetState()) ~= Enum.HumanoidStateType.Dead
                  local val201 = val200

                  if val200 then
                    local val202 = humanoidRootPart12

                    if humanoidRootPart12 then
                      local val203 = upperTorso3

                      if upperTorso3 then
                        local val204 = not forceField

                        val203 = val204 and helper18(value63)
                      end

                      val202 = val203
                    end

                    val201 = val202
                  end

                  val199 = val201
                end

                val197 = val199
              end

              if val197 then
                local magnitude2 = (humanoidRootPart12.Position - humanoidRootPart11.Position).Magnitude

                if magnitude2 < huge2 then
                  val195 = value63
                  huge2 = magnitude2
                end
              end
            end
          end

          return val195
        end
      end
    end
  end

  do
    task.spawn(function()

      while true do
        task.wait(config.KnifeBotRate or 0.05)

        if not config.KnifeBotEnabled then
        else
          local character16 = localPlayer.Character

          if not character16 then
          else
            local humanoid10 = character16:FindFirstChildOfClass("Humanoid")

            if not humanoid10 or humanoid10.Health <= 0 then
            else
              if (humanoid10:GetState()) == Enum.HumanoidStateType.Dead then
              else
                safeCall5()
                local val205 = iterate7()

                if val205 then
                  helper16(val205)
                end
              end
            end
          end
        end
      end
    end)

    warn("[KnifeBot] loaded")

    task.spawn(function()
      while (task.wait(1)) do
        helper3()
      end

      return
    end)

    localPlayer.CharacterAdded:Connect(function()
      task.wait(1)
      val27()
      return
    end)

    runService.PreSimulation:Connect(function()

      if not config.BhopEnabled then
        return
      else
        if (helper26()) then
          return
        else
          local val206 = not val15
          local val207 = val206

          if not val206 then
            local val208 = not humanoidRootPart
            local val209 = val208

            if not val208 then

              val209 = not humanoid or humanoid.Health <= 0
            end

            val207 = val209
          end

          if val207 then
            return
          else

            local getState = humanoid:GetState()

            if (userInputService:IsKeyDown(Enum.KeyCode.Space)) then

              if getState == Enum.HumanoidStateType.Landed
                or humanoid.FloorMaterial ~= Enum.Material.Air then

                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
              end
            end

            local val210 = getState == Enum.HumanoidStateType.Jumping
            local val211 = val210

            if not val210 then

              val211 = getState == Enum.HumanoidStateType.Freefall
                or humanoid.FloorMaterial == Enum.Material.Air
            end

            if val211 then
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

    local replicatedStorage2 = game:GetService("ReplicatedStorage")
    local mainEvent = replicatedStorage2:FindFirstChild("MainEvent")

    waitForChild = mainEvent or replicatedStorage2:WaitForChild("MainEvent", 10)
  end

  if not waitForChild then
    warn("[Hook] MainEvent not found")
    return
  else
    function helper34(val212)
      local character17 = localPlayer.Character
      local humanoidRootPart13 = character17

      if character17 then

        humanoidRootPart13 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
      end

      local val213 = humanoidRootPart13

      if not val213 then
        return false
      else
        local val214 = 0
        local n = val212.n
        local val215 = 0
        local val216 = 0

        while true do
          val216 = 1 + val216

          if not (n >= val216) then
            break
          end

          local val217 = val212[val216]

          if (typeof(val217)) == "Vector3" then
            val215 = val215 + 1

            if (val217 - val213.Position).Magnitude < 10 then
              val214 = val214 + 1
            end
          end
        end

        return val215 >= 2 and val214 >= 1
      end
    end

    function helper35(val218)

      if val218.n ~= 4 then
        return false
      else
        if (typeof(val218[1])) ~= "string" then
          return false
        else
          if (typeof(val218[2])) ~= "Vector3" then
            return false
          else
            if (typeof(val218[3])) ~= "Vector3" then
              return false
            else
              if (typeof(val218[4])) ~= "string" then
                return false
              else
                local val219 = #val218[4]

                if val219 < 5 or val219 > 40 then
                  return false
                else
                  local character18 = localPlayer.Character
                  local humanoidRootPart14 = character18

                  if character18 then

                    humanoidRootPart14 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                  end

                  local element11 = humanoidRootPart14

                  if element11 and (val218[2] - element11.Position).Magnitude > 30 then
                    return false
                  else
                    return true
                  end
                end
              end
            end
          end
        end
      end
    end

    local element12 = getrawmetatable(game)
    namecall = element12.__namecall
    setreadonly(element12, false)
    local

    val54 = false

    element12.__namecall = newcclosure(function(p50, ...)

      local val220 = (getnamecallmethod()) == "FireServer" and rawequal(p50, waitForChild)
local element13

      if val220 then
        element13 = table.pack(...)

        if config.KnifeSpamEnabled and helper35(element13) then
          namecall(p50, table.unpack(element13, 1, element13.n))
          local knifeSpamDelay = config.KnifeSpamDelay or 0.03

          for m = 2, math.clamp(config.KnifeSpamCount or 4, 2, 8) do
            task.delay(knifeSpamDelay * (m - 1), function()
              pcall(function()
                namecall(p50, table.unpack(element13, 1, element13.n))
                return
              end)

              return
            end)
          end

          return
        else
          if (helper34(element13)) then

            if config.ResolverEnabled and penablox.resolverOnShot then
              pcall(penablox.resolverOnShot, element13, element13[6])
            end

            local val221 = not val54
            local val222 = val221

            if val221 then
              local antiAimHoldOnShoot = config.AntiAimHoldOnShoot
              local val223 = antiAimHoldOnShoot

              if antiAimHoldOnShoot then
                local aaController = penablox.aaController
                local val224 = aaController

                if aaController then
                  local val225 = penablox.aaController.isActive()

                  val224 = val225 and not (penablox.aaController.isHeld())
                end

                val223 = val224
              end

              val222 = val223
            end

            if val222 then
              val54 = true
              penablox.aaController.hold()
              local antiAimHoldTime = config.AntiAimHoldTime or 0.15
              local

              local

              task.delay(antiAimHoldTime, function()
                pcall(function()
                  namecall(waitForChild, table.unpack(element13, 1, element13.n))
                  return
                end)

                return
              end)

              task.delay(antiAimHoldTime + (config.AntiAimReEnableDelay or 0.3), function()
                if penablox.aaController then
                  penablox.aaController.release()
                end

                val54 = false
                return
              end)

              return
            else
              return namecall(p50, ...)
            end
          end
        end
      end
    end)

    setreadonly(element12, true)

    warn("[Penablox] Unified hook loaded")
    warn("[Penablox] Fully loaded")

    return
  end
end
