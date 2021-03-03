create table if not exists shop.shops_manager
(
	id serial not null
		constraint shops_manager_pk
			primary key,
	shop_id integer,
	manager_id integer
		
);

alter table shop.shops_manager owner to postgres;