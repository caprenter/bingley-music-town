{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Little House Guitars'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
10:15 - 11:15, Little House, Bingley

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Singing For Fun'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
A friend group of people that meet each week to sing for fun.<br>
11:30 - 12:30, Bingley Arts Centre

<span class="activity">Pick up and Play Session</span><br>
Join in with or just come and listen to traditional folk music played by local musicians.<br>
approx 8pm, Chip 'n' Ern, Bingley

{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Church House'"
    | first %}
[Bingley Handbell Ringers <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleyhandbells.org.uk/diary){:target="_blank" rel="noopener noreferrer" class="activity"}<br>
If you would like to try Handbell Ringing come along to a practice night or contact the group to find out more.<br>
7 - 9pm, [{{ venue.Name }}]({{ venue.url }}), Bingley.

{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Martinez Bingley Wine Shop & Wine Bar'"
    | first %}
<span class="activity">Blues Night</span><br>
Live music from some of the best blues artists around. Check our [live listings]({% link live.md %}) for details.<br>
approx 7pm, [{{ venue.Name }}]({{ venue.url }}), Bingley