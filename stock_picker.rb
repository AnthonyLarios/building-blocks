def stock_picker stock_prices
  #initialize the variables that store:
  highest_difference = 0  #highest buy/sell difference
  buying_day = 0      #the first possible day to buy
  buy_sell_days = []    #the buy and sell days into an array

  #iterate through every possible way to buy and sell
  stock_prices.each do |buy_price|
    #start with first possible day to sell
    selling_day = buying_day + 1

    while stock_prices[selling_day] != nil
      price_difference = stock_prices[selling_day] - buy_price

      if price_difference > highest_difference
        #record the current highest difference and its buy/sell days
        highest_difference = price_difference
        buy_sell_days = [buying_day, selling_day]
      end

      selling_day += 1
    end

    buying_day += 1
  end

  #the array is empty when all differences are 0 or less
  if buy_sell_days = []
    puts "There is no buy and sell combination that yeilds a profit."
  else
    p buy_sell_days
  end
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
