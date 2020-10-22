def workbook(n, k, arr)
    total = 0
    page = 1

    (1..n).each do |i|
        (1..arr[i-1]).each do |j|
            if page == j
                total += 1
            end

            if j % k == 0 && j != arr[i-1]
                page += 1
            end
        end

        page += 1
    end

    return total
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = workbook n, k, arr

puts result