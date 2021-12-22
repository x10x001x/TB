repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
for _, xz in pairs(game.Players:GetPlayers()) do
print("------------Tower Battles Player Stats------------")
print(''..xz.DisplayName.."'s Credits: "..xz.StuffToSave.Credits.Value)
wait(0.1)
print(''..xz.DisplayName.."'s Wins: "..xz.StuffToSave.Wins.Value)
wait(0.1)
print(''..xz.DisplayName.."'s Loses: "..xz.StuffToSave.Loses.Value)
print("")--void string
end
