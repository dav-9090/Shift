create table if not exists shop.orders_items
(
	id serial not null
		constraint orders_items_pk
			primary key,
	quantity integer,
	amount money,
	discount double precision,
	total_sum money,
	order_id integer
		constraint orders_items_orders_fk
			references shop.orders,
	product_id integer
		constraint orders_items_products_fk
			references shop.products,
	quantity_type_id integer
		constraint orders_items_quantity_types_fk
			references shop.quantity_types
);

alter table shop.orders_items owner to postgres;