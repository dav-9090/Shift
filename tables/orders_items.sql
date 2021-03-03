create table if not exists shop.orders_items
(
	id serial not null
		constraint orders_items_pk
			primary key,
	quantity integer,
	amount money,
	discount double precision,
	total_sum money,
	order_id integer,
	product_id integer,
	quantity_type_id integer
	
);

alter table shop.orders_items owner to postgres;