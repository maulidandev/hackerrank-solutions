def cutTheSticks(arr)
    result = Array.new
    loop do
        break if arr.length == 0

        result.push arr.length

        min = arr.min
        (0..arr.length-1).each do |i|
            arr[i] -= min
        end
        arr.delete(0)
    end

    result
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = cutTheSticks arr

puts result.join "\n"