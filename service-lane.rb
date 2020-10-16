# Complete the serviceLane function below.
def serviceLane(n, cases, width)
    result = Array.new

    cases.each do |c|
        result.push width[c[0]..c[1]].min
    end

    return result
end

nt = gets.rstrip.split

n = nt[0].to_i

t = nt[1].to_i

width = gets.rstrip.split(' ').map(&:to_i)

cases = Array.new(t)

t.times do |i|
    cases[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = serviceLane n, cases, width

puts result.join "\n"