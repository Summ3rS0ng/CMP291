prompt Question4-er2

select * from (select Writer, count(term) as countedt
from mentions 
where term = 'edmonton'
group by writer) m
where countedt >= 2 and writer Not in(select flwee from follows) ;

