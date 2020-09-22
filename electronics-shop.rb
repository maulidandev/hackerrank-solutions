def getMoneySpent(keyboards, drives, b)
    prices = Array.new

    keyboards.each do |keyboard|
        drives.each do |drive|
            price = keyboard + drive
            if price <= b
                prices.push(price)
            end
        end
    end

    if prices.length == 0
        return -1
    end

    return prices.max
end

bnm = gets.rstrip.split

b = bnm[0].to_i

n = bnm[1].to_i

m = bnm[2].to_i

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

moneySpent = getMoneySpent keyboards, drives, b

print moneySpent