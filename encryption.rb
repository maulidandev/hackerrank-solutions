def encryption(s)
    length = Math.sqrt(s.length)
    max = length.ceil

    current = 0
    splitText = Array.new

    while current < s.length
        lastChar = current + max - 1

        splitText.push s[current..lastChar]
        current = lastChar + 1
    end

    result = Array.new

    (0..max).each do |i|
        text = ""

        splitText.each do |t|
            break if t[i].nil?

            text += t[i]
        end

        result.push text
    end

    return result.join(" ")
end

s = gets.to_s.rstrip

result = encryption s

puts result