--[[


https://discord.com/invite/jtZn2vVHKr

[Fixes] = Fixed game joiner.

------------------------------------
[!] = In Beta version.

[!] = Create file in your Exploit autoexec folder "AutoFarm.lua" or other name.

[!] = If you using loadstring then add these strings:

getgenv().ScriptKey = ""--Script key, if there will be no key or if it will be wrong, it will not run the Script.

getgenv().map = "Snowy Forest"--Map that you want.

getgenv().tower = "Scout"--Tower that you want to use (1 tower only)

getgenv().position = Vector3.new(44.919334411621,213.59652709961,13.184490203857)--Position where your tower will be auto placed(change it if you choosed not snowy forest)

getgenv().ShittoPc = true--Decreases lags true enable/false disable.

getgenv().webhook = ""--sends message in webhook that u put.


]]
--Example:
-- <-- remove that string and the arrow with text getgenv().ScriptKey = ""
-- <-- remove that string and the arrow with text getgenv().map = "Snowy Forest"
-- <-- remove that string and the arrow with text getgenv().tower = "Scout"
-- <-- remove that string and the arrow with text getgenv().position = Vector3.new(44.919334411621,213.59652709961,13.184490203857)
-- <-- remove that string and the arrow with text getgenv().ShittoPc = true
-- <-- remove that string and the arrow with text getgenv().webhook = ""
game.Players.LocalPlayer:Kick("Discontinued")
