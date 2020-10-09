def jumpingOnClouds(c, k)
    e = 100
    i = 0
    loop do
        v = c[i]
        e = decreaseEnergy(e, v, i, k)
        i = nextCloud(i, k, c)

        break if i == 0
    end

    return e
end

def decreaseEnergy(e, v, i, k)
    e -= 1

    if v > 0
        e -= 2
    end

    return e
end

def nextCloud(i, k, c)
    i += k
    if i >= c.length
        i = i - c.length
    end
    
    return i
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c, k

print result