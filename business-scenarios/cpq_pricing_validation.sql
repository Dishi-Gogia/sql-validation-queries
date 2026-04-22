-- Validate discount calculation correctness
SELECT 
    quote_id,
    product_id,
    base_price,
    discount_percent,
    final_price,
    (base_price - (base_price * discount_percent / 100)) AS expected_price
FROM quote_line_items
WHERE final_price <> (base_price - (base_price * discount_percent / 100));
