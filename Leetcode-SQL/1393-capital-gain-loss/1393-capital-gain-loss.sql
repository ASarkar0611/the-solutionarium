# Write your MySQL query statement below
select stock_name, (total_sp - total_bp) as capital_gain_loss

from (select stock_name, sum(buy_price) as total_bp,
       sum(sell_price) as total_sp

from (select stock_name,
       ifnull(case operation
        when "Buy" then price
       end,0) as buy_price,
       ifnull(case operation
        when "Sell" then price
       end,0) as sell_price
from stocks) t

group by stock_name) t1