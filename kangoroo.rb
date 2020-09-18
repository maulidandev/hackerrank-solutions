def kangaroo(x1, v1, x2, v2)
    if v1 > v2
        j = (x2 - x1) % (v1 - v2)

        if j == 0
            return "YES"
        end
    end

    return "NO"
end

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

print result