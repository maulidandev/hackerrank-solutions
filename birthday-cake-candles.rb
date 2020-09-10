print "Masukkan banyak data :"
n = gets.chomp.to_i

print "Masukkan data : "
candles = gets.chomp
candles = candles.split(" ").map(&:to_i)

max = candles.max

tallestCandlesCount = 0

candles.each do |candle|
    if max == candle
        tallestCandlesCount += 1
    end
end

print "Jumlah lilin tertinggi : "
print tallestCandlesCount