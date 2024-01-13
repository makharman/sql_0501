-- Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и order_id.


-- РЕШЕНИЕ 1
SELECT company_name, order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id NOT IN (
    SELECT customer_id FROM orders
)

-- РЕШЕНИЕ 2

-- SELECT company_name, order_id
-- FROM customers
-- LEFT JOIN orders ON customers.customer_id = orders.customer_id
-- WHERE order_id IS NULL
-- ORDER BY company_name