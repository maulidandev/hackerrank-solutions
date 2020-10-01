# Complete the beautifulDays function below.
def beautifulDays(i, j, k)
    total = 0

    (i..j).each do |n|
        result = (n - reverseNumber(n)).abs % k
        if result == 0
            total += 1
        end
    end

    return total
end

def reverseNumber(n)
    reverse = 0
    while n > 0
        lastNumber = n % 10
        reverse = reverse * 10 + lastNumber

        n /= 10
    end

    return reverse
end

ijk = gets.rstrip.split

i = ijk[0].to_i

j = ijk[1].to_i

k = ijk[2].to_i

result = beautifulDays i, j, k

print result