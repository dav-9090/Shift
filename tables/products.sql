create table if not exists shop.products
(
	id serial not null
		constraint products_pk
			primary key,
	price money not null,
	name varchar(200) not null,
	group_id integer
		constraint products_products_groups_fk
			references shop.products_groups,
	quantity_type_id integer
		constraint products_quantity_types_fk
			references shop.quantity_types
);

alter table shop.products owner to postgres;