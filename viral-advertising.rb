def viralAdvertising(n)
    totalLike = 0
    peaple = 5

    (1..n).each do |i|
        peaple /= 2
        totalLike += peaple
        peaple *= 3
    end

    return totalLike
end

n = gets.to_i

result = viralAdvertising n

print result