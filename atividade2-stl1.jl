
print("Teste 1")
t = parse(Int, readline())

print("Teste 2")
for i in 1:t

    n = parse(Int, readline())
    dictionary = Dict{String, Int}()

    for j in 1:n
        input = readline()
        parts = split(input)
        
        dictionary[parts[1]] = parse(Int, parts[2])
    end

    d = parse(Int, readline()) # dias para fazer o trabalho
    topic = readline()

    time = 0

    if(haskey(dictionary, topic))
        time = dictionary[topic]
    end

    if d >= time
        print("Case ", i, ": Ufa!")
    else
        if time <= d + 5
            print("Case ", i, ": Atrasado")
        else
            print("Case ", i, ": Deu ruim! Va trabalhar")
        end 
    end
end