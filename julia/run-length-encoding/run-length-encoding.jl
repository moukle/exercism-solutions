function add_e(ans, c, count)
    count > 1 && (ans *= string(count))
    ans   *= c
    ans
end

function encode(s)
    last_c = ""
    count  = 1
    ans    = ""

    for c ∈ s
        if last_c == c
            count += 1
        else
            ans = add_e(ans, last_c, count)
            count = 1
        end
        last_c = c
    end
    ans = add_e(ans, last_c, count)
    ans
end


function add_d(ans, c, count_str)
    count = 1
    count_str != "" && (count = parse(Int, count_str))
    return ans * c^count
end

function decode(s)
    count_str = ""
    ans   = ""

    for c ∈ s
        if isdigit(c)
            count_str *= c
        else
            ans = add_d(ans, c, count_str)
            count_str = ""
        end
    end
    ans
end
