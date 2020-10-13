# Complete the equalizeArray function below.
def equalizeArray(arr)
    number = Hash.new(0)

    arr.each do |n|
        number[n] += 1
    end

    return arr.length - number.values.max
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = equalizeArray arr

print result