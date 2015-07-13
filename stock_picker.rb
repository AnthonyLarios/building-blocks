def stock_picker stock_prices
	size = stock_prices.length
	highest_difference = 0
	buying_day = 0
	buy_sell_days = []

	stock_prices.each do |buy_price|
		selling_day = buying_day + 1

		while stock_prices[selling_day] != nil
			price_difference = stock_prices[selling_day] - buy_price

			if price_difference > highest_difference
				highest_difference = price_difference
				buy_sell_days = [buying_day, selling_day]
			end

			selling_day += 1
		end

		buying_day += 1
	end

	p buy_sell_days
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])