prompt Question3-er2

select distinct usr,name from users
where usr in
(select Flwer from Follows 
where Flwee in(select Flwee from follows where Flwer = 4));



