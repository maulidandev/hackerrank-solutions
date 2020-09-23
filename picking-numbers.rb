def pickingNumbers(a)
    # Write your code here
    numbers = Hash.new(0)

    a.each {|number| numbers[number] += 1 }

    keys = numbers.keys.sort
    longestPair = numbers.values.max

    keys.each_with_index do |key, index|
        if index < keys.length - 1
            difference = (key - keys[index+1]).abs

            if difference <= 1
                length = numbers[key] + numbers[keys[index+1]]
 
                longestPair = longestPair < length ? length : longestPair
            end
        end
    end

    return longestPair
end

n = gets.strip.to_i

a = gets.rstrip.split.map(&:to_i)

result = pickingNumbers a

print result