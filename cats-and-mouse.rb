def catAndMouse(x, y, z)
    catA = (x-z).abs
    catB = (y-z).abs

    if catA == catB
        return "Mouse C"
    end

    return catA < catB ? "Cat A" : "Cat B"
end

q = gets.to_i

result = Array.new

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i

    y = xyz[1].to_i

    z = xyz[2].to_i

    result.push(catAndMouse x, y, z)
end

print result.join("\n")