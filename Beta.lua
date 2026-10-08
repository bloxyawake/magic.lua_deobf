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

local val4, val5 = safeCall()

local function helper()

  local val6 = (type(gethui)) == "function" and gethui()
  local coreGui = val6

  if not val6 then

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

local val7, label, val8 = helper()

local val9 = ({
  Real = 100, Xeno = 60, Solara = 65, Wave = 99, JJSploit = 55, Delta = 100, Potassium = 99, Unknow = 55, ["Not supported"] = 0, })[val4] or 0

label.Text = "Executor: " .. val4
local val10 = val5

if val5 then

  val10 = val5 ~= val4 and val5 ~= "Unknown"
end

if val10 then
  val8.Text = "(raw: " .. val5 .. ")"
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

local helper2, helper3, helper4, iterate, helper5, safeCall2, helper6, helper7, helper8, helper9, iterate2, helper10, helper11, helper12, iterate3, helper13, helper14, helper15, safeCall3, helper16, helper17, helper18, iterate4, helper19, helper20, helper21, val11, val12, safeCall4, safeCall5, helper22, magicKey, frame2, frame3, instance3, instance4, instance5, helper23, val13, val14, waitLoop, userInputService, players, replicatedStorage, physicsService, localPlayer, val15, humanoid, humanoidRootPart, penablox, config, val16, val17, val18, val19, val20, val21, val22, val23, val24, helper24, helper25, helper26, helper27, val25, aaHandler, val26, val27, val28, helper28, safeCall6, iterate5, val29, val30, val31, val32, val33, val34, val35, val36, val37, val38, val39, val40, val41, iterate6, val42, helper29, val43, val44, val45, val46, helper30, val47, checkRaycastAgainstRealBody, getBodyPartName, val48, helper31, helper32, helper33, val49, helper34, helper35, val50, safeCall7, iterate7, waitForChild, helper36, namecall, val51

if val9 == 0 then
  warn("[Magic] Unsupported.")
  return
