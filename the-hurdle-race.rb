def hurdleRace(k, height)
    if height.max <= k
        return 0
    end

    return (k - height.max).abs
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

height = gets.rstrip.split(' ').map(&:to_i)

result = hurdleRace k, height

print result