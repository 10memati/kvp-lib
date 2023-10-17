local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local guiVisible = false

local gui = Instance.new("ScreenGui")
gui.Name = "MyGui"
gui.Parent = Players.LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui

-- Başlık bölümü
local titleFrame = Instance.new("Frame")
titleFrame.Size = UDim2.new(1, 0, 0, 50)
titleFrame.BackgroundColor3 = Color3.new(0, 0.2, 0.4) -- Başlık rengi
titleFrame.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.Text = "Başlık"
titleLabel.FontSize = Enum.FontSize.Size24
titleLabel.TextColor3 = Color3.new(1, 1, 1) -- Başlık metin rengi
titleLabel.Parent = titleFrame

-- İçerik bölümü
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 1, -50) -- Başlık bölümünün altında
contentFrame.Position = UDim2.new(0, 0, 0, 50) -- Başlık bölümünün üzerinde
contentFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- İçerik rengi
contentFrame.Parent = mainFrame

local contentTextLabel = Instance.new("TextLabel")
contentTextLabel.Size = UDim2.new(1, -20, 1, -20) -- Kenar boşlukları
contentTextLabel.Position = UDim2.new(0, 10, 0, 10)
contentTextLabel.Text = "Bu bir örnek içeriktir. İstediğiniz metni buraya ekleyebilirsiniz."
contentTextLabel.FontSize = Enum.FontSize.Size18
contentTextLabel.TextColor3 = Color3.new(1, 1, 1)
contentTextLabel.TextWrapped = true
contentTextLabel.Parent = contentFrame

local function showGui()
    guiVisible = true
    gui.Enabled = true
end

local function hideGui()
    guiVisible = false
    gui.Enabled = false
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.P then
            if guiVisible then
                hideGui()
            else
                showGui()
            end
        end
    end
end)

hideGui()
