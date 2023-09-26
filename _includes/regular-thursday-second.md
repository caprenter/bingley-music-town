{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'The Shed Planners Association - BFD'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
8pm The Highfield, Idle 