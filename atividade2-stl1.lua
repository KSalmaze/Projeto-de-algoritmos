local t = tonumber(io.read())

for i=1, t do
    local n = tonumber(io.read())

    local dictionary = {}

    for j=1, n do
        local a, b = io.read():match("(%S+)%s+(%d+)")
        dictionary[a] = tonumber(b)
    end

    local d = tonumber(io.read()) -- tempo para fazer a atividade
    local topic = io.read()

    local time_taken = (dictionary[topic] or 100)

    if d >= time_taken then
        print("Case " .. i .. ": Ufa!")
    else
        if time_taken <= d + 5 then
            print("Case " .. i .. ": Atrasado")
        else
            print("Case " .. i .. ": Deu ruim! Va trabalhar")
        end
    end

    -- processamento dos prazos
end
