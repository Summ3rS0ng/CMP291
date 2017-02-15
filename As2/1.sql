prompt Question1-er2

Select usr 
from users
Where Exists(Select * from tweets where users.usr = tweets.writer) AND Exists (Select * from follows where users.usr = followers.flwee);
