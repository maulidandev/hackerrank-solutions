def jumpingOnClouds(c, k)
    e = 100
    i = 0
    loop do
        e = decreaseEnergy(e, c[i], k)
        i = nextCloud(i, k, c.length)

        break if i == 0
    end

    return e
end

def decreaseEnergy(e, v, k)
    return e - (v * 2 + 1)
end

def nextCloud(i, k, n)
    return (i + k) % n
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c, k

print result