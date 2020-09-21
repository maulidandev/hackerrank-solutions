def pageCount(n, p)
    pageFromFront = turnFromFront n, p
    pageFromBack = (turnToLast n).to_i - pageFromFront

    if pageFromFront < pageFromBack
        return pageFromFront
    end

    return pageFromBack
end

def turnToLast(n)
    return (n/2).to_i
end

def turnFromFront(n, p)
    return (p/2).to_i
end

n = gets.to_i

p = gets.to_i

result = pageCount n, p

puts result