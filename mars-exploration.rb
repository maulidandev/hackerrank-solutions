def marsExploration(s)
    sos = "SOS"
    brokenString = 0
    index = 0

    s.each_char do |c|
        if !c.eql? sos[index % 3]
            brokenString += 1
        end
        
        index += 1
    end

    return brokenString
end

s = gets.to_s.rstrip

result = marsExploration s

print result