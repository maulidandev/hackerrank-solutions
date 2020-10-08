def introTutorial(v, arr)
    arr.find_index v
end

V = gets.to_i

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = introTutorial V, arr

print result