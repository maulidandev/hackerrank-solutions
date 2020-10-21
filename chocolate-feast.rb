def chocolateFeast(n, c, m)
    current = (n/c).floor
    total = current

    while current >= m
        newChocolates = (current/m).floor

        total += newChocolates
        current = current - newChocolates * m + newChocolates
    end

    return total
end

t = gets.to_i

result = Array.new

t.times do |t_itr|
    ncm = gets.rstrip.split

    n = ncm[0].to_i

    c = ncm[1].to_i

    m = ncm[2].to_i

    result.push chocolateFeast n, c, m
end

print result.join("\n")