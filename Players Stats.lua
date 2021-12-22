repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
for _, s in pairs(game.Players:GetPlayers()) do
print("------------Tower Battles Player Stats------------")
print(''..s.DisplayName.."'s Credits: "..s.StuffToSave.Credits.Value)
print(''..s.DisplayName.."'s Wins: "..s.StuffToSave.Wins.Value)
print(''..s.DisplayName.."'s Loses: "..s.StuffToSave.Loses.Value)
print("--------------------------------------------------")
end
