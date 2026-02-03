
-- Count tables by multisite network (shared) and individual sites
SELECT 
    CASE 
        WHEN TABLE_NAME REGEXP '^wp_[0-9]+_' THEN CONCAT('Site ', SUBSTRING_INDEX(SUBSTRING_INDEX(TABLE_NAME, '_', 2), '_', -1))
        ELSE 'Main Site'
    END as site_group,
    TABLE_NAME,
    TABLE_ROWS
FROM 
    INFORMATION_SCHEMA.TABLES 
WHERE 
    TABLE_SCHEMA = 'www_loxone_com' 
    AND TABLE_NAME LIKE 'wp_%'
ORDER BY 
    site_group, TABLE_ROWS DESC;







-- Count total rows per site in WordPress Multisite
SELECT 
    CASE 
        WHEN TABLE_NAME REGEXP '^wp_[0-9]+_' THEN CONCAT('Site ', SUBSTRING_INDEX(SUBSTRING_INDEX(TABLE_NAME, '_', 2), '_', -1))
        ELSE 'Main Site'
    END as site_group,
    COUNT(*) as table_count,
    SUM(TABLE_ROWS) as total_rows
FROM 
    INFORMATION_SCHEMA.TABLES 
WHERE 
    TABLE_SCHEMA = 'www_loxone_com' 
    AND TABLE_NAME LIKE 'wp_%'
GROUP BY 
    site_group
ORDER BY 
    total_rows DESC;







www_loxone_com