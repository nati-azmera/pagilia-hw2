/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

select title 
from (
select title, rating
from (
select title, rating, unnest(special_features) as feat from film) t
where feat = 'Trailers') t2 
where rating = 'G' 
order by 1;
