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
