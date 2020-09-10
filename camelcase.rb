
def camelcase(s)
    total = 1

    s.chars.each do |c|
        if c == c.upcase
            total += 1
        end
    end

    return total
end

print "Masukkan kalimat : "
s = gets.chomp.to_s

result = camelcase s

print "Total kata : #{result}"