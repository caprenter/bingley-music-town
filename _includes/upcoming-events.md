
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

## About this page

We curate the event data in a [google spreadsheet](https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/edit?usp=sharing)

If you would like to help us manage the data please [contact us]({% link contact.md %}).

If you want to re-use the data please do.