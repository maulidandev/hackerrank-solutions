alicePoint = 0
bobPoint = 0

print "Masukkan Triplet Alice : "
aliceTriplets = gets.chomp

print "Masukkan Triplet Bob : "
bobTriplets = gets.chomp

aliceTriplets = aliceTriplets.split(" ").map(&:to_i)
bobTriplets = bobTriplets.split(" ").map(&:to_i)

i = bobTriplets.length-1

for aliceTriplet in aliceTriplets 
    if aliceTriplet > bobTriplets[i]
        alicePoint += 1
    elsif aliceTriplet < bobTriplets[i]
        bobPoint += 1
    end

    i -= 1
end

puts "Point Alice : #{alicePoint}"
puts "Point Bob #{bobPoint}"