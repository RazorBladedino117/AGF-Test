-- Test Service
-- RazorBladedino117
-- October 20, 2020



local TestService = {Client = {}}

-- Custom Methods
function TestService.Client:KillAllPlayersExceptClient(Player)
    self.Server:KillAllPlayersExceptClient(Player)
    return 
end

function TestService:KillAllPlayersExceptClient(Player)
    local PlayersTbl = game:GetService('Players'):GetPlayers()

    for _, player in pairs(PlayersTbl) do
        if player ~= Player then
            local character = player.Character
            character.Humanoid.Health = 0
        end
    end
end

-- Start & Init
function TestService:Start()
	
end


function TestService:Init()
	
end


return TestService