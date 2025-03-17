
local line = io.read()

local n, s = line:match("(%d+)%s+(%d+)")

print(n .. "-" .. s)

local input = io.read()

local vector = {}

for element in input:gmatch("%S+") do
    print(element)
end

print("End")