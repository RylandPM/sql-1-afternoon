create table person
(
    id serial primary key,
    name text not null,
    age int not null,
    height int not null,
    city text not null,
    favorite_color text not null
)

insert into person
    (name, age, height, city, favorite_color)
values
    ('Dave', 27, 170, 'Cranberry', 'blue'),
    ('Jim', 16, 210, 'Transylvania', 'maroon'),
    ('Dracul', 472, 190, 'San Francisco', 'majenta'),
    ('FirstName', 2, 200, 'Place', 'Color'),
    ('Berut', 55, 120, 'Bearholm', 'gold');

select *
from person
order by height DESC;

select *
from person
order by height;

select *
from person
order by age DESC;

select *
from person
where age > 20;

select *
from person
where age = 18;

select *
from person
where age > 30
    and age < 20;

select *
from person
where age != 27;

select *
from person
where favorite_color != 'red';

select *
from person
where favorite_color != 'red'
    and favorite_color != 'blue';

select *
from person
where favorite_color = 'orange'
    or favorite_color = 'green';

select *
from person
where favorite_color IN ('orange','green','blue');

select *
from person
where favorite_color IN ('yellow', 'purple');

create table orders
(
    person_id serial primary key,
    product_name text not null,
    product_price float not null,
    quantity int not null
)

insert into orders
    (product_name, product_price, quantity)
values
    ('cheeseburger', 10.50, 2),
    ('chicken tenders', 6.20, 3),
    ('steak dinner', 30.99, 1),
    ('The Blood of Thine Enemies', 0, 4),
    ('pepperoni pizza', 13, 2);

select *
from orders;

select sum(quantity)
from orders;

select sum(product_price * quantity)
from orders;

select product_price * quantity
from orders
where person_id = 1;

insert into artist
    (name)
values
    ('Audio Voltaire'),
    ('Oh Hiroshima'),
    ('Aviators');

select *
from artist
order by name DESC
limit 10;

select * from artist
order by name
limit 5;

select *
from artist
where name
ilike 'Black%';

select *
from artist
where name
ilike '%Black%';

select (first_name, last_name
) from employee
where city = 'Calgary';

select MAX(birth_date)
from employee;

select MIN(birth_date)
from employee;

select *
from employee
where reports_to = 2;

select count(city)
from employee
where city = 'Lethbridge';

select count(billing_address)
from invoice
where billing_country = 'USA';

select MAX(total)
from invoice;

select MIN(total)
from invoice;

select *
from invoice
where total > 5;

select count(*)
from invoice
where total < 5;

select count(*)
from invoice
where billing_state IN ('TX','CA','AZ');

select AVG(total)
from invoice;

select sum(total)
from invoice;