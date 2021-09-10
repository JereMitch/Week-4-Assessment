-- Problem 1
insert into artist (
	name
)
values (
	'NF'
), (
	'Witt Lowry'
), (
	'Logic'
);

-- Problem 2
select * from artist
order by name limit(5);

-- Problem 3
select first_name, last_name, city from employee
where city = 'Calgary';

-- Problem 4
select employee_id from employee
where first_name = 'Nancy' and last_name = 'Edwards';

select first_name, last_name from employee
where reports_to = 2;

-- Problem 5
select count(*) from employee
where city = 'Lethbridge';
-- Problem 6
select count(*) from invoice
where billing_country = 'USA';

-- Problem 7
select max(total) from invoice;

-- Problem 8
select min(total) from invoice;

-- Problem 9
select * from invoice 
where total >= 5;

-- Problem 10
select count(*) from invoice 
where total <= 5;

-- Problem 11
select sum(total) from invoice;

-- Problem 12
select * from invoice i
join invoice_line as il
on i.invoice_id = il.invoice_id
where il.unit_price > .99;

-- Problem 13
select i.invoice_date as "Invoice Date", c.first_name "Customer First", 
c.last_name "Customer Last", i.total "Invoice Total"
from invoice i 
join customer c
on i.customer_id = c.customer_id;

-- Problem 14
select c.first_name as "Customer First", c.last_name as "Customer Last", 
c.support_rep_id as "Support Rep Id", e.employee_id as "Employee Id", 
e.first_name as "Employee First", e.last_name as "Employee Last"
from customer c
join employee e
on c.support_rep_id = e.employee_id;

-- Problem 15
select al.title "Album Title", ar.name "Artist Name"
from album al
join artist ar
on al.artist_id = ar.artist_id;


=============================================================================================================================================
--EXTRA CREDIT--

-- Problem 1
select * from artist
order by name desc limit(10);

-- Problem 2
select * from artist
where name like 'Black%';

-- Problem 3
select * from artist
where name like '%Black%';

-- Problem 4
select max(birth_date) from employee;
 --OR--
select * from employee
order by birth_date desc limit(1);

-- Problem 5
select min(birth_date) from employee;
--OR--
select * from employee
order by birth_date limit(1);

-- Problem 6
select count(*) from invoice
where billing_state in ('CA','TX','AZ');

-- Problem 7
select avg(total) from invoice;

-- Problem 8
select pt.track_id "Track Id", p.name "Playlist Name"
from playlist_track pt
join playlist p on p.playlist_id = pt.playlist_id
where p.name = 'Music';

-- Problem 9
select t.name "Track Name", t.track_id "Track Id", p.playlist_id "Playlist Id"
from track t
join playlist_track p
on p.track_id = t.track_id
join playlist pl
on pl.playlist_id = p.playlist_id
where p.playlist_id = 5;

-- Problem 10
select t.name "Track Name", pl.name "Playlist Name"
from track t
join playlist_track p 
on p.track_id = t.track_id
join playlist pl
on pl.playlist_id = p.playlist_id;

-- Problem 11
select t.name "Track Name", a.title "Album Title", g.genre_id "Genre"
from track t
join album a
on a.album_id = t.album_id
join genre g
on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';
