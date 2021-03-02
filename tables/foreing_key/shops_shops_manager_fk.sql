alter table shops
add constraint shops_shops_manager_fk foreign key (manager_id)
references shops_manager (id)