TYPE=VIEW
query=select `m`.`medication_id` AS `medication_id`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`m`.`dosage_form` AS `dosage_form`,`m`.`strength` AS `strength`,`c`.`category_name` AS `category_name`,`m`.`current_stock` AS `current_stock`,`m`.`reorder_level` AS `reorder_level`,case when `m`.`current_stock` <= `m`.`reorder_level` then \'Reorder\' else \'Adequate\' end AS `stock_status` from (`pharmacy_inventory`.`medications` `m` join `pharmacy_inventory`.`medication_categories` `c` on(`m`.`category_id` = `c`.`category_id`)) order by case when `m`.`current_stock` <= `m`.`reorder_level` then \'Reorder\' else \'Adequate\' end,`m`.`generic_name`
md5=c5612620809b6dd17198e624a95556c0
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001740171994083569
create-version=2
source=SELECT 
\n    m.medication_id,
\n    m.brand_name,
\n    m.generic_name,
\n    m.dosage_form,
\n    m.strength,
\n    c.category_name,
\n    m.current_stock,
\n    m.reorder_level,
\n    CASE 
\n        WHEN m.current_stock <= m.reorder_level THEN \'Reorder\'
\n        ELSE \'Adequate\'
\n    END AS stock_status
\nFROM 
\n    medications m
\nJOIN 
\n    medication_categories c ON m.category_id = c.category_id
\nORDER BY 
\n    stock_status, m.generic_name
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `m`.`medication_id` AS `medication_id`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`m`.`dosage_form` AS `dosage_form`,`m`.`strength` AS `strength`,`c`.`category_name` AS `category_name`,`m`.`current_stock` AS `current_stock`,`m`.`reorder_level` AS `reorder_level`,case when `m`.`current_stock` <= `m`.`reorder_level` then \'Reorder\' else \'Adequate\' end AS `stock_status` from (`pharmacy_inventory`.`medications` `m` join `pharmacy_inventory`.`medication_categories` `c` on(`m`.`category_id` = `c`.`category_id`)) order by case when `m`.`current_stock` <= `m`.`reorder_level` then \'Reorder\' else \'Adequate\' end,`m`.`generic_name`
mariadb-version=100432
