local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local button = Instance.new("ImageButton", screenGui)
button.Image = "rbxassetid://12350783424"
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0, 10, 0, 10)

local sound = Instance.new("Sound", screenGui)
sound.SoundId = "rbxassetid://1845920681"

local image = Instance.new("ImageLabel", screenGui)
image.Image = "rbxassetid://11207015661"
image.Size = UDim2.new(0, 200, 0, 200)
image.Position = UDim2.new(0, 100, 0, 100)
image.Visible = false

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Ngô Xuân Đạt Bá Rõ", "All")

button.MouseButton1Click:Connect(function()
    sound:Play()
    button.Visible = false
    image.Visible = true
end)
