if game.PlaceId == 7540250405 then

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Robloxia Prison Script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Robloxia Prison Script",
   LoadingSubtitle = "by arustico",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image\
local MainSection = MainTab:CreateSection("Scripts")

local Button = MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Aimbot (Deletemob V2 Credits to: Mick Gordon)",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Mick-gordon/Hyper-Escape/main/DeleteMobV2.lua", true))()
   end,
})

local MainSection = MainTab:CreateSection("Player")

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {50, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local TeleportsTab = Window:CreateTab("Teleport", nil) -- Title, Image\
local Paragraph = TeleportsTab:CreateParagraph({Title = "Criminal Spawns and Police spawns", Content = "Is Detected because it spawns on their checkpoint, and when there is someone around you saw it, they immediately report you, IF YOUR ROLE IS DIFFERENT"})
local Section = TeleportsTab:CreateSection("Criminal Spawns")

local Button = TeleportsTab:CreateButton({
   Name = "Hangar",
   Callback = function()
        local NEW_POS = CFrame.new(1302, 89, -187) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Button = TeleportsTab:CreateButton({
   Name = "Mafia Base",
   Callback = function()
        local NEW_POS = CFrame.new(27, 55, 1635) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Section = TeleportsTab:CreateSection("Police Spawns")

local Button = TeleportsTab:CreateButton({
   Name = "Central Armory",
   Callback = function()
        local NEW_POS = CFrame.new(-208, 99, 60) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Button = TeleportsTab:CreateButton({
   Name = "Reception Armory",
   Callback = function()
        local NEW_POS = CFrame.new(-619, 99, 149) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Section = TeleportsTab:CreateSection("Get Key")

local Button = TeleportsTab:CreateButton({
   Name = "Keycard",
   Callback = function()
        local NEW_POS = CFrame.new(-739, 99, 96) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Section = TeleportsTab:CreateSection("Armory")

local Button = TeleportsTab:CreateButton({
   Name = "Armory beside Prison Yard B (kind of detected)",
   Callback = function()
        local NEW_POS = CFrame.new(-495, 99, 86) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Button = TeleportsTab:CreateButton({
   Name = "Apex firepower (Beside the Motel)",
   Callback = function()
        local NEW_POS = CFrame.new(14, 55, 1018) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

local Section = TeleportsTab:CreateSection("Escape")

local Button = TeleportsTab:CreateButton({
   Name = "Escape from Prison",
   Callback = function()
        local NEW_POS = CFrame.new(-880, 99, -591) -- Replace the 0,0,0 with the actual location
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = NEW_POS
   end,
})

end