{% assign dateToday = 'now' | date: "%Y-%m-%d" %}
{% assign currentYear = site.time | date: "%Y" %}
{% assign tomorrow = site.time | date: "%j" | plus: 1 %}
{% assign currentDay_plus_seven_days = site.time | date: "%j" | plus: 7  %}

{% assign events = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}

## Live Music
Check out our [Upcoming Events page]({% link live.md %}) to see all listings.

{% for event in events %}
{% assign eventYear = event.Date | date: "%Y" %}
{% assign eventDay = event.Date | date: "%j" | plus: 0 %}
{%- if currentYear == eventYear and eventDay < currentDay_plus_seven_days and eventDay >= tomorrow  -%}
{% assign week-date = event.Date %}
{%- endif -%}
{% assign mod2 = forloop.index | modulo: 2 %}
{% if event.Date == dateToday  %}
{% assign date = event.Date %}

### Today
{{ event.Date | date: "%A %d %B %Y" }}

<div class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}" markdown="1">
<div class="row">

{% include event-listing.md %}


</div>
</div>
{% endif %} <!-- if today -->
{% endfor %}

{% if week-date %}
### This week
{% for event in events %}
    
{% assign eventYear = event.Date | date: "%Y" %}
{% assign eventDay = event.Date | date: "%j" | plus: 0 %}

{%- if currentYear == eventYear and eventDay < currentDay_plus_seven_days and eventDay >= tomorrow  -%}
{% assign slug = event.Date | date:"%A-%d-%B-%Y" %}
{{ event.Date | date: "%a. %d %b" }}: [{{ event.Artists }}]({{ '/live#' | relative_url }}#{{ slug | downcase  }})
{% assign week-date = event.Date %}
{%- endif -%}
    
{%- endfor -%}

{%- endif -%} <!-- if event in the coming week --> 
