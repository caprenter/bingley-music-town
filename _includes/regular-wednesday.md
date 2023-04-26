{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Singing For Fun'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
11:30 - 12:30, Bingley Arts Centre

Pick up and Play Session<br>
approx 8pm, Chip 'n' Ern, Bingley

[Bingley Handbell Ringers <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleyhandbells.org.uk/diary){:target="_blank" rel="noopener noreferrer"}<br>
7 - 9pm, Church House, Bingley