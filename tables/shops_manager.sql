create table if not exists shop.shops_manager
(
	id serial not null
		constraint shops_manager_pk
			primary key,
	shop_id integer
		constraint shops_manager_shops_fk
			references shop.shops,
	manager_id integer
		constraint shops_manager_employees_fk
			references shop.employees
);

alter table shop.shops_manager owner to postgres;