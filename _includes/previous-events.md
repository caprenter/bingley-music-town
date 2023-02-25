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
{% assign artist = site.data.artists | where:"Name", event.Artists | first  %}
{% if {{artist.Web}} %}
{% assign web = {{artist.Web}} %}
{% elsif {{artist.Facebook}} %}
{% assign web = {{artist.Facebook}} %}
{% endif %}


<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td><a href="{{event.Link}}">{{ event.Date | date: "%a. %d %b %Y" }}</a></td>
<td>{% if web %}<a href="{{ web }}">{{event.Artists | replace: ",", ", "}}</a>{% else %}{{event.Artists | replace: ",", ", "}}{% endif %}</td>
<td>{{event.Venue}}</td>
<td>{% if event.cancelled == 1  %}Cancelled{% endif %}</td>
</tr>
{% assign web = false %}
{% endif %} <!-- in the future -->
{% endfor %}  
</table>
</div>


## About this page

We curate the event data in a [google spreadsheet](https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/edit?usp=sharing)

If you would like to help us manage the data please [contact us]({% link contact.md %}).

If you want to re-use the data please do.