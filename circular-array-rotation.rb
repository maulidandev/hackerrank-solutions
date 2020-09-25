def circularArrayRotation(a, k, queries)
    k = k % a.length
    (1..k).each { a = moveLastToFirst a }

    result = Array.new

    queries.each do |query|
        result.push a[query]
    end

    return result
end

def moveLastToFirst(a)
    number = a.pop
    a.unshift number

    return a
end

nkq = gets.rstrip.split

n = nkq[0].to_i

k = nkq[1].to_i

q = nkq[2].to_i

a = gets.rstrip.split(' ').map(&:to_i)

queries = Array.new(q)

q.times do |i|
    queries_item = gets.to_i
    queries[i] = queries_item
end

result = circularArrayRotation a, k, queries

print result.join "\n"