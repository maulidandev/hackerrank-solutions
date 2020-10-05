def permutationEquation(p)
    max = p.max
    result = Array.new
    (1..max).each do |x|
        index = 0
        p.each_with_index do |v, i|
            if x == v
                index = i + 1
                break
            end
        end

        y = 0
        p.each_with_index do |v, i|
            if index == v
                y = i + 1
                break
            end
        end

        result.push y
    end

    return result
end

n = gets.to_i

p = gets.rstrip.split(' ').map(&:to_i)

result = permutationEquation p

print result.join "\n"