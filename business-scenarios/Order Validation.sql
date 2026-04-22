-- Validate order totals match line items
SELECT o.order_id,
       o.total_amount,
       SUM(oi.item_price * oi.quantity) AS calculated_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount
HAVING o.total_amount <> SUM(oi.item_price * oi.quantity);
