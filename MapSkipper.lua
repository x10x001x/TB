    repeat wait(0.5) until game:IsLoaded() and game.Players.LocalPlayer
    if game.PlaceId == 49707852 or game.PlaceId == 46955756 then
    repeat wait()
    if not workspace.Map1.Type.Value ~= getgenv().map and workspace.Map2.Type.Value ~= getgenv().map and workspace.Map3.Type.Value ~= getgenv().map then
    workspace.Vote:InvokeServer('Veto')
    end
    
    if workspace.Map1.Type.Value == getgenv().map then
    workspace.Vote:InvokeServer('Map1')
    wait(0.1)
    workspace.SkipWaitVote:InvokeServer()
    
    elseif workspace.Map2.Type.Value == getgenv().map then
    workspace.Vote:InvokeServer('Map2')
    wait(0.1)
    workspace.SkipWaitVote:InvokeServer()
    
    elseif workspace.Map3.Type.Value == getgenv().map then
    workspace.Vote:InvokeServer('Map3')
    wait(0.1)
    workspace.SkipWaitVote:InvokeServer()
    end
    until workspace.Map1.Type.Value == getgenv().map or workspace.Map2.Type.Value == getgenv().map or workspace.Map3.Type.Value == getgenv().map
    end
