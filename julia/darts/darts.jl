function score(x, y)
    distance = sqrt(x^2 + y^2)  

    distance <= 1 && return 10
    distance <= 5 && return 5
    distance <= 10 && return 1

    return 0
end
