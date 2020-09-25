def saveThePrisoner(n, m, s)
    m = m % n
    result = (s+m-1) % n

    return result == 0 ? n : result
end

t = gets.to_i

result = Array.new

t.times do |t_itr|
    nms = gets.rstrip.split

    n = nms[0].to_i

    m = nms[1].to_i

    s = nms[2].to_i

    result.push saveThePrisoner(n, m, s)
end

print result.join("\n")