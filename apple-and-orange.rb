def countApplesAndOranges(s, t, a, b, apples, oranges)
    (0..apples.length-1).each do |index|
        apples[index] += a
    end

    applesCount = 0
    apples.each do |apple|
        if apple >= s && apple <= t
            applesCount += 1
        end
    end

    puts applesCount

    (0..oranges.length-1).each do |index|
        oranges[index] += b
    end

    orangesCount = 0
    oranges.each do |orange|
        if orange >= s && orange <= t
            orangesCount += 1
        end
    end

    puts orangesCount
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