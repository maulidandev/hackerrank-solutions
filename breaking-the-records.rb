def breakingRecords(scores)
    pointScores = Array.new(2, 0)

    if scores.length > 0
        min = scores[0]
        max = scores[0]

        scores.each do |score|
            if score < min
                min = score
                pointScores[1] += 1
            elsif score > max
                max = score
                pointScores[0] += 1
            end
        end
    end

    return pointScores
end

n = gets.chomp.to_i

scores = gets.rstrip.split(' ').map(&:to_i)

result = breakingRecords scores

print result.join " "