{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Tower Bell Ringers'"
    | first %}
{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'All Saints Parish Church'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
9.45-10.30am [{{ venue.Name }}]({{ venue.url }}), Bingley