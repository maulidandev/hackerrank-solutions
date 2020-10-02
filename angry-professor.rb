# Complete the angryProfessor function below.
def angryProfessor(k, a)
    onTime = 0
    a.each do |student|
        if student <= 0
            onTime += 1
        end
    end

    return onTime < k ? "YES" : "NO"
end

t = gets.to_i

result = Array.new

t.times do |t_itr|
    nk = gets.rstrip.split

    n = nk[0].to_i

    k = nk[1].to_i

    a = gets.rstrip.split(' ').map(&:to_i)

    result.push angryProfessor(k, a)
end

print result.join("\n")