"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""

function is_leap_year(year::Int)
	# first version
	# return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))

	div_by(x::Int) = year % x == 0 # generic function
	div_by(4) && (!div_by(100) || div_by(400))
end

