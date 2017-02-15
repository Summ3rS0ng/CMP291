prompt Question4-er2

select * from (select flwee, count(flwee) as countedf 
from follows
group by flwee) f Join
(select Writer, count(term) as countedt from mentions 
where term = 'edmonton'
group by writer) m
on f.flwee = m.Writer
where countedf >0
and countedt > 2;

