repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
for _, s in pairs(game.Players:GetPlayers()) do
print("------------Player Towers--------------------------")
print(''..s.DisplayName.."'s Tower 1: "..s.StuffToSave.Tower1.Value)
print(''..s.DisplayName.."'s Tower 2: "..s.StuffToSave.Tower2.Value)
print(''..s.DisplayName.."'s Tower 3: "..s.StuffToSave.Tower3.Value)
print(''..s.DisplayName.."'s Tower 4: "..s.StuffToSave.Tower4.Value)
print(''..s.DisplayName.."'s Tower 5: "..s.StuffToSave.Tower5.Value)
print("---------------------------------------------------")
end
