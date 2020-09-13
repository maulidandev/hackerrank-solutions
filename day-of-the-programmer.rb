# Complete the dayOfProgrammer function below.
def dayOfProgrammer(year)
    date = ".09." + year.to_s

    if year == 1918
        return "26" + date
    elsif (year <= 1917 && year % 4 == 0) || 
        (year >= 1919 && (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)))

        return "12" + date
    else
        return "13" + date
    end
end

year = gets.strip.to_i

result = dayOfProgrammer year

print result