{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Martinez Bingley Wine Shop & Wine Bar'"
    | first %}
<span class="activity">[Buskers <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.facebook.com/groups/824997727607702){:target="_blank" rel="noopener noreferrer"} (open mic)</span><br>
An open mic platform for local artists to show us what they have. Usually a 15 minute slot and you can do what you like performance wise, sing, play, tell jokes or whatever!<br>
7pm, [{{ venue.Name }}]({{ venue.url }}), Bingley