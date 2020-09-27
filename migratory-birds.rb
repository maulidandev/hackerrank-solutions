def migratoryBirds(arr)
    birds = Hash.new(0)
    arr.each {|bird| birds[bird] += 1 }

    max = birds.values.max
    mostBirds = 0

    birds.each do |bird, frequency|
        if frequency == max && (mostBirds > bird || mostBirds == 0)
            mostBirds = bird
        end
    end

    return mostBirds
end

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

print result