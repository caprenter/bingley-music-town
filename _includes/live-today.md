{% assign dateToday = 'now' | date: "%Y-%m-%d" %}

{% assign events = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}

{% for event in events %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% if event.Date == dateToday  %}
{% assign date = event.Date %}

## Live Music Today
{{ event.Date | date: "%A %d %B %Y" }}

<div class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}" markdown="1">
<div class="row">

{% include event-listing.md %}

</div>
</div>
{% endif %} <!-- if today -->
{% endfor %}
{% if date %} <!-- If date is set we have an event(s) today -->
{% else %} <!-- If not print a message -->
## Live Music
Looking for live music? Check out our [Upcoming Events page]({% link live.md %}) to see what's on offer. 
{% endif %}