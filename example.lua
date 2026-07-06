--[[
    ═══════════════════════════════════════════
    🏳️‍🌈 GAYFIELD — PREMIUM HVH TOOL
    ═══════════════════════════════════════════
    Загрузка:
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nikita2002grey-crypto/Gayfield/main/source.lua"))()
]]

-- 1. Загружаем Gayfield (Rayfield)
local Gayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/nikita2002grey-crypto/Gayfield/main/source.lua"))()

-- 2. Создаём окно
local Window = Gayfield:CreateWindow({
    Name = "🏳️‍🌈 Gayfield | Aimbot + ESP",
    LoadingTitle = "Loading Gayfield...",
    LoadingSubtitle = "🌈 Premium HVH Tool",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "Gayfield_Config",
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
})

-- ============================================
-- ВКЛАДКА AIMBOT
-- ============================================
local AimbotTab = Window:CreateTab("🎯 Aimbot", nil)

AimbotTab:CreateSection("Aimbot Settings")

AimbotTab:CreateToggle({
    Name = "Enable Aimbot",
    CurrentValue = false,
    Flag = "AimEnabled",
    Callback = function(Value)
        getgenv().AimEnabled = Value
        print(Value and "🎯 Aimbot ON" or "❌ Aimbot OFF")
    end
})

AimbotTab:CreateDropdown({
    Name = "Target Part",
    Options = {"Head", "UpperTorso", "HumanoidRootPart", "LeftArm", "RightArm"},
    CurrentOption = {"Head"},
    Flag = "AimTarget",
    Callback = function(Value)
        getgenv().AimTarget = Value[1]
    end
})

AimbotTab:CreateSlider({
    Name = "Aimbot FOV",
    Range = {5, 45},
    Increment = 1,
    CurrentValue = 15,
    Flag = "AimFOV",
    Callback = function(Value)
        getgenv().AimFOV = Value
    end
})

AimbotTab:CreateSlider({
    Name = "Smoothness (1=Sharp, 10=Smooth)",
    Range = {1, 10},
    Increment = 1,
    CurrentValue = 4,
    Flag = "AimSmooth",
    Callback = function(Value)
        local Smooth = 0.1 + (10 - Value) * 0.09
        getgenv().AimSmoothness = math.clamp(Smooth, 0.05, 0.95)
    end
})

AimbotTab:CreateToggle({
    Name = "Team Check",
    CurrentValue = false,
    Flag = "AimTeamCheck",
    Callback = function(Value)
        getgenv().AimTeamCheck = Value
    end
})

AimbotTab:CreateToggle({
    Name = "Wall Check",
    CurrentValue = false,
    Flag = "AimWallCheck",
    Callback = function(Value)
        getgenv().AimWallCheck = Value
    end
})

-- ============================================
-- ВКЛАДКА ESP
-- ============================================
local ESPTab = Window:CreateTab("👁️ ESP", nil)

ESPTab:CreateSection("ESP Settings")

ESPTab:CreateToggle({
    Name = "Enable ESP",
    CurrentValue = false,
    Flag = "ESPEnabled",
    Callback = function(Value)
        getgenv().ESPEnabled = Value
        print(Value and "👁️ ESP ON" or "🚫 ESP OFF")
    end
})

ESPTab:CreateToggle({
    Name = "Box ESP",
    CurrentValue = true,
    Flag = "ESPBox",
    Callback = function(Value)
        getgenv().ESPBox = Value
    end
})

ESPTab:CreateToggle({
    Name = "Tracers",
    CurrentValue = true,
    Flag = "ESPTracer",
    Callback = function(Value)
        getgenv().ESPTracer = Value
    end
})

ESPTab:CreateToggle({
    Name = "Health Bar",
    CurrentValue = true,
    Flag = "ESPHealth",
    Callback = function(Value)
        getgenv().ESPHealth = Value
    end
})

ESPTab:CreateToggle({
    Name = "Distance",
    CurrentValue = true,
    Flag = "ESPDistance",
    Callback = function(Value)
        getgenv().ESPDistance = Value
    end
})

ESPTab:CreateSlider({
    Name = "Max Distance",
    Range = {50, 500},
    Increment = 10,
    CurrentValue = 200,
    Flag = "ESPMaxDist",
    Callback = function(Value)
        getgenv().ESPMaxDist = Value
    end
})

-- ============================================
-- ВКЛАДКА HVH
-- ============================================
local HVHTab = Window:CreateTab("🔄 HVH", nil)

HVHTab:CreateSection("HVH Spin")

HVHTab:CreateToggle({
    Name = "Enable HVH",
    CurrentValue = false,
    Flag = "HVHEnabled",
    Callback = function(Value)
        getgenv().HVHEnabled = Value
        print(Value and "🔄 HVH ON" or "⏸️ HVH OFF")
    end
})

HVHTab:CreateDropdown({
    Name = "HVH Mode",
    Options = {"full_spin", "jitter", "fake", "desync", "legs_only", "arms_only"},
    CurrentOption = {"full_spin"},
    Flag = "HVHMode",
    Callback = function(Value)
        getgenv().HVHMode = Value[1]
    end
})

HVHTab:CreateSlider({
    Name = "Spin Speed",
    Range = {60, 720},
    Increment = 10,
    CurrentValue = 360,
    Flag = "HVHSpeed",
    Callback = function(Value)
        getgenv().HVHSpeed = Value
    end
})

HVHTab:CreateSlider({
    Name = "Jitter Amount (degrees)",
    Range = {10, 90},
    Increment = 5,
    CurrentValue = 45,
    Flag = "HVHJitter",
    Callback = function(Value)
        getgenv().HVHJitterAmount = Value
    end
})

-- ============================================
-- ВКЛАДКА INFO
-- ============================================
local InfoTab = Window:CreateTab("ℹ️ Info", nil)

InfoTab:CreateLabel("🏳️‍🌈 Gayfield v1.0")
InfoTab:CreateLabel("📌 Press INSERT to toggle menu")
InfoTab:CreateLabel("")
InfoTab:CreateLabel("🎯 Aimbot: F1 to toggle")
InfoTab:CreateLabel("👁️ ESP: F2 to toggle")
InfoTab:CreateLabel("🔄 HVH: F3 to toggle")
InfoTab:CreateLabel("")
InfoTab:CreateLabel("🔥 Powered by Rayfield")
InfoTab:CreateLabel("🌈 Forked with love")

-- ============================================
-- ОТКРЫТИЕ ОКНА
-- ============================================
Window:Open()

print("╔═══════════════════════════════════════╗")
print("║  🏳️‍🌈 GAYFIELD ACTIVATED 🏳️‍🌈        ║")
print("║  ✅ Aimbot ready                    ║")
print("║  ✅ ESP ready                       ║")
print("║  ✅ HVH ready                       ║")
print("║  📌 Press INSERT for menu           ║")
print("╚═══════════════════════════════════════╝")
