{% comment %}
  Used when we want a set of upcoming events in a table
  e.g.on the venues page

  WhichVenue is set in venues.md and included here
{% endcomment %}


{% assign dateToday = 'now' | date: "%Y-%m-%d" %}
{% assign events = site.data.events | sort: "Date" %}
{% assign venues = site.data.venues %}

{% comment %}
  Set a variable so we know which venue we are talking about
{% endcomment %}
{% if include.WhichVenue %}
{% assign ThisVenue = include.WhichVenue %}
{% endif %}

{% comment %}
  First loop through everything to see if this venue has upcoming events
{% endcomment %}
{% for event in events %}
{% if event.Venue == ThisVenue  %}
{% if event.Date >= dateToday  %}
{% if event.Artists and event.Artists != nil and event.Artists != "" %}
{% assign HasEvents = 'yes' %}
{% endif %}
{% endif %}
{% endif %}
{% endfor %}

{% if HasEvents == "yes" %}
<div style="overflow-x:auto;" class="upcoming-events px-4 pb-4" >
<table class="events m-0 mb-4">
<caption><h5>Upcoming Events: <small><a href="{{ venue.url }}">{{ venue.Name }}</a></small></h5></caption>
<!-- <span>Upcoming Events</span> at <a href="{{ venue.url }}">{{ venue.Name }}</a></caption> -->
<tr>
<th>Date</th>
<th>Artist(s)</th>
<th>Notes</th>
</tr>
{% for event in events %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% if event.Date >= dateToday  %}
{% if event.Venue != ThisVenue %}
{% continue %}
{% endif %}

{% if event.Artists and event.Artists != nil and event.Artists != "" %}
{% assign venue = site.venues | where:"Name", ThisVenue | first %}

<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td><a href="{{event.Link}}">{{ event.Date | date: "%a. %d %b %Y" }}</a></td>
<td>
{% assign performers = event.Artists | split: "," %}
{% for performer in performers -%}
{% assign artist = site.data.artists | where:"Name", performer | first  %}
{% if {{artist.Web}} %}
{% assign web = {{artist.Web}} %}
{% elsif {{artist.Facebook}} %}
{% assign web = {{artist.Facebook}} %}
{% endif %}
{% if web %}<a href="{{ web }}">{{ performer}}</a>{% else %}{{performer}}{% endif %}{%- if forloop.last -%}{% else %}, {% endif %}
{% endfor %}
</td>
<td>{% if event.Cancelled == "1"  %}Cancelled{% endif %}</td>
</tr>
{% assign web = false %}
{% endif %}
{% endif %} 
{% endfor %}  
</table>
</div>
{% endif %}
{% comment %}
  Reset the HasEvents variable
{% endcomment %}
{% assign HasEvents = '' %}