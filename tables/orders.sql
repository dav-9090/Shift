create table if not exists shop.orders
(
	id serial not null
		constraint orders_pk
			primary key,
	total_amount money not null,
	date timestamp not null,
	shop_id integer,
	employee_id integer
		
);

alter table shop.orders owner to postgres;