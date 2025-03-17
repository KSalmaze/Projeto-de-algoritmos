local n, s = io.read():match("(%d+)%s+(%d+)")
n = tonumber(n)
s = tonumber(s)

local dictionary = {}
local counter = 0

for element in io.read():gmatch("%S+") do
    local temp = tonumber(element)

    if temp < s then

        counter = counter + (dictionary[s-temp] or 0)
        dictionary[temp] = (dictionary[temp] or 0) + 1
    end
end

print(counter)
