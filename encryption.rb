def encryption(s)
    n = s.length
    max = Math.sqrt(n)
    column = max.ceil

    result = ""

    i = 0
    while i < column

        j = i
        while j < n
            result += s[j]

            j += column
        end

        result += " "
        i += 1
    end

    return result
end

s = gets.to_s.rstrip

result = encryption s

puts result