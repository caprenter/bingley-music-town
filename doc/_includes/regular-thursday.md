{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Cullingworth Ukulele Group'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
10:30am at St John’s Room in Cullingworth.

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
1.30-3.00pm, Bingley Methodist Church