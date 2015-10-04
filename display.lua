local screen = peripheral.find("monitor")

assert(screen ~= nil)
screen.setCursorPos(1, 1)
screen.clear()
screen.setTextScale(1)

local screen_x, screen_y = screen.getSize()

local args = {...}
local message = args[1]
assert(message ~= nil)

local size = screen_x/message:len()

if size > 5 then size = 5
elseif size < 0.5 then size = 0.5 end

screen.setTextScale(size)

--get screen size again because text style changes it. Because reasons
screen_x, screen_y = screen.getSize()
local padding_x = (screen_x - message:len())/2 + 1
if padding_x < 1 then padding_x = 1 end

local padding_y = (screen_y - 1)/2
if padding_y < 1 then padding_y = 1 end

print("printing at scale "..size.."with padding "..padding_x..","..padding_y)

screen.setCursorPos(padding_x, padding_y)
screen.write(message)