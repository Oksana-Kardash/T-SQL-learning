select *
from authors a
left join titleauthor ta on a.au_id=ta.au_id
left join titles t on ta.title_id=t.title_id
where ta.au_id is null


select *
from titleauthor ta
right join authors a on ta.au_id=a.au_id
where ta.au_id is null

select *
from authors a
full join titleauthor ta on a.au_id=ta.au_id
full join titles t on ta.title_id=t.title_id
