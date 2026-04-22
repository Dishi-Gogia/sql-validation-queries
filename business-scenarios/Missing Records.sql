-- Find records present in source but missing in target
SELECT s.id
FROM source_table s
LEFT JOIN target_table t ON s.id = t.id
WHERE t.id IS NULL;
