TYPE=VIEW
query=select cast(`st`.`transaction_date` as date) AS `sale_date`,sum(`st`.`total_amount`) AS `daily_total`,count(distinct `st`.`transaction_id`) AS `transaction_count`,sum(case when `st`.`payment_method` = \'Cash\' then `st`.`total_amount` else 0 end) AS `cash_total`,sum(case when `st`.`payment_method` = \'Credit Card\' then `st`.`total_amount` else 0 end) AS `credit_total`,sum(case when `st`.`payment_method` = \'Insurance\' then `st`.`total_amount` else 0 end) AS `insurance_total` from `pharmacy_inventory`.`sales_transactions` `st` group by cast(`st`.`transaction_date` as date) order by cast(`st`.`transaction_date` as date) desc
md5=85a7ecfbe79f2d3b47381224c5cccd7d
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001740172028047726
create-version=2
source=SELECT 
\n    DATE(st.transaction_date) AS sale_date,
\n    SUM(st.total_amount) AS daily_total,
\n    COUNT(DISTINCT st.transaction_id) AS transaction_count,
\n    SUM(CASE WHEN st.payment_method = \'Cash\' THEN st.total_amount ELSE 0 END) AS cash_total,
\n    SUM(CASE WHEN st.payment_method = \'Credit Card\' THEN st.total_amount ELSE 0 END) AS credit_total,
\n    SUM(CASE WHEN st.payment_method = \'Insurance\' THEN st.total_amount ELSE 0 END) AS insurance_total
\nFROM 
\n    sales_transactions st
\nGROUP BY 
\n    DATE(st.transaction_date)
\nORDER BY 
\n    sale_date DESC
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select cast(`st`.`transaction_date` as date) AS `sale_date`,sum(`st`.`total_amount`) AS `daily_total`,count(distinct `st`.`transaction_id`) AS `transaction_count`,sum(case when `st`.`payment_method` = \'Cash\' then `st`.`total_amount` else 0 end) AS `cash_total`,sum(case when `st`.`payment_method` = \'Credit Card\' then `st`.`total_amount` else 0 end) AS `credit_total`,sum(case when `st`.`payment_method` = \'Insurance\' then `st`.`total_amount` else 0 end) AS `insurance_total` from `pharmacy_inventory`.`sales_transactions` `st` group by cast(`st`.`transaction_date` as date) order by cast(`st`.`transaction_date` as date) desc
mariadb-version=100432
