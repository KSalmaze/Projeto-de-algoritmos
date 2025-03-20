
local n = tonumber(io.read())

local querys = {}

for i=1, n do
    local const, id, time = io.read():match("(%S+)%s+(%d+)%s+(%d+)")
    id, time = tonumber(id, time)
    querys[time] = id;
end
table.sort(querys)

local k = tonumber(io.read())

print("----------")

-- iniciar processamento

--[[
for i=1, #querys do
    print("key " .. querys[i] .. " result " .. querys[i])
end
]]
