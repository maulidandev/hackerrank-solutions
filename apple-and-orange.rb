def countApplesAndOranges(s, t, a, b, apples, oranges)
    countFruit s, t, a, apples
    countFruit s, t, b, oranges
end

def countFruit(s, t, treeLocation, fruits)
    fruitsCount = 0
    (0..fruits.length-1).each do |index|
        fruits[index] += treeLocation

        if fruits[index] >= s && fruits[index] <= t
            fruitsCount += 1
        end
    end

    puts fruitsCount
end

st = gets.rstrip.split

s = st[0].to_i

t = st[1].to_i

ab = gets.rstrip.split

a = ab[0].to_i

b = ab[1].to_i

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges