def extraLongFactorials(n)
    if(n == 1)
        return 1
    end

    return n * extraLongFactorials(n - 1)
end

n = gets.to_i

result = extraLongFactorials n

print result