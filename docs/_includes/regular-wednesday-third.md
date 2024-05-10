{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Church House'"
    | first %}
{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Heart Song West Yorkshire'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
Do you like to sing? Are you open to exploring end of life issues in a small group? <br>
Our friendly group welcomes new singers.  <br>
We learn gentle world songs, deep listening, and presence skills. <br>
We are part of a growing UK movement offering singing at the bedside for people nearing the end of life. <br>
For information on our approach and songs: [www.companionvoices.org <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.companionvoices.org){:target="_blank" rel="noopener noreferrer"}<br>
For more information, please contact Ana on 07951 776 278. <br>
7:30pm - 9pm [{{ venue.Name }}]({{ venue.url }}), Bingley.