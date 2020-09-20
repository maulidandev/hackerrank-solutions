def biggerIsGreater(w)
    i = w.length - 2
    while i >= 0
        if w[i] < w[i+1]
            w = w.split("")

            # find first next alphabet index greater than w[i]
            min = w[i+1..w.length-1].min{|a, b| a<=>b and w[i]<=>a}
            j = w[i+1..w.length-1].index(min)

            # swap
            w[i], w[i+1+j] = w[i+1+j], w[i]

            # sort
            w[i+1..w.length-1] = w[i+1..w.length-1].sort

            return w.join
        end

        i -= 1
    end
    
    return "no answer"
end

T = gets.to_i

result = Array.new

T.times do |t_itr|
    w = gets.to_s.rstrip

    result.push(biggerIsGreater w)

end

print result.join("\n")