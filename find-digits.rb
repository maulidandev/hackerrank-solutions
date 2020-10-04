def findDigits(n)
    total = 0
    n.to_s.each_char do |number|
        if number.to_i != 0 && n % number.to_i == 0
            total += 1
        end
    end

    return total
end

t = gets.to_i

result = Array.new

t.times do |t_itr|
    n = gets.to_i

    result.push findDigits(n)
end

print result.join("\n")