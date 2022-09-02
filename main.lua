local discordia = require('discordia')
local json = require('json')
local client = discordia.Client()
local prefix = "Your prefix"

client:on('ready', function()
    client:setGame("Profile Status")
end)

local file = io.open('./token.txt')
local token = file:read('*a')
file:close()

client:run('Bot '.. token)
