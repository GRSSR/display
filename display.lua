local screen = peripheral.find("monitor")

assert(screen ~= nil)

local screenX, screenY = screen.getSize()

local message = {...}

screen.write(message)