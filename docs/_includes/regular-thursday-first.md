{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Ukulele Group'"
    | first %}
{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'The Peacock Bar Bingley'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
7pm - 9pm [{{ venue.Name }}]({{ venue.url }}).
