create table if not exists shop.products_groups
(
	id serial not null
		constraint products_groups_pk
			primary key,
	group_name varchar(150) not null,
	parent_group_id integer
		
);

alter table shop.products_groups owner to postgres;