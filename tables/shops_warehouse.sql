create table if not exists shop.shops_warehouse
(
	id serial not null
		constraint shops_warehouse_pk
			primary key,
	quantity double precision,
	shop_id integer
		constraint shops_warehouse_shops_fk
			references shop.shops,
	product_id integer
		constraint shops_warehouse_products_fk
			references shop.products
);

alter table shop.shops_warehouse owner to postgres;