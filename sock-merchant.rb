def sockMerchant(n, ar)
    socks = Hash.new(0)

    # count sock
    ar.each{|sock| socks[sock] += 1}

    # count sock can pair
    totalSocks = 0
    socks.each{|sock, total| totalSocks += (total/2).to_i}

    return totalSocks
end

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

puts result