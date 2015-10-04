local screen = peripheral.find("monitor")

assert(screen ~= nil)

local screen_x, screen_y = screen.getSize()

local args = {...}
local message = args[1]
assert(message ~= nil)
local size = screen_y

local padding = (screen_x - message:len()*size)/2
if padding < 1 then padding = 1 end
print("printing at scale "..size.."with padding"..padding+1)
screen.setTextScale(size)
screen.setCursorPos(padding+1, 1)
screen.write(message)