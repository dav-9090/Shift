alter table products
add constraint products_products_groups_fk foreign key (group_id)
references products_groups (id)