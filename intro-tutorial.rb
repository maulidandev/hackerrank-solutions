def introTutorial(v, arr)
    l = 0
    r = arr.length - 1

    while l <= r
        pivot = l + (r - l) / 2

        if arr[pivot] == v
            return pivot
        end

        if arr[pivot] < v
            l = pivot + 1
        else
            r = pivot - 1
        end
    end

    return -1
end

V = gets.to_i

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = introTutorial V, arr

print result