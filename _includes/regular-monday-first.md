{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Ryshworth Club'"
    | first %}
[Bingley First Monday Folk <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.facebook.com/groups/1823602681007824){:target="_blank" rel="noopener noreferrer" class="activity"}<br>
A little folk club featuring top quality musicians and the best raffle in Yorkshire.<br>
7pm [{{ venue.Name }}]({{ site.url }}{{ venue.url }}), Crossflatts