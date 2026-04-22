-- Identify missing pricing values
SELECT quote_id, product_id
FROM quote_line_items
WHERE base_price IS NULL
   OR final_price IS NULL;
