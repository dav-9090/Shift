create table if not exists shop.orders
(
	id serial not null
		constraint orders_pk
			primary key,
	total_amount money not null,
	date timestamp not null,
	shop_id integer
		constraint orders_shops_fk
			references shop.shops,
	employee_id integer
		constraint orders_employees_fk
			references shop.employees
);

alter table shop.orders owner to postgres;