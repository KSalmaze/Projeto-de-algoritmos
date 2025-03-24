
local n = tonumber(io.read())

local querys_id = {}
local times = {}

for i=1, n do
    local const, id, time = io.read():match("(%S+)%s+(%d+)%s+(%d+)")
    id = tonumber(id)
    time = tonumber(time)

    querys_id[i] = id

    times[i] = {time, i};
end

for i=1, #times do
    print("i: " .. i .. " times i: " .. times[i][1] .. " times i 1: " .. times[i][2])
end

table.sort(times, function (a,b)
    return a[1] < b[1]
end)

for i=1, #times do
    print("i: " .. i .. " times i: " .. times[i][1] .. " times i 1: " .. times[i][2])
end








--[[

local k = tonumber(io.read())

print("----------")

-- iniciar processamento

for key in querys do
    print("Key: " .. key .. " content: " .. querys[key])
end
]]