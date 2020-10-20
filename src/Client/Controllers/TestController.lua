-- Test Controller
-- RazorBladedino117
-- October 20, 2020



local TestController = {}

local KILL_ALL_KEY = Enum.KeyCode.E

function TestController:Start()
    local inputConnection = game:GetService('UserInputService').InputBegan:Connect(function(Input, Proccessed)
        if Proccessed then return end

        if Input.KeyCode == KILL_ALL_KEY then
            self.Services.TestService:KillAllPlayersExceptClient()
        end
    end)
end


function TestController:Init()
	
end


return TestController