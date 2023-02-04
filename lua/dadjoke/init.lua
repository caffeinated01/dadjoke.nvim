local v = vim.api
local url = "https://icanhazdadjoke.com/"


local function curl(url)
  local handle = io.popen("curl -s " .. url)
  local result = handle:read("*a")
  handle:close()
  return result
end

local function dadjoke()
  -- Curl request
  local result = curl(url)
  -- Return result
  v.nvim_command("echo '" .. result .. "'")
end

dadjoke()

