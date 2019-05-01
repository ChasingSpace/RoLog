local HttpService = game:GetService("HttpService")

local API_URL = "http://localhost:51129/message"
local UPDATE_TIME = 0.5

local MessageQueue = {}

local Modules = script.Parent
local Plugin = require(Modules:WaitForChild("Plugin"))

local function SendMessages()
  local success, response = pcall(function()
    return HttpService:RequestAsync({
      Url = API_URL,
      Method = "POST",
      Body = HttpService:JSONEncode({
        messages = MessageQueue
      }),
      Headers = {
        ["Content-Type"] = "application/json"
      }
    })
  end)

  if not success then
    Plugin:SetActive(false)

    if response:find("Http requests are not enabled. Enable via game settings") then
      -- A lot of this is probably unnecessary, but if this helps even one person, then it's worth it.
      return warn("Http requests are not enabled.\n" ..
                  "In the \"Home\" tab in Roblox Studio, click \"Game Settings\"\n" ..
                  "In the new window, select \"Options\" on the side, and set \"Allow HTTP Requests\" to \"On\"")
    elseif response:find("ConnectFail") then
      return warn("RoLog cannot connect to the server.\n" ..
                  "If the server is running, please check your firewall settings.")
    else
      return warn("RoLog is unable to successfully send messages.\n" .. response)
    end
  end

  if not response.Success then
    -- This typically means that it *could* make a connection, so the server is sending a message.
    Plugin:SetActive(false)
    return warn(string.format("RoLog: HTTP %d - %s", response.StatusCode, response.StatusMessage))
  end
end

spawn(function()
  while wait(UPDATE_TIME) do
    if Plugin.Active and #MessageQueue > 0 then
      SendMessages()
      MessageQueue = {}
    end
  end
end)

return function(message)
  table.insert(MessageQueue, message)
end
