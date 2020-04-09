def stock_picker(stocks)
	number_of_days = stocks.length
	max = 0
	buy_day = 0
	sell_day = 0
	
	for i in 0...number_of_days
		buy = stocks[i]
		sell_days = i + 1
		if (i == number_of_days - 1)
			next
		end
		for j in sell_days...number_of_days
			profit = stocks[j] - buy
			if profit > max
				max = profit
				buy_day = i
				sell_day = j
			end
		end
	end
	return [buy_day, sell_day]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
