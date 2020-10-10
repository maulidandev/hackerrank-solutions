def cutTheSticks(arr)
    result = Array.new
    while arr.length != 0 do
        result.push arr.length
        arr.delete(arr.min)
    end

    result
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = cutTheSticks arr

puts result.join "\n"