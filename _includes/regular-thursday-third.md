{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Ukulele Group'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
A fun group of like minded people who enjoy playing UKULELE. Everyone welcome. Other instruments and singers are also welcome.