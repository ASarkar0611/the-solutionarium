-- 3-Topping Pizzas [McKinsey SQL Interview Question]

SELECT CONCAT(p1.topping_name, ',', p2.topping_name, ',', p3.topping_name) AS pizza,
       (p1.ingredient_cost + p2.ingredient_cost + p3.ingredient_cost) as total_cost
FROM pizza_toppings p1
CROSS JOIN pizza_toppings p2
CROSS JOIN pizza_toppings p3
WHERE p1.topping_name < p2.topping_name
AND p2.topping_name < p3.topping_name
ORDER BY total_cost DESC, pizza;
