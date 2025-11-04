-- ADD YOUR SQL QUERY HERE
SELECT 
  t1.investor_id,
  sector.sector_name,
  ROUND(t1.no_of_shares * 100 / total.total_shares, 2) AS share_percentage
FROM investor_transactions t1
JOIN 
(
SELECT investor_id, SUM(no_of_shares) AS total_shares
  FROM investor_transactions
  GROUP BY investor_id
) AS total
ON t1.investor_id = total.investor_id
JOIN sectors sector
ON t1.sector_id = sector.sector_id
