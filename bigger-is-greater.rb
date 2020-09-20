def biggerIsGreater(w)
    i = w.length - 2
    while i >= 0
        if w[i] < w[i+1]
            w = w.split("")

            # find first next alphabet index greater than w[i]
            j = getNextAlphabetIndex(w[i..w.length-1])

            # swap
            w[i], w[i+j] = w[i+j], w[i]

            # sort
            w[i+1..w.length-1] = w[i+1..w.length-1].sort

            return w.join
        end

        i -= 1
    end
    
    return "no answer"
end

def getNextAlphabetIndex(w)
    min = w[1..w.length-1].min{|a, b| a<=>b and w[0]<=>a}
    j = w[1..w.length-1].index(min) 

    return j+1
end

T = gets.to_i

result = Array.new

T.times do |t_itr|
    w = gets.to_s.rstrip

    result.push(biggerIsGreater w)

end

print result.join("\n")