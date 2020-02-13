def stock_picker(stocks)
  buy_day=0
  sell_day=1
  best_buy=0
  best_sell=1
  current_buy=stocks[buy_day]
  current_sell=stocks[sell_day]
  best_profit=0
  until buy_day == stocks.length
    new_profit=current_sell.to_i - current_buy.to_i
    if best_profit-new_profit<0 && new_profit>0
      best_profit=new_profit
      best_buy=buy_day
      best_sell=sell_day
      puts "first loop"
      puts "buy day #{buy_day}"
      puts "sell day #{sell_day}"
     
    end
    if sell_day===stocks.length
      buy_day+=1
      sell_day=buy_day+1
      current_buy=stocks[buy_day]
      current_sell=stocks[sell_day]
      puts "second if"
    else
      sell_day+=1
      current_sell=stocks[sell_day]
    end
  end
  puts "The day to buy on is the #{best_buy} the day to sell on is the #{best_sell}"
end

stock_picker([10,3,6,9,15,8,6,1,10])
