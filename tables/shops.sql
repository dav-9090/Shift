create table if not exists shop.shops
(
	id serial not null
		constraint shops_pk
			primary key,
	name varchar(100) not null,
	address varchar(20) not null,
	manager_id integer
	
);

alter table shop.shops owner to postgres;