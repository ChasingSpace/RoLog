local LogService = game:GetService("LogService")

local Modules = script.Parent
local Plugin = require(Modules:WaitForChild("Plugin"))(plugin)
local SendMessage = require(Modules:WaitForChild("SendMessage"))
local ColorMap = require(Modules:WaitForChild("ColorMap"))

LogService.MessageOut:Connect(function(message, messageType)
  if not Plugin.Active then return end

  local color = ColorMap[messageType]
  local success = SendMessage(string.format("{%s}%s{/%s}", color, message, color))
end)

Plugin.Button.Click:Connect(function()
  Plugin:SetActive(not Plugin.Active)

  if Plugin.Active then
    SendMessage("{bold}Connected!{/bold}")
  end
end)
