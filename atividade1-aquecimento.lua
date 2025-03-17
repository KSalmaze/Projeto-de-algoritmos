local line = io.read()
local n, s = line:match("(%d+)%s+(%d+)")
n = tonumber(n)
s = tonumber(s)

local input = io.read()

local dictionary = {}
local counter = 0

for element in input:gmatch("%S+") do
    local temp = tonumber(element)

    if temp < s then
        if dictionary[math.floor(s - temp)] then
            counter = counter + dictionary[s - temp]
        end
    
        if dictionary[temp] then 
            dictionary[temp] = dictionary[temp] + 1
        else
            dictionary[temp] = 1
        end
    end
end

print(counter)