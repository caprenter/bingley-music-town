{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }}<br>
10.00-11.30am, Bingley Methodist Church

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bradford Airedale Youth Choir'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }}){: class="activity" }<br>
{{ organisation.short-description }} 

{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'The Brown Cow'"
    | first %}
<p markdown="1"><span class="activity">Pick up and Play Session</span><br>
Join in with or just come and listen to traditional folk music played by local musicians.<br> 
approx 8pm, [{{ venue.Name }}]({{ venue.url }}), Bingley.
</p>

{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Bradford And Bingley Rugby Club'"
    | first %}
[Voices of Yorkshire  <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.voicesofyorkshire.com/){:target="_blank" rel="noopener noreferrer" class="activity"}<br>
A fun, friendly and relaxed choir. We welcome all abilities.<br>
8-9pm, [{{ venue.Name }}]({{ venue.url }})