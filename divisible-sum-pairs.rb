# Complete the divisibleSumPairs function below.
def divisibleSumPairs(n, k, ar)
    total = 0
    for i in 0..ar.length-2
        for j in i+1..ar.length-1
            if (ar[i] + ar[j]) % k == 0
                total += 1
            end
        end
    end

    return total
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = divisibleSumPairs n, k, ar

puts result