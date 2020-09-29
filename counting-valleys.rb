def countingValleys(steps, path)
    total = 0
    currentPosition = 0

    path.each_char do |c|
        if c == "U"
            currentPosition += 1
        else
            currentPosition -= 1
        end

        if currentPosition == 0 && c == "U"
            total += 1
        end
    end

    return total
end

steps = gets.strip.to_i

path = gets.chomp

result = countingValleys steps, path

print result