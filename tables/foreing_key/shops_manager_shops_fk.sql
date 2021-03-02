alter table shops_manager
add constraint shops_manager_shops_fk foreign key (shop_id)
references shops (id)