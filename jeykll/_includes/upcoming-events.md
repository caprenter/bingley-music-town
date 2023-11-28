
{% assign dateToday = 'now' | date: "%Y-%m-%d" %}


{% assign events = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}

{% for event in events %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% if event.Date >= dateToday  %}

<!-- GROUP EVENTS BY DATE -->
{% if forloop.first %}
## {{ event.Date | date: "%A %d %B %Y" }}
{:class="event-date"}
{% else %}
{% if event.Date != date %}
## {{ event.Date | date: "%A %d %B %Y" }}
{:class="event-date"}
{% endif %}
{% endif %}
{% assign date = event.Date %}

<div class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}" markdown="1">
<div class="row">
<!--{% if event.largeimageurl %}
<div class="col-md-4 image" markdown="1">
<img class="img-responsive" src="{{ event.largeimageurl }}"/>
{% if event.Tickets %}[Get Tickets]({{ event.Tickets }}){:class="btn btn-primary"}{% endif %}
</div>
{% endif %}
<div class="col-md-8" markdown="1">-->

{% include event-listing.md %}

</div>
</div>
{% endif %} <!-- in the future -->
{% endfor %}

{% include about-this-page.md %}