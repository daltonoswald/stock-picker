def stock_picker(stocks)
  # Initialize the earliest buyings, with profit and best dates
  buy_price = stocks[0]
  buy_date = 0
  potential_profit = 0
  best_dates = [0, 0]

  # Loop through the array with the index to get the date
  stocks.each_with_index { |stock, index|
    # Check if the value is less than our buying price
    # If so set the new buy offer to the current loop value
    if stock < buy_price
      buy_price = stock
      buy_date = index
    end
    # Get the profit of the current value minus the buying price
    # If the profit is higher than our previous best profit, set the new best values
    profit = stock - buy_price
    if profit > potential_profit
      potential_profit = profit
      best_dates = [buy_date, index]
    end
  }
  puts "$#{potential_profit}"
  puts best_dates
end

# Buy on Day 1, sell on Day 4 for a Profit of $12 (15-3)
stock_picker([17,3,6,9,15,8,6,1,10])
# Buy on Day 0, sell on Day 9 for a Profit of $9 (10-1)
stock_picker([1,2,3,4,5,6,7,8,9,10])
# Buy on Day 0, sell on Day 0 for a Profit of $0 (10-10)
stock_picker([10,9,8,7,6,5,4,3,2,1])