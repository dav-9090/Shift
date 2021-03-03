create table if not exists shop.discounts
(
	id serial not null
		constraint discounts_pk
			primary key,
	date_start timestamp not null,
	date_stop timestamp not null,
	percent double precision,
	fixed_sum money,
	type_id integer,
	product_id integer,
	group_id integer
		
);

alter table shop.discounts owner to postgres;