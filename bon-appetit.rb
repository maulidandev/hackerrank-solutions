def bonAppetit(bill, k, b)
    total = 0

    bill.each_with_index do |money, index|
        if index != k
            total += money
        end
    end

    return bonAppetitResult total, b
end

def bonAppetitResult(total, b)
    difference = b - total/2

    if(difference != 0)
        return difference
    end

    return "Bon Appetit"
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

result = bonAppetit bill, k, b

puts result