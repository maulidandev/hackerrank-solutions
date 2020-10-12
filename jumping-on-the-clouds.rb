def jumpingOnClouds(c)
    i = 0
    totalJump = 0
    while i != c.length - 1
        if c[i+2] == 0
            i += 2
        else
            i += 1
        end

        totalJump += 1
    end

    return totalJump
end

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

puts result