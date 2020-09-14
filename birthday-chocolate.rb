def birthday(s, d, m)
    total = 0

    for i in 0..s.length-1
        sum = s.slice(i, m).sum

        if sum == d
            total = total + 1
        end
    end

    return total
end

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday s, d, m

print result