def utopianTree(n)
    height = 1

    if n == 0
        return height
    end

    (1..n).each do |i|
        if i % 2 == 1
            height *= 2
        else
            height += 1
        end
    end

    return height
end

t = gets.to_i

result = Array.new

t.times do |t_itr|
    n = gets.to_i

    result.push utopianTree(n)
end

print result.join("\n")