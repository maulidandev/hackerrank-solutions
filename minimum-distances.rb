def minimumDistances(a)
    distance = Hash.new(0)

    a.each_with_index do |n, i|
        next if distance[n] != 0

        index = a.each_index.select{|j| a[j] == a[i]}
        if index.length > 1
            distance[n] = (i - index[1]).abs
        end
    end

    min = distance.values.min

    return !min.nil? ? min : -1
end

n = gets.to_i

a = gets.rstrip.split(' ').map(&:to_i)

result = minimumDistances a

puts result