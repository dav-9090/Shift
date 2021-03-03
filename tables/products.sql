create table if not exists shop.products
(
	id serial not null
		constraint products_pk
			primary key,
	price money not null,
	name varchar(200) not null,
	group_id integer,
	quantity_type_id integer
		
);

alter table shop.products owner to postgres;