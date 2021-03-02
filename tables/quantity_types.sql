create table if not exists shop.quantity_types
(
	id serial not null
		constraint quantity_types_pk
			primary key,
	type varchar(150)
);

alter table shop.quantity_types owner to postgres;