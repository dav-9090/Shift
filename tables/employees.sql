create table if not exists shop.employees
(
	id serial not null
		constraint employees_pk
			primary key,
	name varchar(150) not null,
	position varchar(100),
	shop_id integer
		constraint employees_shops_fk
			references shop.shops
);

alter table shop.employees owner to postgres;