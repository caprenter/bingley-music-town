{% comment %}
  Used in:
  artists.md page
  to show artists that have played or are going to play events
{% endcomment %}

{% assign dateToday = 'now' | date: "%Y-%m-%d" %}
{% assign artists = site.data.artists | sort: "Name" %}

{% for artist in artists %}
## {{ artist.Name }}

{% assign events = site.data.events | where_exp:"item", "item.Artists contains artist.Name" | sort: "Date" %}
{% assign most_recent_event = events | where_exp:"item", "item.Date < dateToday" | first %}
{% assign next_on = events | where_exp:"item", "item.Date > dateToday" | first %}

{% if next_on %}
{% assign venue = site.venues | where:"Name", next_on.Venue | first %}
**Playing on** {{ next_on.Date | date: "%a. %d %b %Y" }} at [{{ venue.Name }}]({{ venue.url }})
{% endif %}

{{ artist.About }}
{% if artist.Web %}
{% capture web %}**Web:** [{{ artist.Web }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ artist.Web }}){:target="_blank" rel="noopener noreferrer"}{% endcapture %}{{ web | markdownify }}
{% elsif artist.Facebook %}{% capture facebook %}**Facebook:** [{{ artist.Facebook }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ artist.Facebook }}){:target="_blank" rel="noopener noreferrer"}{% endcapture %}{{ facebook | markdownify }}
{% elsif artist.Twitter %}{% capture twitter %}**Twitter:** [{{ artist.Twitter }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ artist.Twitter }}){:target="_blank" rel="noopener noreferrer"}{% endcapture %}{{ twitter | markdownify }}
{% elsif artist.Instagram %}{% capture instagram %}**Instagram:** [{{ artist.Instagram }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ artist.Instagram }}){:target="_blank" rel="noopener noreferrer"}{% endcapture %}{{ instagram | markdownify }}
{% endif %}

{% if most_recent_event %}
{% assign venue = site.venues | where:"Name", most_recent_event.Venue | first %}
Last played on {{ most_recent_event.Date | date: "%a. %d %b %Y"s }} at [{{ venue.Name }}]({{ venue.url }})
{% endif %} 
{% endfor %}