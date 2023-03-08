local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Tower script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

 

 

function Teleport(teleportPlace)

local player = game.Players.LocalPlayer

  player.Character.HumanoidRootPart.CFrame = teleportPlace

end

 

 

local Tab = Window:MakeTab({

	Name = "Tab 1",	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

 

getgenv().AutoFarm = true;

getgenv().AutoClick = true;

getgenv().AutoRebirth = true;

 

function AutoFarm()

    while getgenv().AutoFarm == true do

        Teleport(game:GetService("Workspace").WinParts.medieval1.CFrame)

        wait(0.1)

    end

end

 

function AutoClick()

    while getgenv().AutoClick == true do

        game:GetService("Players").LocalPlayer.PlayerGui.StarterJump.click.startbonus.LocalScript.event.click:FireServer(game:GetService("Players").LocalPlayer,0)

        wait(0.00001)

    end

end

function AutoRebirth()

  while getgenv().AutoRebirth == true do

      game:GetService("Players").LocalPlayer.PlayerGui.sidebuttons.RebirthFrame.Frame["1Earth"].RebirthButton.LocalScript.Script.Rebirth:FireServer(game:GetService("Players").LocalPlayer,22500,50)

    wait(0.001)

  end

end

OrionLib:MakeNotification({

	Name = "Made By",

	Content = "Z3AF Scripts On YT",

	Image = "rbxassetid://4483345998",

	Time = 5

})

 

 

 

Tab:AddToggle({

	Name = "Auto Farm",

	Default = false,

	Callback = function(Value)

		getgenv().AutoFarm = Value

        AutoFarm()

	end    

})

 

Tab:AddToggle({

	Name = "Auto Click",

	Default = false,

	Callback = function(Value)

		getgenv().AutoClick = Value

        AutoClick()

	end    

})

 

Tab:AddToggle({

	Name = "Auto Rebirth",

	Default = false,

	Callback = function(Value)

		getgenv().AutoRebirth = Value

        AutoRebirth()

	end    

})

 

--game:GetService("Workspace").WinParts.medieval1

 

--while wait() do

   --game:GetService("Players").LocalPlayer.PlayerGui.StarterJump.click.startbonus.LocalScript.event.click:FireServer(game:GetService("Players").LocalPlayer,0)

--end

 

 

 

 

OrionLib:Init()
