-- Переписать предыдущий запрос, использовав симметричный вид джойна 
--(подсказка: речь о LEFT и RIGHT).


-- РЕШЕНИЕ 1
SELECT company_name, order_id
FROM orders
RIGHT JOIN customers ON customers.customer_id = orders.customer_id
WHERE customers.customer_id NOT IN (
    SELECT customer_id FROM orders
)

-- РЕШЕНИЕ 2
-- SELECT company_name, order_id
-- FROM orders
-- RIGHT JOIN customers ON customers.customer_id = orders.customer_id
-- WHERE order_id IS NULL
-- ORDER BY company_name

