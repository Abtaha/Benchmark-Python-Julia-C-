using Statistics

function nIncrease(mat)
    inv(mat)
    transpose(mat)
end

function main()
    for i in 10000:2000:20000
        mat = rand(i, i)
        time = @elapsed nIncrease(mat)

        nIncrease(mat)
        println(time)
    end

    mat = rand(1000, 1000)
    mats_time = []
    for i in 1:5
        time = @elapsed nIncrease(mat)
        nIncrease(mat)
        
        push!(mats_time, time) 
    end

    meanTime = mean(mats_time)

    f = open("time taken.txt", "a")
    println(f, "Julia: " * string(meanTime))
    close(f)
end

println("Julia Started")
main()
println("Julia Ended\n\n")