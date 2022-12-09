-- import libs
local component = require("component")
local computer = require("computer")

-- get info
    local info = computer.getDeviceInfo()

    -- cpu
    local cputier
    for k in pairs(info) do
        if info[k].class == "processor" then
            cputier = tostring((info[k].product):match("%d"))
        end
    end

    -- gpu
    local gputier
    for k in pairs(info) do
        if info[k].class == "gpu" then
            gputier = tostring((info[k].product):math("%d"))
        end
    end

    -- memory
    local memory
    freeMem = round(computer.freeMemory()/1000)
    totalMem = round(computer.totalMemory()/1000)
    freeMem=tostring(freeMem)
    totalMem=tostring(totalMem)

-- output info
print("CPU    | " .. cputier)
print("GPU    | " .. gputier)
print("Memory | " .. freeMem .. "KB /" .. totalMem .. "KB")