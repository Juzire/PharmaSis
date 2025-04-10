TYPE=VIEW
query=select `m`.`medication_id` AS `medication_id`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`mi`.`batch_number` AS `batch_number`,`mi`.`expiration_date` AS `expiration_date`,`mi`.`quantity_remaining` AS `quantity_remaining`,to_days(`mi`.`expiration_date`) - to_days(curdate()) AS `days_until_expiry` from (`pharmacy_inventory`.`medications` `m` join `pharmacy_inventory`.`medication_inventory` `mi` on(`m`.`medication_id` = `mi`.`medication_id`)) where `mi`.`expiration_date` between curdate() and curdate() + interval 90 day and `mi`.`quantity_remaining` > 0 order by `mi`.`expiration_date`
md5=833f4553b1eeb4711364742aeda40c27
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001740172010429506
create-version=2
source=SELECT 
\n    m.medication_id,
\n    m.brand_name,
\n    m.generic_name,
\n    mi.batch_number,
\n    mi.expiration_date,
\n    mi.quantity_remaining,
\n    DATEDIFF(mi.expiration_date, CURDATE()) AS days_until_expiry
\nFROM 
\n    medications m
\nJOIN 
\n    medication_inventory mi ON m.medication_id = mi.medication_id
\nWHERE 
\n    mi.expiration_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 90 DAY)
\n    AND mi.quantity_remaining > 0
\nORDER BY 
\n    mi.expiration_date
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `m`.`medication_id` AS `medication_id`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`mi`.`batch_number` AS `batch_number`,`mi`.`expiration_date` AS `expiration_date`,`mi`.`quantity_remaining` AS `quantity_remaining`,to_days(`mi`.`expiration_date`) - to_days(curdate()) AS `days_until_expiry` from (`pharmacy_inventory`.`medications` `m` join `pharmacy_inventory`.`medication_inventory` `mi` on(`m`.`medication_id` = `mi`.`medication_id`)) where `mi`.`expiration_date` between curdate() and curdate() + interval 90 day and `mi`.`quantity_remaining` > 0 order by `mi`.`expiration_date`
mariadb-version=100432
