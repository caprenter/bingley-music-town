{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Cullingworth Ukulele Group'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
Free ukulele lessons for beginners in Cullingworth.

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
1.30-3.00pm, Bingley Methodist Church