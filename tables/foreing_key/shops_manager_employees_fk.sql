alter table shops_manager
add constraint shops_manager_employees_fk foreign key (manager_id)
references employees (id)