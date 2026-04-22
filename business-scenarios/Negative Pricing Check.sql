-- Identify invalid negative pricing
SELECT quote_id, product_id, final_price
FROM quote_line_items
WHERE final_price < 0;
