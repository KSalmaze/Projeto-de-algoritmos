local t = tonumber(io.read())
local n = tonumber(io.read())

print(t)
print(n)

for i=1, t do

    -- dicionario de assuntos

    for j=1, n do
        local a, b = io.read():match("(%S+)%s+(%d+)")
        print(a)
        print()
    end

    local d = tonumber(io.read())

    -- processamento dos prazos
end
