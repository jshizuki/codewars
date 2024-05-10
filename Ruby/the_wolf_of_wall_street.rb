def get_max_profit(stock_prices_yesterday)
  best_sold_price = stock_prices_yesterday[1]
  best_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

  until stock_prices_yesterday.length == 1

    stock_prices_yesterday.each_with_index do |current_price, index|
      next if index.zero?

      potential_profit = current_price - stock_prices_yesterday[0]

      if potential_profit > best_profit
        best_profit = potential_profit
        best_sold_price = current_price
      end
    end
    stock_prices_yesterday.shift
  end
  [best_sold_price - best_profit, best_sold_price, best_profit]
end

p get_max_profit([10, 7, 5, 8, 18, 4])
