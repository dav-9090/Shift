create table if not exists shop.discounts
(
	id serial not null
		constraint discounts_pk
			primary key,
	date_start timestamp not null,
	date_stop timestamp not null,
	percent double precision,
	fixed_sum money,
	type_id integer
		constraint discounts_discount_types_fk
			references shop.discount_types,
	product_id integer
		constraint discounts_products_fk
			references shop.products,
	group_id integer
		constraint discounts_products_groups_fk
			references shop.products_groups
);

alter table shop.discounts owner to postgres;