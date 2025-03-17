--[[ Enunciado
Dado um vetor v de n inteiros (1 ≤ n ≤ 106) e um inteiro s, calcule a quantidade de pares (vi
, vj ),1 ≤ i, j, ≤ n, de elementos do vetor cuja soma ´e s. Nota: 1 ≤ vi ≤ 10000 e 1 ≤ s ≤ 10000

A primeira linha da entrada cont´em os valores de n e s, separados por um espa¸co em branco. Na
linha subsequente, os n inteiros separados por um espa¸co em branco.

Imprima, em uma ´unica linha, a quantidade de pares encontrada.
]]

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
