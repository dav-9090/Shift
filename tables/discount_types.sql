create table if not exists shop.discount_types
(
	id serial not null
		constraint discount_types_pk
			primary key,
	type varchar(100) not null
);

alter table shop.discount_types owner to postgres;