else
  local rayfield, runService, replicatedFirst, magicPenabloxWindow, combatTab, antiAimTab, resolverTab, miscTab

  do
    warn("[Magic] Detected: " .. val4 .. " (" .. val9 .. "%)")
    val11 = nil
    val12 = 0

    function safeCall4(val52, val53)
      local val54 = val53 or 8
      local val55 = false

      task.spawn(function()
local success3, val56, val57

        if (type(request)) == "function" then
          local success4, val58
          val58, success4 = pcall(function() return request({ Url = val52, Method = "GET" }) end)
          local val59 = val58

          if val58 then
            local val60 = (type(success4)) == "table"
            local val61 = val60

            if val60 then

              local val62 = success4.StatusCode == 200 or success4.StatusCode == 201
              local val63 = val62

              if val62 then

                val63 = (type(success4.Body)) == "string" and #success4.Body > 5
              end

              val61 = val63
            end

            val59 = val61
          end

          if val59 then
            body = success4.Body
            val55 = true
            return
          else
            if (type(http_request)) == "function" then
              local val64, success5
              val64, success5 = pcall(function() return http_request({ Url = val52, Method = "GET" }) end)

              local val65 = val64

              if val64 then
                local val66 = (type(success5)) == "table"
                local val67 = val66

                if val66 then

                  local val68 = success5.StatusCode == 200 or success5.StatusCode == 201
                  local val69 = val68

                  if val68 then

                    val69 = (type(success5.Body)) == "string" and #success5.Body > 5
                  end

                  val67 = val69
                end

                val65 = val67
              end

              if val65 then
                body = success5.Body
                val55 = true
                return
              else
                val56, success3 = pcall(function()

                  return game:HttpGet(val52)
                end)

                val57 = val56

                if val56 then

                  val57 = (type(success3)) == "string" and #success3 > 5
                end

                if val57 then
                  body = success3
                end

                val55 = true
                return
              end
            else
              goto L5091278
            end
          end
        else
          goto L3553768
        end
      end)

      local val70 = tick()

      while true do

        if not val55 and (tick()) - val70 < val54 then
          task.wait(0.05)
        else
          break
        end
      end

      return body
    end

    function safeCall5()

      local val71

      if val11 and (os.clock()) - val12 < 60 then
        return val11
      else
        val71 = safeCall4("https://raw.githubusercontent.com/keys124321/keys/refs/heads/main/key_beta"
          .. "?_=" .. (tostring(os.time())), 8)

        if not val71 then
          return nil
        else
          local val72 = {
            pcall(function()

              local httpService = game:GetService("HttpService")
              return httpService:JSONDecode(val71)
            end), }

          local val73 = val72[2]

          if not val72[1] or (type(val73)) ~= "table" then
            return nil
          else
            val11 = val73
            val12 = os.clock()
            return val73
          end
        end
      end
    end

    function helper22()

      local localPlayer2 = game:GetService("Players").LocalPlayer
      local lower2 = localPlayer2

      if localPlayer2 then

        lower2 = localPlayer2.Name:lower()
      end

      return lower2 or ""
    end

    local val74 = (type(gethui)) == "function" and gethui()
    local coreGui2 = val74

    if not val74 then

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

  function helper23()
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

    local val75 = val13 or val14

    if val75 then
      return
    else
      text = instance3.Text

      if (type(text)) ~= "string" or #text < 8 then
        instance4.Text = "Key is too short."
        instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

        helper23()
        return
      else
        if (text:sub(1, 6)) ~= "Magic-" then
          instance4.Text = "Key must start with 'Magic-'"
          instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

          helper23()
          return
        else
          val14 = true
          instance5.Text = "Checking..."

          instance4.Text = "Verifying key..."
          instance4.TextColor3 = Color3.fromRGB(150, 180, 255)

          task.spawn(function()
            local val76 = safeCall5()
            val14 = false
            instance5.Text = "Submit"

            if not val76 then
              instance4.Text = "Failed to fetch whitelist. Check your connection."
              instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

              helper23()
              return
            else
              local val77 = val76[text]

              if val77 == nil then
                instance4.Text = "Key not found."
                instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

                helper23()
                instance3.Text = ""
                return
              else

                if (tostring(val77):lower()) ~= (helper22()) then
                  instance4.Text = "Key is bound to another user."
                  instance4.TextColor3 = Color3.fromRGB(255, 80, 80)

                  helper23()
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
      local val78 = instance4.Text ~= ""

      if val78 and instance4.TextColor3 ~= (Color3.fromRGB(80, 255, 130)) then
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
      humanoid = character2.WaitForChild(character2, "Humanoid")
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

  function helper24(val79)
    val19 = val19 + val79 * 6

    return Vector3.new(
      (math.sin(val19)) * 0.35, (math.cos(val19 * 1.37)) * 0.15, (math.cos(val19)) * 0.35
    )
  end

  function helper25(pos)
    val16[val17] = { t = (os.clock()), pos = pos }
    val17 = val17 % 240 + 1

    if val18 < 240 then
      val18 = val18 + 1
    end

    return
  end

  function helper26(val80)

    local val81 = val80 <= 0 or val18 == 0

    if val81 then
      return nil
    else
      local val82 = (os.clock()) - val80
      local huge = math.huge
      local pos2 = nil

      for j = 1, 240 do
        local element2 = val16[j]

        if element2 and element2.t <= val82 then
          local val83 = val82 - element2.t

          if val83 < huge then
            pos2 = element2.pos
            huge = val83
          end
        end
      end

      return pos2
    end
  end

  function helper27()

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
          local val84 = os.clock()
          local val85 = math.min(val84 - val20, 0.033333333333333)
          val20 = val84
          helper25(humanoidRootPart2.Position)
          position2 = nil

          if config.FakeLagEnabled then
            local fakeLagMode = config.FakeLagMode or "delay"

            if fakeLagMode == "delay" then

              position2 = (helper26(config.FakeLagDelay or 0.35)) or humanoidRootPart2.Position
            else
              if fakeLagMode == "jitter" then
                if val84 - val22 >= 1 / (math.max(config.FakeLagJitterRate or 10, 1)) then
                  val22 = val84
                  val21 = val21 + 1
                end

                local fakeLagJitterRange = config.FakeLagJitterRange or 18
                local val86 = val21 % 2 == 0 and 1 or -1
                local val87 = val21 * 1.61803398875

                position2 = humanoidRootPart2.Position + (Vector3.new(
                  (math.cos(val87)) * fakeLagJitterRange * val86, 0, (math.sin(val87)) * fakeLagJitterRange * val86
                ))
              else
                if fakeLagMode == "chaos" then
                  local val88 = val84 - val23

                  if val88
                    >= (val24 and (config.FakeLagChaosDur or 0.25) or config.FakeLagChaosPause
                      or 0.15) then
                    val23 = val84
                    val24 = not val24
                  end

                  if val24 then
                    local assemblyLinearVelocity = humanoidRootPart2.AssemblyLinearVelocity

                    local val89 = Vector3.new(
                      assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z
                    ).Magnitude > 1

                    local unit = val89

                    unit = val89
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
            position2 = humanoidRootPart2.Position + (helper24(val85))
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

  runService.PostSimulation:Connect(helper27)

  localPlayer.CharacterAdded:Connect(function()
    task.wait(0.05)
    val20 = os.clock()
    helper27()
    return
  end)

  helper27()
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
    local val90 = 0

    while true do
      val90 = 1 + val90

      if not (40 >= val90) then
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
    local val91, success6
    val91, success6 = pcall(function() return require(aaHandler) end)

    if val91 and (type(success6)) == "table" then
      local val92 = {}
      val25 = success6

      for key in pairs(success6) do
        table.insert(val92, tostring(key))
      end

      warn("[AntiAim] AAHandler loaded. Methods: " .. (table.concat(val92, ", ")))
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

  local

  combatTab:CreateToggle({
    Name = "No Spread", CurrentValue = config.NoSpreadEnabled, Flag = "NoSpreadToggle", Callback = function(value3)
      config.NoSpreadEnabled = value3
      return
    end, })

  combatTab:CreateSection("Knife Spam (packet race)")

  combatTab:CreateToggle({
    Name = "Knife Spam (multi-fire)", CurrentValue = config.KnifeSpamEnabled, Flag = "KnifeSpamToggle", Callback = function(value4)
      config.KnifeSpamEnabled = value4
      warn("[KnifeSpam]", value4 and "ON" or "OFF")
      return
    end, })

  local

  local

  combatTab:CreateSlider({
    Name = "Packets per knife", Range = { 2, 8 }, Increment = 1, Suffix = " sends", CurrentValue = 4, Flag = "KnifeSpamCountSlider", Callback = function(value5)
      config.KnifeSpamCount = tonumber(value5)
      return
    end, })

  local

  combatTab:CreateSlider({
    Name = "Delay between sends", Range = { 1, 10 }, Increment = 1, Suffix = " x0.01s", CurrentValue = 3, Flag = "KnifeSpamDelaySlider", Callback = function(value6)
      config.KnifeSpamDelay = (tonumber(value6)) / 100
      return
    end, })

  combatTab:CreateSection("Knife Bot (auto farm)")

  local

  combatTab:CreateToggle({
    Name = "Knife Bot (auto farm)", CurrentValue = config.KnifeBotEnabled, Flag = "KnifeBotToggle", Callback = function(value7)
      config.KnifeBotEnabled = value7
      warn("[KnifeBot]", value7 and "ON" or "OFF")
      return
    end, })

  local

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

  combatTab:CreateToggle({
    Name = "Predictive teleport (aim ahead)", CurrentValue = config.KnifeBotPredictive, Flag = "KnifeBotPredictiveToggle", Callback = function(value10)
      config.KnifeBotPredictive = value10
      return
    end, })

  local

  local

  combatTab:CreateToggle({
    Name = "Auto-equip M9", CurrentValue = config.KnifeBotAutoEquip, Flag = "KnifeBotAutoEquipToggle", Callback = function(value11)
      config.KnifeBotAutoEquip = value11
      return
    end, })

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

  local

  local

  local

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
      local val93 = value19

      if (type(val93)) == "table" then
        val93 = val93[1]
      end

      if val93 == "None" then
        config.AntiAimJitterMode = "none"
      else
        if val93 == "Left â Right (jitter)" then
          config.AntiAimJitterMode = "lr"
        else
          if val93 == "Magic (spin body)" then
            config.AntiAimJitterMode = "magic"
          end
        end
      end

      warn("[AntiAim] jitter ->", config.AntiAimJitterMode)
      return
    end, })

  antiAimTab:CreateSection("Jitter (Left â Right)")

  local

  local

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

  antiAimTab:CreateSlider({
    Name = "Vertical (- down / + up)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimMagicHeightSlider", Callback = function(value22)
      config.AntiAimMagicHeight = tonumber(value22)
      return
    end, })

  antiAimTab:CreateSlider({
    Name = "Horizontal (- left / + right)", Range = { -60, 60 }, Increment = 1, Suffix = " studs", CurrentValue = 0, Flag = "AntiAimMagicSidewaysSlider", Callback = function(value23)
      config.AntiAimMagicSideways = tonumber(value23)
      return
    end, })

  local

  local

  antiAimTab:CreateSection("Magic â Circle Flight")

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

  antiAimTab:CreateSection("AC Bypass")

  antiAimTab:CreateToggle({
    Name = "Noclip (standalone, no collision)", CurrentValue = config.NoclipEnabled, Flag = "NoclipToggle", Callback = function(value26)
      config.NoclipEnabled = value26
      warn("[Noclip]", value26 and "ON" or "OFF")
      return
    end, })

  local

  local

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

  local

  local

  resolverTab:CreateToggle({
    Name = "Tournament adaptive (16-offset elimination)", CurrentValue = config.ResolverAdaptive, Flag = "ResolverAdaptiveToggle", Callback = function(value29)
      config.ResolverAdaptive = value29
      warn("[Resolver] adaptive:", value29)
      return
    end, })

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

  resolverTab:CreateSlider({
    Name = "Bias angle (JITTER_AA)", Range = { 5, 90 }, Increment = 1, Suffix = " deg", CurrentValue = 25, Flag = "ResolverBiasAngleSlider", Callback = function(value32)
      config.ResolverBiasAngle = tonumber(value32)
      return
    end, })

  resolverTab:CreateToggle({
    Name = "LERP (smooth transition)", CurrentValue = config.ResolverLERP, Flag = "ResolverLERPToggle", Callback = function(value33)
      config.ResolverLERP = value33
      return
    end, })

  resolverTab:CreateSlider({
    Name = "LERP speed", Range = { 5, 100 }, Increment = 5, Suffix = " %", CurrentValue = 35, Flag = "ResolverLERPSpeedSlider", Callback = function(value34)
      config.ResolverLERPSpeed = (tonumber(value34)) / 100
      return
    end, })

  resolverTab:CreateSlider({
    Name = "Manual offset (if tournament off)", Range = { -180, 180 }, Increment = 5, Suffix = " deg", CurrentValue = 0, Flag = "ResolverManualOffsetSlider", Callback = function(value35)
      config.ResolverManualOffset = tonumber(value35)
      return
    end, })

  resolverTab:CreateSection("Force Headshot (:3 hook)")

  local

  local

  resolverTab:CreateToggle({
    Name = "Enable force headshot", CurrentValue = config.ForceHeadshotEnabled, Flag = "ForceHeadshotToggle", Callback = function(value36)
      config.ForceHeadshotEnabled = value36
      warn("[ForceHS]", value36 and "ON" or "OFF")
      return
    end, })

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

  local

  miscTab:CreateSection("Anti Map Kick")

  miscTab:CreateToggle({
    Name = "Anti Map Kick (auto-respawn)", CurrentValue = config.AntiMapKickEnabled, Flag = "AntiMapKickToggle", Callback = function(value41)
      config.AntiMapKickEnabled = value41
      warn("[AntiMapKick]", value41 and "ON" or "OFF")
      return
    end, })

  local

  miscTab:CreateSlider({
    Name = "Detection Offset (above kill Y)", Range = { 50, 400 }, Increment = 10, Suffix = " studs", CurrentValue = config.AntiMapKickOffset, Flag = "AntiMapKickOffsetSlider", Callback = function(value42)
      config.AntiMapKickOffset = tonumber(value42)
      return
    end, })

  local

  miscTab:CreateSection("Anti-AntiCheat")
  local

  miscTab:CreateToggle({
    Name = "Disable Client AC", CurrentValue = config.DisableAC, Flag = "DisableACToggle", Callback = function(value43)
      config.DisableAC = value43
      return
    end, })

  local

  miscTab:CreateSection("Network / Fake Lag")

  miscTab:CreateToggle({
    Name = "Fake Lag (Pos attribute manipulation)", CurrentValue = config.FakeLagEnabled, Flag = "FakeLagToggle", Callback = function(value44)
      config.FakeLagEnabled = value44
      warn("[FakeLag]", value44 and "ON" or "OFF")
      return
    end, })

  miscTab:CreateDropdown({
    Name = "Mode", Options = { "Delay (lag behind)", "Jitter (shake enemies' view)", "Chaos (spike on/off)" }, CurrentOption = { "Delay (lag behind)" }, Flag = "FakeLagModeDropdown", Callback = function(value45)
      local val94 = value45

      if (type(val94)) == "table" then
        val94 = val94[1]
      end

      if val94 == "Delay (lag behind)" then
        config.FakeLagMode = "delay"
      else
        if val94 == "Jitter (shake enemies' view)" then
          config.FakeLagMode = "jitter"
        else
          if val94 == "Chaos (spike on/off)" then
            config.FakeLagMode = "chaos"
          end
        end
      end

      warn("[FakeLag] mode ->", config.FakeLagMode)
      return
    end, })

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

  local

  local

  miscTab:CreateSlider({
    Name = "Jitter update rate", Range = { 2, 30 }, Increment = 1, Suffix = " Hz", CurrentValue = 10, Flag = "FakeLagJitterRateSlider", Callback = function(value48)
      config.FakeLagJitterRate = tonumber(value48)
      return
    end, })

  local

  do
    miscTab:CreateSlider({
      Name = "Chaos: spike duration", Range = { 5, 100 }, Increment = 5, Suffix = " x0.01s", CurrentValue = 25, Flag = "FakeLagChaosDurSlider", Callback = function(value49)
        config.FakeLagChaosDur = (tonumber(value49)) / 100
        return
      end, })

    miscTab:CreateSlider({
      Name = "Chaos: pause between spikes", Range = { 5, 100 }, Increment = 5, Suffix = " x0.01s", CurrentValue = 15, Flag = "FakeLagChaosPauseSlider", Callback = function(value50)
        config.FakeLagChaosPause = (tonumber(value50)) / 100
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

    val26 = 0

    function helper4()
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

    function helper28(val95, val96)
      local parent3 = val95.Parent

      while true do

        if parent3 and parent3 ~= val96 then
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

    function iterate(val97)

      if not val97 then
        return
      else
        for index3, value51 in ipairs(val97:GetDescendants()) do
          safeCall6(value51, val97)
        end

        humanoid2 = val97:FindFirstChildOfClass("Humanoid")

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
  end

  do
    function safeCall6(val98, val99)
      if not (val98:IsA("BasePart")) then
        return
      else
        if (helper28(val98, val99)) then
          return
        else
          pcall(function()
            val98.CanCollide = false

            if val28 then
              val98.CollisionGroup = "MagicAANoClip"
            end

            return
          end)

          return
        end
      end
    end

    function iterate5(val100)
      if not val100 then
        return
      else
        for index4, value52 in ipairs(val100:GetDescendants()) do
          local element3 = value52

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

    local

    val29 = {}
    local

    val30 = function(p12)

      local val101 = not p12 or val29[p12]

      if val101 then
        return
      else
        val29[p12] = true

        p12.DescendantAdded:Connect(function(descendant)
          if not config.NoclipEnabled then
            return
          else
            if (descendant:IsA("BasePart")) then
              safeCall6(descendant, p12)
            end

            return
          end
        end)

        return
      end
    end

    runService.PreSimulation:Connect(function()
      if not config.NoclipEnabled then
        return
      else
        local character4 = localPlayer.Character

        if not character4 then
          return
        else
          val30(character4)
          iterate(character4)
          return
        end
      end
    end)
  end

  task.spawn(function()
    local noclipEnabled = config.NoclipEnabled

    while (task.wait(0.1)) do

      if noclipEnabled and not config.NoclipEnabled then
        iterate5(localPlayer.Character)
      end

      noclipEnabled = config.NoclipEnabled
    end

    return
  end)

  localPlayer.CharacterAdded:Connect(function(character5)
    val29[character5] = nil
    task.wait(0.05)
    val30(character5)

    if config.NoclipEnabled then
      iterate(character5)
    end

    return
  end)

  if localPlayer.Character then
    val30(localPlayer.Character)
  end

  warn("[Noclip] module loaded (standalone)")

  function helper5()
    return localPlayer.Character
  end

  val31 = false
  local

  val32 = false
  val33 = 0
  val34 = nil

  do
    val35 = 1
    val36 = 0
    val37 = 0
    val38 = 0
    local

    local val102 = os.clock()

    function safeCall2(val103)
      if not val25 then
        return
      else
        pcall(function()
          local val104 = val103 or {}
          val25:SendMotorOverrides(val104, nil)
          return
        end)

        return
      end
    end

    val39 = val102
    local

  end

  do
    val40 = 0
    val41 = 0

    function iterate6()
      local object = helper5()

      if not object then
        return nil
      else
        local val105 = {}

        for index5, value53 in ipairs(object:GetDescendants()) do

          if (value53:IsA("Motor6D")) and value53.Name ~= "" then
            val105[value53.Name] = value53.C0
          end
        end

        return val105
      end
    end

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
        local val106 = os.clock()
        local val107 = math.min(val106 - val39, 0.033333333333333)
        val39 = val106
        local antiAimJitterMode = config.AntiAimJitterMode or "none"

        if antiAimJitterMode == "lr" then
          if val106 - val36 >= 1 / (math.max(config.AntiAimJitterRate or 6, 0.1)) then
            val36 = val106
            val35 = -val35
          end
        end

        if antiAimJitterMode == "magic" and config.AntiAimActive then
          val40 = (val40 + (config.AntiAimMagicSpeed or 100000) * val107) % 360
          val41 = (val41 + (config.AntiAimMagicCircleSpeed or 10000) * val107) % 360
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
            val39 = val106
            val34 = iterate6()
            warn("[AntiAim] entered")
          end

          if val32 then
            return
          else
            if val106 - val33 < 1 / (math.max(config.AntiAimSendRate or 45, 1)) then
              return
            else
              val33 = val106
              local object2 = helper5()

              local humanoidRootPart3 = object2
              humanoidRootPart3 = object2 and object2:FindFirstChild("HumanoidRootPart")

              if not humanoidRootPart3 then
                return
              else
                local val108 = {}

                if val34 then
                  for key2, value54 in pairs(val34) do
                    val108[key2] = value54
                  end
                end

                if antiAimJitterMode == "magic" then
                  local val109 = math.rad(config.AntiAimMagicPitch or 180)
                  local val110 = math.rad(val40)
                  local antiAimMagicCircleRadius = 0

                  if config.AntiAimMagicCircle then
                    antiAimMagicCircleRadius = config.AntiAimMagicCircleRadius or 9.5
                  end

                  local val111 = math.rad(val41)

                  local vectorToObjectSpace = humanoidRootPart3.CFrame:VectorToObjectSpace((Vector3.new(
                    (math.cos(val111)) * antiAimMagicCircleRadius, 0, (math.sin(val111)) * antiAimMagicCircleRadius
                  )) + (Vector3.new(
                    0, config.AntiAimMagicHeight or 0, 0
                  )) + humanoidRootPart3.CFrame.RightVector * (config.AntiAimMagicSideways or 0))

                  local rootJoint = val34 and val34.RootJoint

                  local cframe = rootJoint
                  cframe = rootJoint or CFrame.new()

                  val108.RootJoint = (CFrame.new(vectorToObjectSpace))
                    * (CFrame.Angles(0, val110, 0)) * (CFrame.Angles(val109, 0, 0)) * cframe

                  safeCall2(val108)
                  return
                else
                  local antiAimSideways = config.AntiAimSideways or 0
                  local antiAimHeight = config.AntiAimHeight or 0
                  local antiAimJitterRange = config.AntiAimJitterRange or 8

                  if antiAimJitterMode == "lr" then
                    antiAimSideways = antiAimSideways + val35 * antiAimJitterRange
                  end

                  local antiAimMoveSpeed = config.AntiAimMoveSpeed or 100

                  if antiAimMoveSpeed >= 100 or val107 <= 0 then
                    val37 = antiAimSideways
                    val38 = antiAimHeight
                  else
                    local val112 = 1 - (math.exp(-(antiAimMoveSpeed / 100 * 300) * val107))
                    val37 = val37 + (antiAimSideways - val37) * val112
                    val38 = val38 + (antiAimHeight - val38) * val112
                  end

                  local cframe2 = CFrame.new(val37, 1 + val38, 0)

                  local neck = val34 and val34.Neck

                  val108.Neck = cframe2 * (neck or CFrame.new())
                  safeCall2(val108)
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
    val42 = { 0, 30, -30, 60, -60, 90, -90, 120, -120, 150, -150, 180, 15, -15, 45, -45 }

    function helper29(val113)

      if val113 == localPlayer then
        return false
      else
        if not config.ResolverTeamCheck then
          return true
        else
          local team = localPlayer:GetAttribute("Team")
          local team2 = val113:GetAttribute("Team")

          if not team or not team2 then
            return true
          else
            return team ~= team2
          end
        end
      end
    end

    function helper6(val114, val115, val116)
      return val114 + (val43(val115 - val114)) * val116
    end

    local

    function helper7(val117, val118)
      return math.abs(val43(val117 - val118))
    end

    val43 = function(p20) return math.atan2(math.sin(p20), math.cos(p20)) end

    function helper8(val119)
      local humanoidRootPart4 = val119:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart4 then
        return nil
      else
        local lookVector = humanoidRootPart4.CFrame.LookVector
        return math.atan2(lookVector.X, lookVector.Z)
      end
    end

    local
  end

  do

    function helper9(val120)
      if #val120.pool <= 1 then
        val120.pool = val44()
        val120.idx = 1
        val120.current = val120.pool[1]

        return
      else
        table.remove(val120.pool, val120.idx)

        if val120.idx > #val120.pool then
          val120.idx = 1
        end

        val120.current = val120.pool[val120.idx]
        return
      end
    end

    val44 = function()
      local val121 = {}

      for k = 1, #val42 do
        val121[k] = val42[k]
      end

      return val121
    end

    function iterate2()
      local val122 = {}

      for index6, value55 in ipairs(players:GetPlayers()) do

        if (helper29(value55)) and value55.Character then

          local humanoid3 = value55.Character:FindFirstChildOfClass("Humanoid")

          if humanoid3 then
            val122[value55] = humanoid3.Health
          end
        end
      end

      return val122
    end

    function helper10(val123)
      local yawSamples = val123.yawSamples

      if #yawSamples < 12 then
        return "LEGIT"
      else
        local val124 = 0
        local val125 = 0

        for m = 2, #yawSamples do
          val124 = val124 + (helper7(yawSamples[m], yawSamples[m - 1]))

          if (math.sign(math.sin(yawSamples[m]))) ~= (math.sign(math.sin(yawSamples[m - 1]))) then
            val125 = val125 + 1
          end
        end

        local val126 = val124 / (#yawSamples - 1)

        if val126 < (math.rad(4)) then
          return "LEGIT"
        else

          if val126 < (math.rad(18)) and val125 < 3 then
            return "STATIC_AA"
          else
            return "JITTER_AA"
          end
        end
      end
    end

    function helper11(val127)
      local val128 = penablox.resolverData[val127]

      if not val128 then
        val128 = val45()
        penablox.resolverData[val127] = val128
      end

      return val128
    end

    local

    function helper12(val129)
      local bodyYaw = val129:FindFirstChild("BodyYaw")

      if bodyYaw and bodyYaw:IsA("NumberValue") then
        return (math.rad((tonumber(bodyYaw.Value)) or 0)), true
      else
        return nil, false
      end
    end

    val45 = function()
      local val130 = val44()

      return {
        pool = val130, idx = 1, current = val130[1], locked = nil, misses = 0, hits = 0, lastShot = 0, yawSamples = {}, modeCache = "LEGIT", resolvedDelta = nil, lastBaseYaw = 0, lastMissed = false, }
    end
  end

  do
    function iterate3(val131)

      if (typeof(val131)) ~= "Vector3" then
        return nil
      else
        local val132 = 6
        local val133 = nil

        for index7, value56 in ipairs(players:GetPlayers()) do

          if (helper29(value56)) and value56.Character then

            local torso = value56.Character:FindFirstChild("Torso")
            local val134 = torso

            if not torso then

              local upperTorso = value56.Character:FindFirstChild("UpperTorso")
              local humanoidRootPart5 = upperTorso

              if not upperTorso then

                humanoidRootPart5 = value56.Character:FindFirstChild("HumanoidRootPart")
              end

              val134 = humanoidRootPart5
            end

            if val134 then
              local magnitude = (val134.Position - val131).Magnitude

              if magnitude < val132 then
                val133 = value56
                val132 = magnitude
              end
            end
          end
        end

        return val133
      end
    end

    local

  end

  do
    function helper13(val135, val136)
      local element4 = helper11(val135)
      local val137, v297 = helper12(val136)

      local val138 = val137 or (helper8(val136)) or 0
      element4.lastBaseYaw = val138
      val46(element4, val138)
      local val139 = helper10(element4)
      element4.modeCache = val139
      local locked

      if config.ResolverAdaptive then

        locked = element4.locked or element4.current or 0
      else
        locked = config.ResolverManualOffset or 0
      end

      local val140 = math.rad(locked)

      if val139 == "JITTER_AA" then
        local val141 = math.sign(math.sin(val138))

        if val141 == 0 then
          val141 = 1
        end

        if element4.lastMissed then
          val141 = -val141
          element4.lastMissed = false
        end

        val140 = val140 + val141 * (math.rad(config.ResolverBiasAngle or 25))
      end

      if config.ResolverLERP then

        element4.resolvedDelta = helper6(
          element4.resolvedDelta or val140, val140, config.ResolverLERPSpeed or 0.35
        )

        val140 = element4.resolvedDelta
      end

      return val140, val139
    end

    val46 = function(p29, p30) return end

    function penablox.resolverOnShot(p31, p32)
      if not config.ResolverEnabled then
        return
      else
        local val142 = iterate3(p32)

        if not val142 then
          return
        else
          helper11(val142).lastShot = os.clock()

          table.insert(penablox.pendingShots, {
            target = val142, snapshot = (iterate2()), time = (os.clock()), resolved = false, })

          return
        end
      end
    end

    task.spawn(function()
local val143, val144, val145

      while (task.wait(0.08)) do
        if not config.ResolverEnabled then
          penablox.pendingShots = {}
        else
          local val146 = os.clock()
          local val147 = #penablox.pendingShots - -1

          while true do
            val147 = -1 + val147

            if not (val147 >= 1 or false) then
              break
            end

            local val148 = val147
            local element5 = penablox.pendingShots[val148]

            if not element5.resolved and val146 - element5.time >= 0.3 then
              element5.resolved = true
              local target = element5.target

              if not target or not target.Parent then
                table.remove(penablox.pendingShots, val148)
              else
                character6 = target.Character
                val143 = character6

                humanoid4 = character6 and character6:FindFirstChildOfClass("Humanoid")
                val144 = humanoid4

                health = humanoid4 and humanoid4.Health or 0
                val145 = helper11(target)

                if health < (element5.snapshot[target] or 0) then
                  val145.hits = val145.hits + 1
                  val145.misses = 0
                  val145.locked = val145.current

                  if config.ResolverShowStatus then
                    warn(string.format(
                      "[Resolver] HIT %s | locked=%dÂ° | mode=%s", target.Name, val145.locked or 0, val145.modeCache
                    ))
                  end
                else
                  val145.misses = val145.misses + 1
                  val145.lastMissed = true

                  if config.ResolverAdaptive then
                    val145.locked = nil
                    helper9(val145)
                  end

                  if config.ResolverShowStatus then
                    warn(string.format(
                      "[Resolver] MISS %s | next=%dÂ° | pool=%d | mode=%s", target.Name, val145.current or 0, #val145.pool, val145.modeCache
                    ))
                  end
                end

                table.remove(penablox.pendingShots, val148)
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
        local val149 = os.clock()

        for key3, value57 in pairs(penablox.resolverData) do
          if val149 - (value57.lastShot or 0) > 8 then
            value57.pool = val44()
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

  end

  do
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

    for index8, value58 in ipairs(players:GetPlayers()) do
      local element6 = value58

      if element6 ~= localPlayer then

        element6.CharacterAdded:Connect(function()
          penablox.resolverData[element6] = nil
          return
        end)
      end
    end

    function helper30(val150)
      local resolverBaseC0 = val150:GetAttribute("ResolverBaseC0")

      if not resolverBaseC0 then
        resolverBaseC0 = val150.C0
        val150:SetAttribute("ResolverBaseC0", resolverBaseC0)
      end

      return resolverBaseC0
    end

    function helper16(val151, val152)
      local object3 = val151.FindFirstChild(val151, "HumanoidRootPart")
      local rootJoint2

      if not object3 then
        return
      else
        rootJoint2 = object3:FindFirstChild("RootJoint")
        local val153 = not rootJoint2
        local val154 = val153

        if not val153 then
          val154 = not (rootJoint2:IsA("Motor6D"))
        end

        if val154 then
          return
        else
          pcall(function()
            rootJoint2.C0 = (helper30(rootJoint2)) * (CFrame.Angles(0, val43(val152), 0))
            return
          end)

          return
        end
      end
    end

    function helper14(val155)
      local humanoidRootPart6 = val155:FindFirstChild("HumanoidRootPart")
      local rootJoint3, resolverBaseC02

      if not humanoidRootPart6 then
        return
      else
        rootJoint3 = humanoidRootPart6:FindFirstChild("RootJoint")
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
  end

  do

    runService.Heartbeat:Connect(function()

      if not config.ResolverEnabled then
        for index9, value59 in ipairs(players:GetPlayers()) do

          if value59 ~= localPlayer and value59.Character then
            helper14(value59.Character)
          end
        end

        return
      else
        for index10, value60 in ipairs(players:GetPlayers()) do
          local element7 = value60

          if (helper29(element7)) and element7.Character then

            local humanoid5 = element7.Character:FindFirstChildOfClass("Humanoid")

            if humanoid5 and humanoid5.Health > 0 then
              pcall(function()
                helper16(element7.Character, (helper13(element7, element7.Character)))
                return
              end)
            end
          end
        end

        return
      end
    end)

    function helper15(val156)
      if not config.ForceHeadshotIgnoreTm then
        return true
      else
        local getPlayerFromCharacter = players:GetPlayerFromCharacter(val156)

        if not getPlayerFromCharacter then
          return true
        else
          local team3 = localPlayer:GetAttribute("Team")
          local val157 = not team3
          local team4 = getPlayerFromCharacter:GetAttribute("Team")

          if val157 or not team4 then
            return true
          else
            return team3 ~= team4
          end
        end
      end
    end

    warn("[Resolver] Unified loaded (Divine OLD fixed + Tournament 16)")
    val47 = nil
    checkRaycastAgainstRealBody = nil
    getBodyPartName = nil
    val48 = false

    function safeCall3()

      if val47 then
        return val47
      else
        if (type(getgc)) ~= "function" then
          return nil
        else
          local success8, val158
          val158, success8 = pcall(getgc, true)

          if not val158 or (type(success8)) ~= "table" then
            val158, success8 = pcall(getgc)
          end

          if not val158 or (type(success8)) ~= "table" then
            return nil
          else
            for index11, value61 in ipairs(success8) do
              if (type(value61)) == "table" then
                local val159 = rawget(value61, "checkRaycastAgainstRealBody")
                local val160 = rawget(value61, "getTargetPosition")
                local val161 = rawget(value61, "getCachedRaycastParams")
                local val162 = (type(val159)) == "function"
                local val163 = val162

                if val162 then

                  val163 = (type(val160)) == "function" and (type(val161)) == "function"
                end

                if val163 then
                  val47 = value61
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

  function helper31()
    if val48 then
      return true
    else
      local element8 = safeCall3()

      if not element8 then
        warn("[ForceHS] :3 shared table not found")
        return false
      else
        local

        checkRaycastAgainstRealBody = element8.checkRaycastAgainstRealBody
        getBodyPartName = element8.getBodyPartName

        element8.checkRaycastAgainstRealBody = function(p38, p39, p40, p41)
          local val164, val165, val166 = checkRaycastAgainstRealBody(p38, p39, p40, p41)

          if not config.ForceHeadshotEnabled then
            return val164, val165, val166
          else
            if not val166 then
              return val164, val165, val166
            else
              if config.ForceHeadshotOnMiss == false then

                if val164 == nil or val165 == nil then
                  return val164, val165, val166
                else
                  if not (helper15(p38)) then
                    return val164, val165, val166
                  else
                    return "Head", val165, true
                  end
                end
              else
                goto L1232019
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

                if getPlayerFromCharacter2 and helper15(model) then
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

        val48 = true
        warn("[ForceHS] Hook installed on :3 shared table")
        return true
      end
    end
  end

  task.spawn(function()
    for n = 1, 20 do
      if (helper31()) then
        return
      else
        task.wait(0.5)
      end
    end

    return
  end)

  task.spawn(function()

    while (task.wait(3)) do

      if config.ForceHeadshotEnabled and not val48 then
        helper31()
      end
    end

    return
  end)

  localPlayer.CharacterAdded:Connect(function()

    if val48 and val47 then
      if (type(val47.checkRaycastAgainstRealBody)) ~= "function" then
        val48 = false
        val47 = nil
      end
    end

    return
  end)

  warn("[ForceHS] module loaded")

  function helper32()
    local character7 = localPlayer.Character

    return character7 and character7:FindFirstChild("HumanoidRootPart") or nil
  end

  userInputService.InputBegan:Connect(function(input)
    if input.KeyCode ~= config.DefPeekKey then
      return
    else
      if not config.DefPeekEnabled then
        return
      else
        local element9 = helper32()

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

  do
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
          local val167 = tick()

          if val167 - penablox.lastTeleport < 0.05 then
            return
          else
            penablox.lastTeleport = val167

            pcall(function()
              local parent = helper32()
              local parent5 = parent and parent.Parent

              if parent5 then
                parent.CFrame = penablox.savedPeekCFrame

                if config.DefPeekRestoreVel then
                  parent.AssemblyLinearVelocity = Vector3.zero
                  parent.AssemblyAngularVelocity = Vector3.zero
                end

                local val168 = config.DefPeekFreezeTime > 0
                  and (tick()) + config.DefPeekFreezeTime

                penablox.freezeUntil = val168 or 0
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
          local parent2 = helper32()

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

    function helper33(val169)
      local val170 = not val169

      if val170 or not (val169:IsA("Tool")) then
        return
      else
        if val169.Name ~= "SSG-08" then
          return
        else

          val169.ChildAdded:Connect(function(child)
            local val171 = child.Name == "Shoot"

            if val171 and child:IsA("Configuration") then

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

    local function helper37(val172)

      if not val172 then
        return
      else
        local ssg08 = val172:FindFirstChild("SSG-08")

        if ssg08 then
          helper33(ssg08)
        end

        val172.ChildAdded:Connect(function(child2)
          if (child2:IsA("Tool")) then
            helper33(child2)
          end

          return
        end)

        return
      end
    end

    if localPlayer.Character then
      helper37(localPlayer.Character)
    end

    localPlayer.CharacterAdded:Connect(helper37)

    function helper17(val173)
      local team5 = localPlayer:GetAttribute("Team")
      local val174 = not team5
      local team6 = val173:GetAttribute("Team")

      if val174 or not team6 then
        return true
      else
        return team5 ~= team6
      end
    end
  end

  do
    val49 = { CT = config.SpawnCT, T = config.SpawnT }

    function helper34()
      local team7 = localPlayer.Team
      local name = team7 and team7.Name

      if name then
        return team7.Name
      else
        local team8 = localPlayer:GetAttribute("Team")

        if (type(team8)) == "string" then
          return team8
        else

          if team7 and (typeof(team7.TeamColor)) == "BrickColor" then
            local color = team7.TeamColor.Color

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

    function helper35()
      local object4 = helper34()

      if not object4 then
        return nil
      else
        local lower3 = object4:lower()
        local val175 = lower3 == "ct"
        local val176 = val175

        if not val175 then
          local find = lower3:find("counter", 1, true)
          local find2 = find

          if not find then
            local find3 = lower3:find("blue", 1, true)

            find2 = find3 or lower3:find("defend", 1, true)
          end

          val176 = find2
        end

        if val176 then
          return val49.CT
        else
          local val177 = lower3 == "t"
          local val178 = val177

          if not val177 then
            local find4 = lower3:find("terror", 1, true)
            local find5 = find4

            if not find4 then
              local find6 = lower3:find("red", 1, true)

              find5 = find6 or lower3:find("attack", 1, true)
            end

            val178 = find5
          end

          if val178 then
            return val49.T
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

    function helper18(val179)
      local character8 = localPlayer.Character

      if not character8 then
        return
      else

        if not (character8:FindFirstChild("HumanoidRootPart")) then
          return
        else
          local character9 = val179.Character

          if not character9 or not character9.Parent then
            return
          else
            local torso2 = character9:FindFirstChild("Torso")

            local upperTorso2 = torso2 or character9:FindFirstChild("UpperTorso")

            if not upperTorso2 then
              return
            else
              local val180 = math.max(config.KnifeBotBehindStuds or 1, 0.6)
              local position3 = upperTorso2.Position

              if config.KnifeBotPredictive then
                local humanoidRootPart7 = character9:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart7 then
                  local assemblyLinearVelocity2 = humanoidRootPart7.AssemblyLinearVelocity

                  if Vector3.new(assemblyLinearVelocity2.X, 0, assemblyLinearVelocity2.Z).Magnitude
                    > 1 then
                    position3 = upperTorso2.Position + (Vector3.new(
                      assemblyLinearVelocity2.X, 0, assemblyLinearVelocity2.Z
                    )) * ((config.KnifeBotRate or 0.05) * 0.5)
                  end
                end
              end

              local cframe3 = upperTorso2.CFrame
              local position4 = (cframe3 * (CFrame.new(0, 0, val180))).Position

              local vector = Vector3.new(
                position3.X + (position4.X - upperTorso2.Position.X), position3.Y + (position4.Y - upperTorso2.Position.Y), position3.Z + (position4.Z - upperTorso2.Position.Z)
              )

              CFrame.new(vector, vector + cframe3.LookVector)
              return
            end
          end
        end
      end
    end

    localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
      penablox.cachedSpawn = nil
      return
    end)

    runService.Stepped:Connect(function()
local val181

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
                humanoidRootPart8 = character10:FindFirstChild("HumanoidRootPart")

                if not humanoidRootPart8 then
                  return
                else
                  if humanoidRootPart8.Position.Y
                    < (workspace.FallenPartsDestroyHeight or -500) + config.AntiMapKickOffset then
                    val181 = helper35()

                    if val181 then
                      pcall(function()
                        humanoidRootPart8.CFrame = CFrame.new(val181 + (Vector3.new(0, 5, 0)))
                        humanoidRootPart8.AssemblyLinearVelocity = Vector3.zero
                        humanoidRootPart8.AssemblyAngularVelocity = Vector3.zero

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
  end

  do
    warn("[AntiMapKick] active")

    function iterate4()
      local character11 = localPlayer.Character
      local val182, backpack, val183, starterGear

      if character11 then
        local m9 = character11:FindFirstChild("M9")

        if m9 and m9:IsA("Tool") then
          return m9
        else
          val182 = localPlayer
          backpack = localPlayer:FindFirstChild("Backpack")

          if backpack then
            local m92 = backpack:FindFirstChild("M9")

            if m92 and m92:IsA("Tool") then
              return m92
            else
              val183 = localPlayer
              starterGear = localPlayer:FindFirstChild("StarterGear")

              if starterGear then
                local m93 = starterGear:FindFirstChild("M9")

                if m93 and m93:IsA("Tool") then
                  return m93
                else
                  if character11 then
                    for index12, value62 in ipairs(character11:GetDescendants()) do
                      local val184 = value62.Name == "M9"

                      if val184 and value62:IsA("Tool") then
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

    val50 = 0

    function helper20()
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

    function helper19(val185)
      local character12 = localPlayer.Character

      local val186 = not character12 or not val185

      if val186 then
        return
      else
        humanoid7 = character12:FindFirstChildOfClass("Humanoid")

        if not humanoid7 then
          return
        else
          local backpack2 = localPlayer:FindFirstChild("Backpack")
          local val187 = backpack2

          if backpack2 then

            val187 = val185.Parent ~= backpack2 and val185.Parent ~= character12
          end

          if val187 then
            val185.Parent = backpack2
            task.wait()
          end

          pcall(function()
            humanoid7:EquipTool(val185)
            return
          end)

          task.wait()

          if val185.Parent ~= character12 then
            pcall(function()
              val185.Parent = character12
              humanoid7:EquipTool(val185)
              return
            end)
          end

          return
        end
      end
    end

    function safeCall7()
      local humanoid8, val188

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
              val188 = iterate4()

              if val188 then
                if val188.Parent ~= character13 then
                  helper19(val188)
                else
                  pcall(function()
                    humanoid8:EquipTool(val188)
                    return
                  end)
                end

                return
              else
                local val189 = helper20()

                if val189 then
                  helper19(val189)
                  return
                else
                  local val190 = os.clock()

                  if val190 - val50 > 5 then
                    val50 = val190
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
  end

  do
    function iterate7()
      local character14 = localPlayer.Character

      if not character14 then
        return nil
      else
        local humanoidRootPart9 = character14:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart9 then
          return nil
        else
          local val191 = nil
          local huge2 = math.huge

          for index13, value63 in ipairs(players:GetPlayers()) do
            local val192 = value63 ~= localPlayer
            local parent6 = val192

            if val192 then

              parent6 = value63.Character and value63.Character.Parent
            end

            if parent6 then
              local character15 = value63.Character
              local humanoid9 = character15:FindFirstChildOfClass("Humanoid")
              local humanoidRootPart10 = character15:FindFirstChild("HumanoidRootPart")
              local torso3 = character15:FindFirstChild("Torso")

              local upperTorso3 = torso3
              upperTorso3 = torso3 or character15:FindFirstChild("UpperTorso")

              local val193 = humanoid9
              local forceField = character15:FindFirstChildOfClass("ForceField")

              if humanoid9 then
                local val194 = humanoid9.Health > 0
                local val195 = val194

                if val194 then
                  local val196 = (humanoid9:GetState()) ~= Enum.HumanoidStateType.Dead
                  local val197 = val196

                  if val196 then
                    local val198 = humanoidRootPart10

                    if humanoidRootPart10 then
                      local val199 = upperTorso3

                      if upperTorso3 then
                        local val200 = not forceField

                        val199 = val200 and helper17(value63)
                      end

                      val198 = val199
                    end

                    val197 = val198
                  end

                  val195 = val197
                end

                val193 = val195
              end

              if val193 then
                local magnitude2 = (humanoidRootPart10.Position - humanoidRootPart9.Position).Magnitude

                if magnitude2 < huge2 then
                  val191 = value63
                  huge2 = magnitude2
                end
              end
            end
          end

          return val191
        end
      end
    end

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
                safeCall7()
                local val201 = iterate7()

                if val201 then
                  helper18(val201)
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
        helper4()
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
        if (helper3()) then
          return
        else
          local val202 = not val15
          local val203 = val202

          if not val202 then
            local val204 = not humanoidRootPart
            local val205 = val204

            if not val204 then

              val205 = not humanoid or humanoid.Health <= 0
            end

            val203 = val205
          end

          if val203 then
            return
          else
            local getState = humanoid:GetState()

            if (userInputService:IsKeyDown(Enum.KeyCode.Space)) then

              if getState == Enum.HumanoidStateType.Landed
                or humanoid.FloorMaterial ~= Enum.Material.Air then

                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
              end
            end

            local val206 = getState == Enum.HumanoidStateType.Jumping
            local val207 = val206

            if not val206 then

              val207 = getState == Enum.HumanoidStateType.Freefall
                or humanoid.FloorMaterial == Enum.Material.Air
            end

            if val207 then
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
  end

  do
    warn("[Penablox] Loaded")

    local replicatedStorage2 = game:GetService("ReplicatedStorage")
    local mainEvent = replicatedStorage2:FindFirstChild("MainEvent")

    waitForChild = mainEvent or replicatedStorage2:WaitForChild("MainEvent", 10)

    if not waitForChild then
      warn("[Hook] MainEvent not found")
      return
    else
      function helper21(val208)

        if val208.n ~= 4 then
          return false
        else
          if (typeof(val208[1])) ~= "string" then
            return false
          else
            if (typeof(val208[2])) ~= "Vector3" then
              return false
            else
              if (typeof(val208[3])) ~= "Vector3" then
                return false
              else
                if (typeof(val208[4])) ~= "string" then
                  return false
                else
                  local val209 = #val208[4]

                  if val209 < 5 or val209 > 40 then
                    return false
                  else
                    local character17 = localPlayer.Character
                    local humanoidRootPart11 = character17

                    if character17 then

                      humanoidRootPart11 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    end

                    local element11 = humanoidRootPart11

                    if element11 and (val208[2] - element11.Position).Magnitude > 30 then
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

      function helper36(val210)
        local character18 = localPlayer.Character
        local humanoidRootPart12 = character18

        if character18 then

          humanoidRootPart12 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
        end

        local element12 = humanoidRootPart12

        if not element12 then
          return false
        else
          local val211 = 0
          local val212 = 0

          for i6 = 1, val210.n do
            local val213 = val210[i6]

            if (typeof(val213)) == "Vector3" then
              val211 = val211 + 1

              if (val213 - element12.Position).Magnitude < 10 then
                val212 = val212 + 1
              end
            end
          end

          return val211 >= 2 and val212 >= 1
        end
      end

      local element13 = getrawmetatable(game)
      namecall = element13.__namecall
      setreadonly(element13, false)
      val51 = false

      element13.__namecall = newcclosure(function(p50, ...)

        local val214 = (getnamecallmethod()) == "FireServer" and rawequal(p50, waitForChild)
local element14

        if val214 then
          element14 = table.pack(...)

          if config.KnifeSpamEnabled and helper21(element14) then
            namecall(p50, table.unpack(element14, 1, element14.n))
            local knifeSpamDelay = config.KnifeSpamDelay or 0.03
            local val215 = math.clamp(config.KnifeSpamCount or 4, 2, 8)
            local val216 = 1

            while true do
              val216 = 1 + val216

              if not (val215 >= val216) then
                break
              end

              task.delay(knifeSpamDelay * (val216 - 1), function()
                pcall(function()
                  namecall(p50, table.unpack(element14, 1, element14.n))
                  return
                end)

                return
              end)
            end

            return
          else
            if (helper36(element14)) then

              if config.ResolverEnabled and penablox.resolverOnShot then
                pcall(penablox.resolverOnShot, element14, element14[6])
              end

              local val217 = not val51
              local val218 = val217

              if val217 then
                local antiAimHoldOnShoot = config.AntiAimHoldOnShoot
                local val219 = antiAimHoldOnShoot

                if antiAimHoldOnShoot then
                  local aaController = penablox.aaController
                  local val220 = aaController

                  if aaController then
                    local val221 = penablox.aaController.isActive()

                    val220 = val221 and not (penablox.aaController.isHeld())
                  end

                  val219 = val220
                end

                val218 = val219
              end

              if val218 then
                val51 = true
                penablox.aaController.hold()
                local antiAimHoldTime = config.AntiAimHoldTime or 0.15
                local

                task.delay(antiAimHoldTime, function()
                  pcall(function()
                    namecall(waitForChild, table.unpack(element14, 1, element14.n))
                    return
                  end)

                  return
                end)

                task.delay(antiAimHoldTime + (config.AntiAimReEnableDelay or 0.3), function()
                  if penablox.aaController then
                    penablox.aaController.release()
                  end

                  val51 = false
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

      setreadonly(element13, true)

      warn("[Penablox] Unified hook loaded")
      warn("[Penablox] Fully loaded")

      return
    end
  end
end
