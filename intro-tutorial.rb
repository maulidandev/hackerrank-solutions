def introTutorial(v, arr)
    arr.each_with_index do |n, i|
        if n == v
            return i
        end
    end

    return -1
end

V = gets.to_i

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = introTutorial V, arr

print result