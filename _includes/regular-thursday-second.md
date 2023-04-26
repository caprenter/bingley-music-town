{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'The Shed Planners Association - BFD'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
Open mic with full band organised by Bingley musicians<br>
8pm The Highfield, Idle 