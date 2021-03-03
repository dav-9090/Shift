create table if not exists shop.shops_warehouse
(
	id serial not null
		constraint shops_warehouse_pk
			primary key,
	quantity double precision,
	shop_id integer,
	product_id integer
		
);

alter table shop.shops_warehouse owner to postgres;