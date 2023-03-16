{% assign dateToday = 'now' | date: "%Y-%m-%d" %}
{% assign events = site.data.events | sort: "Date" | reverse  %}
{% assign venues = site.data.venues %}

<div style="overflow-x:auto;" >
<table class="events">
<tr>
<th>Date</th>
<th>Artist(s)</th>
<th>Venue</th>
<th>Notes</th>
</tr>
{% for event in events %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% if event.Date < dateToday  %}
{% if page.layout == "venue_page" %}
{% if event.Venue != page.Name %}
{% continue %}
{% endif %}
{% endif %}
{% assign venue = site.venues | where:"Name", event.Venue | first %}

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
<td>{% if venue.url %}<a href="{{site.url}}{{ venue.url }}">{{ venue.Name }}</a>{% else %}{{ event.Venue }}{%endif %}</td>
<td>{% if event.Cancelled == "1"  %}Cancelled{% endif %}</td>
</tr>
{% assign web = false %}
{% endif %} <!-- in the future -->
{% endfor %}  
</table>
</div>