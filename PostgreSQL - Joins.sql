SELECT orders.order_id, customers.company_name
FROM orders JOIN customers
ON orders.customer_id = customers.customer_id

SELECT order_id, company_name
FROM orders 
JOIN customers USING(customer_id)

SELECT order_id, ship_via, shipped_date, customer_id, contact_name
FROM orders
JOIN customers USING(customer_id)

SELECT product_id, product_name, unit_price, units_in_stock, category_id, category_name
FROM products
JOIN categories USING(category_id)
WHERE unit_price > 30

SELECT order_id, order_date, ship_address, employee_id, last_name, first_name, birth_date, customer_id, company_name, contact_name
FROM orders
JOIN employees USING(employee_id)
JOIN customers USING(customer_id)
WHERE last_name LIKE 'B%'

SELECT order_id, freight ,customer_id, city ,region
FROM orders
LEFT JOIN customers USING(customer_id)
WHERE region IS NULL