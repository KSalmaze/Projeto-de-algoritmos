--[[
Sebastiao esta muito ocupado e que nao tem tempo para codar e resolveu pagar para que Mr.
Codificador do Futuro (CDF) escreva os programas para ele!
CDF deu a Sebastiao uma lista de assuntos com os quais ele e capaz de lidar, juntamente com
o numero de dias para completar cada assunto. Mas Sebastiao tem apenas D dias para completar o
trabalho passado pelo professor.
No entanto, o professor desta disciplina e um pouco flexıvel e permite entregas com ate 5 dias alem
da data limite. Isso significa que trabalho com D+5 dias nao serao aceitos.
Sera que CDF conseguira fazer o trabalho?

A primeira linha e um numero inteiro positivo T(T <= 100) que determina o numero de casos de
teste. Cada caso come¸ca com uma linha que contem um numero inteiro N, o numero de asssuntos que
CDF pode resolver. Cada uma das N linhas seguintes contem o nome de um tema seguido do numero
de dias para completa-lo. Todos os temas tem nomes distintos. A linha seguinte contem um numero
inteiro D, ja explicado neste texto. A linha seguinte contem o nome do assunto pedido pelo professor.
Todos os assuntos sao compostos por letras minusculas de no mınimo 1 e no maximo 20 caracteres.
Todos os inteiros de entrada sao positivos no intervalo [1,100].

Para cada caso de teste (come¸cando em 1), imprima: a) “Ufa!”, se CDF nao levar mais que D dias
para completar o trabalho; b) “Atrasado”, se levar mais que D dias, mas nao mais que D+5 e c) “Deu
ruim! Va trabalhar” se levar mais que D+5 dias ou se nao conseguir fazer o que foi pedido.
]]

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
end
