def getPrimaryDiagonal(arr)
    primaryDiagonal = 0

    i = 0
    j = 0
    while i < arr.length
        primaryDiagonal += arr[i][j]

        i += 1
        j += 1
    end

    return primaryDiagonal
end

def getSecondaryDiagonal(arr)
    secondaryDiagonal = 0

    i = 0
    j = arr.length - 1
    while i < arr.length
        secondaryDiagonal += arr[i][j]

        i += 1
        j -= 1
    end

    return secondaryDiagonal
end

print "Masukkan banyaknya data : "
n = gets.chomp.to_i

arr = Array.new

for i in 0...n
    print "Masukkan data ke #{i+1} : "
    arr[i] = gets.chomp.split(" ").map(&:to_i)
end

primaryDiagonal = getPrimaryDiagonal(arr)
secondaryDiagonal = getSecondaryDiagonal(arr)

print "Difference : "
print (primaryDiagonal - secondaryDiagonal).abs