
local line = io.read()

local n, s = line:match("(%d+)%s+(%d+)")

print(n .. "-" .. s)

local input = io.read()

local vector = {}
-- Dicionario de Numero (menor q o S) -> Quantas vezes apareceu
-- Contador de pares = 0

for element in input:gmatch("%S+") do
    print(element)
    -- Se o elemento for maior que o numero
    --    proxima repeticao

    -- Se dicionario.contains(S - element) 
    --    pares += dicionario[S - element]

    -- Se dicionario.contains(S)
    --    dicionario[S]++
    -- Se nao
    --    dicionario.add(element, 1)

end

print("End")