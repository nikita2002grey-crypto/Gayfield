-- ============================================
-- 🏳️‍🌈 GAYFIELD — ОДИН ФАЙЛ ДЛЯ ВСЕГО
-- ============================================

-- 1. Загружаем библиотеку
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
    KeySystem = false,
})

-- 3. Вкладка Aimbot
local AimbotTab = Window:CreateTab("🎯 Aimbot", nil)

AimbotTab:CreateSection("Aimbot Settings")

AimbotTab:CreateToggle({
    Name = "Enable Aimbot",
    CurrentValue = false,
    Flag = "AimEnabled",
    Callback = function(Value)
        getgenv().AimEnabled = Value
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

AimbotTab:CreateDropdown({
    Name = "Target Part",
    Options = {"Head", "UpperTorso", "HumanoidRootPart"},
    CurrentOption = {"Head"},
    Flag = "AimTarget",
    Callback = function(Value)
        getgenv().AimTarget = Value[1]
    end
})

-- 4. Вкладка ESP
local ESPTab = Window:CreateTab("👁️ ESP", nil)

ESPTab:CreateSection("ESP Settings")

ESPTab:CreateToggle({
    Name = "Enable ESP",
    CurrentValue = false,
    Flag = "ESPEnabled",
    Callback = function(Value)
        getgenv().ESPEnabled = Value
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

-- 5. Вкладка HVH
local HVHTab = Window:CreateTab("🔄 HVH", nil)

HVHTab:CreateSection("HVH Spin")

HVHTab:CreateToggle({
    Name = "Enable HVH",
    CurrentValue = false,
    Flag = "HVHEnabled",
    Callback = function(Value)
        getgenv().HVHEnabled = Value
    end
})

HVHTab:CreateDropdown({
    Name = "HVH Mode",
    Options = {"full_spin", "jitter", "fake", "desync"},
    CurrentOption = {"full_spin"},
    Flag = "HVHMode",
    Callback = function(Value)
        getgenv().HVHMode = Value[1]
    end
})

-- 6. Открываем окно
Window:Open()

print("🏳️‍🌈 Gayfield activated! Press INSERT to open menu.")
