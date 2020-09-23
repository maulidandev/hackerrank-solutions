def pickingNumbers(a)
    # Write your code here
    numbers = Hash.new(0)

    a.each {|number| numbers[number] += 1 }
    longestPair = 0

    (0..99).each do |index|
        length = numbers[index] + numbers[index+1]

        longestPair = [longestPair, length].max
    end

    return longestPair
end

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = pickingNumbers a

print result