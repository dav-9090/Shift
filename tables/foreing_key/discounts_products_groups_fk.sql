alter table discounts
add constraint discounts_products_groups_fk foreign key (group_id)
references products_groups (id)