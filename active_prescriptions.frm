TYPE=VIEW
query=select `p`.`prescription_id` AS `prescription_id`,concat(`pt`.`first_name`,\' \',`pt`.`last_name`) AS `patient_name`,concat(`d`.`first_name`,\' \',`d`.`last_name`) AS `doctor_name`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`pi`.`dosage_instructions` AS `dosage_instructions`,`pi`.`refills_remaining` AS `refills_remaining`,`p`.`valid_until` AS `valid_until`,case when `p`.`valid_until` < curdate() then \'Expired\' else \'Active\' end AS `prescription_status` from ((((`pharmacy_inventory`.`prescriptions` `p` join `pharmacy_inventory`.`patients` `pt` on(`p`.`patient_id` = `pt`.`patient_id`)) join `pharmacy_inventory`.`doctors` `d` on(`p`.`doctor_id` = `d`.`doctor_id`)) join `pharmacy_inventory`.`prescription_items` `pi` on(`p`.`prescription_id` = `pi`.`prescription_id`)) join `pharmacy_inventory`.`medications` `m` on(`pi`.`medication_id` = `m`.`medication_id`)) where `p`.`valid_until` >= curdate() and `pi`.`refills_remaining` > 0 order by `pt`.`last_name`,`pt`.`first_name`
md5=b4996527b22c7425997f2fba92211b73
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001740172020548362
create-version=2
source=SELECT \n    p.prescription_id,\n    CONCAT(pt.first_name, \' \', pt.last_name) AS patient_name,\n    CONCAT(d.first_name, \' \', d.last_name) AS doctor_name,\n    m.brand_name,\n    m.generic_name,\n    pi.dosage_instructions,\n    pi.refills_remaining,\n    p.valid_until,\n    CASE \n        WHEN p.valid_until < CURDATE() THEN \'Expired\'\n        ELSE \'Active\'\n    END AS prescription_status\nFROM \n    prescriptions p\nJOIN \n    patients pt ON p.patient_id = pt.patient_id\nJOIN \n    doctors d ON p.doctor_id = d.doctor_id\nJOIN \n    prescription_items pi ON p.prescription_id = pi.prescription_id\nJOIN \n    medications m ON pi.medication_id = m.medication_id\nWHERE \n    p.valid_until >= CURDATE()\n    AND pi.refills_remaining > 0\nORDER BY \n    pt.last_name, pt.first_name
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `p`.`prescription_id` AS `prescription_id`,concat(`pt`.`first_name`,\' \',`pt`.`last_name`) AS `patient_name`,concat(`d`.`first_name`,\' \',`d`.`last_name`) AS `doctor_name`,`m`.`brand_name` AS `brand_name`,`m`.`generic_name` AS `generic_name`,`pi`.`dosage_instructions` AS `dosage_instructions`,`pi`.`refills_remaining` AS `refills_remaining`,`p`.`valid_until` AS `valid_until`,case when `p`.`valid_until` < curdate() then \'Expired\' else \'Active\' end AS `prescription_status` from ((((`pharmacy_inventory`.`prescriptions` `p` join `pharmacy_inventory`.`patients` `pt` on(`p`.`patient_id` = `pt`.`patient_id`)) join `pharmacy_inventory`.`doctors` `d` on(`p`.`doctor_id` = `d`.`doctor_id`)) join `pharmacy_inventory`.`prescription_items` `pi` on(`p`.`prescription_id` = `pi`.`prescription_id`)) join `pharmacy_inventory`.`medications` `m` on(`pi`.`medication_id` = `m`.`medication_id`)) where `p`.`valid_until` >= curdate() and `pi`.`refills_remaining` > 0 order by `pt`.`last_name`,`pt`.`first_name`
mariadb-version=100432
