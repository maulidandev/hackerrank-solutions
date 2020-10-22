def workbook(n, k, arr)
    total = 0
    page = 1
    problem = 0
    chapter = 1

    while chapter <= n
        newProblem = [k + problem, arr[chapter-1]].min

        if page <= newProblem and page > problem
            total += 1
        end

        problem = newProblem
        page += 1

        if problem >= arr[chapter-1]
            chapter += 1
            problem = 0
        end
    end

    return total
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = workbook n, k, arr

puts result