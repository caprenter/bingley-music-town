{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Tower Bell Ringers'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
We ring on Sundays for morning service and practice on Tuesday evenings, 7.30-9.00pm.<br>
9.45-10.30am All Saints Church, Bingley