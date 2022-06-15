repeat wait(0.1) until game:IsLoaded()
if game.PlaceId ~= 45146873 then
--repeat wait() until workspace:FindFirstChild("Map")
if game.CoreGui:FindFirstChild("Players Cash") then game.CoreGui:FindFirstChild("Players Cash"):Destroy() end
local PlayersCash = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")

PlayersCash.Name = "Players Cash"
PlayersCash.Parent = game.CoreGui
PlayersCash.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = PlayersCash
Frame.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Frame.Position = UDim2.new(0.09929076580, 0, 0.099011132, 0)
Frame.Size = UDim2.new(0, 214, 0, 263)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0467289723, 0, 0.0231787972, 0)
ScrollingFrame.Size = UDim2.new(0, 194, 0, 247)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0103092771, 0, 0.0186658651, 0)
TextLabel.Size = UDim2.new(0, 166, 0, 42)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
local Player = TextLabel:Clone()
TextLabel:Destroy()
function updatebuttonpositions()
	local curr = 0
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("TextLabel") then
			curr = curr+1
			v.Position = UDim2.new( 0, 0, 0, v.Size.Y.Offset * (curr-1)) 
		end
	end
end
local curr = 0
for i,v in pairs(game.Players:GetPlayers()) do
--if v ~= game.Players.LocalPlayer then
curr = curr+1
local Text = Player:Clone()
Text.Text = ""--v.DisplayName
Text.Name = v.Name
Text.Position = UDim2.new( 0, 0, 0, Text.Size.Y.Offset * (curr-1)) 
Text.Parent = ScrollingFrame
    --end
end
game.Players.PlayerRemoving:Connect(function(plr)
	local name = plr.DisplayName
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == tostring(name) then
			v:Destroy()
		end
	end
	updatebuttonpositions()
end)
game.Players.PlayerAdded:Connect(function(plr)
local Text = Player:Clone()
Text.Text = ""
Text.Name = plr.Name
Text.Parent = ScrollingFrame
updatebuttonpositions()
end)
while wait(.250) do
for i,v in pairs(ScrollingFrame:GetChildren()) do
v.Text = ""..game.Players[v.Name].DisplayName .. "'s Cash: " .. game.Players[v.Name].Information.Cash.Value
    end
end
local function TZEOXUP_fake_script()  
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.1
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
end
end
coroutine.wrap(TZEOXUP_fake_script)()
