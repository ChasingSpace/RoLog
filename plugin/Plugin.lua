local Plugin = {
  Active = false
}

function Plugin:SetActive(val)
  self.Active = val
  self.Button:SetActive(val)
end

return setmetatable(Plugin, {
  __call = function(self, plugin)
    self.Toolbar = plugin:CreateToolbar("RoLog")
    self.Button = self.Toolbar:CreateButton("RoLog", "Mirror your output messages to your Terminal", "")
    return self
  end
})
