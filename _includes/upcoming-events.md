
{% assign dateToday = 'now' | date: "%Y-%m-%d" %}


{% assign events = site.data.events | sort: "Date" | reversed  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}

{% for event in events %}

{% if event.Date > dateToday  %}

{% if event.cancelled !=1  %}

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

<div class="event-item" markdown="1">
<div class="row">
<!--{% if event.largeimageurl %}
<div class="col-md-4 image" markdown="1">
<img class="img-responsive" src="{{ event.largeimageurl }}"/>
{% if event.Tickets %}[Get Tickets]({{ event.Tickets }}){:class="btn btn-primary"}{% endif %}
</div>
{% endif %}
<div class="col-md-8" markdown="1">-->

<!-- PERFORMERS -->
<div markdown="1">
{% assign performers = event.Artists | split: "," %}
{% for performer in performers -%}
  {%- if forloop.length > 1 -%}
    {% if forloop.first %}
### {{ performer }}
Support: {% continue %}{% endif %}
{{ performer }}{% unless forloop.last %}, {% endunless -%}
  {% else %}
### {{ performer }}
  {%- endif -%}
{% endfor %}

<!-- DESCRIPTION -->
{{ event.Description }}
{: class="description" }
<!--<div class="event-badge" markdown="1">[Event link]({{ event.Link }})</div>-->

<!-- LINKS -->
{% for performer in performers -%}
{% assign artist = site.data.artists | where:"Name", performer | first %}
<div class="performer-links" markdown="1">
{%- if forloop.length > 1 -%}* {{artist.Name }}:{% endif %}
{% if event.Link %}* <i class="fa fa-globe"></i> [Event Info]({{ event.Link }}){% endif %}
{% if artist.Web %}* <i class="fa fa-globe"></i> [Website]({{ artist.Web }}){% endif %}
{% if artist.Facebook %}* <i class="fa fa-facebook"></i> [Facebook]({{ artist.Facebook }}){% endif %}
{% if artist.Twitter %}* <i class="fa fa-twitter"></i> [Twitter]({{ artist.Twitter }}){% endif %}
{% if artist.Instagram %}* <i class="fa fa-instagram"></i> [Instagram]({{ artist.Instagram }}){% endif %}
</div>
{% endfor %}

<!-- VENUE IFNO-->
{% for venue in venues %}
{% if venue.Name == event.Venue %}
**{{ venue.Name }}**
{: class="venue-name" }
*{{ venue.Area }}*<br>
{{ venue.Address }}{% if venue.Postcode %}, {{ venue.Postcode }}{% endif %}
{: class="description" }
<div class="performer-links" markdown="1">
{% if venue.Web %}* <i class="fa fa-globe"></i> [Website]({{ venue.Web }}){% endif %}
{% if venue.Facebook %}* <i class="fa fa-facebook"></i> [Facebook]({{ venue.Facebook }}){% endif %}
</div>
{% endif %}
{% endfor %}

<!--{% if event.Time %}Doors: {{ event.Time | date: "%l:%M%P" }} <br/>{% endif %}-->
{% if event.Time %}Doors: {{ event.Time}}
{: class="description" }{% endif %}
<!--{% if event.link %}[Get Tickets for {{ event.eventname }}]({{ event.link }}){:class="btn btn-primary"}{% endif %}-->
<!--{% if event.entryprice %}£{{ event.entryprice }}{% endif %}-->

{% if event.LastUpdated %}Data fetched on: {{ event.LastUpdated | date: "%A %d %B %Y" }} 
{: class="last-updated" }{% endif %}
</div>
</div>

</div>
{% endif %} <!-- not cancelled -->
{% endif %} <!-- in the future -->
{% endfor %}


