alter table products_groups
add constraint products_groups_products_fk foreign key (parent_group_id)
references products (id)