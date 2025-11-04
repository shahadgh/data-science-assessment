-- ADD YOUR SQL QUERY HERE
SELECT investor_id, SUM(no_of_shares) AS total_shares
  FROM investor_transactions
  GROUP BY investor_id;
