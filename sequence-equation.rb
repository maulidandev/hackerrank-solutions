def permutationEquation(p)
    max = p.max
    result = Array.new
    (1..max).each do |x|
        index = p.find_index(x) + 1
        y = p.find_index(index) + 1

        result.push y
    end

    return result
end

n = gets.to_i

p = gets.rstrip.split(' ').map(&:to_i)

result = permutationEquation p

print result.join "\n"