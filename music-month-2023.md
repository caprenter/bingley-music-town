---
title: November is Music Month
layout: listing
cover: splashes/music-month-2023.png #No leading slash
#image-credit: The Razerbills
navigation: true
---

November is [Music Month](https://www.musicmonth.co.uk/) all across the Bradford District. There will be lots of live music to enjoy as well as workshops and activities where you can make music yourself.

There are events throughout the region, across different locations, celebrating music of all types.

You can find out more about all the events at the [Music Month Website](https://www.musicmonth.co.uk/).

You can always find [live events in Bingley]({% link live.md %}) along with [regular music making activities in our district]({% link regular-activities.md %}) right here on this website. We've pulled them altogether in one long list here so that you can easily see what's happening in Bingley Music Town throughout the month.

## Bingley - Music Month - November 2023

{% assign events = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}


{% comment %}
Sun = 0
Mon = 1
Tue = 2
Wed = 3
Thur = 4
Fri = 5
Sat = 6
{% endcomment %}

{% assign start-day = "01-11-2023" | date: '%s' %}

{% for i in (0..29) %}
   
{% assign seconds-to-add = 86400 | times: i %} 
{% assign on-this-day = start-day | plus: seconds-to-add %}
{% assign weekday = on-this-day | date: "%A" %}
{% assign on-this-day-as-date = on-this-day | date: "%Y-%m-%d" %}
{% assign eventYear = on-this-day | date: "%Y" %}
{% assign eventDay = on-this-day | date: "%j" | plus: 0 %}
<strong>{{ on-this-day  | date: "%a. %d %b" }}</strong>

{% for event in events %}
    
{% if event.Date == on-this-day-as-date and event.Cancelled !="1" %}
{% assign slug = event.Date | date:"%A-%d-%B-%Y" %}
<strong>Live Music:</strong> [{{ event.Artists }}]({{ '/live#' | relative_url }}#{{ slug | downcase  }}) - 
{% for venue in venues %} {% if venue.Name == event.Venue %}{% assign ThisVenue = site.venues | where:"Name", venue.Name | first %}[{{ venue.Name }}]( {{site.url}}{{ ThisVenue.url }} ){% endif %}{% endfor %}
{%- endif -%}
{%- endfor -%}



{% if weekday == "Monday" %}
{% include regular-monday.md %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Monday of the month**<br>
{% include regular-monday-first.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Monday of the month**<br>
{% include regular-monday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Tuesday" %}
{% include regular-tuesday.md %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=2 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Tuesday of the month**<br>
{% include regular-tuesday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Wednesday" %}
{% include regular-wednesday.md %}
{% endif %}

{% if weekday == "Thursday" %}
{% include regular-thursday.md %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Thursday of the month**<br>
{% include regular-thursday-first.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Thursday of the month**<br>
{% include regular-thursday-second.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Thursday of the month**<br>
{% include regular-thursday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Saturday" %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=6 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Saturday of the month**<br>
{% include regular-saturday-first.md %}
{% endif %}
{% endif %}

{% if weekday == "Sunday" %}
{% include regular-sunday.md %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=0 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Sunday of the month**<br>
{% include regular-sunday-second.md %}
{% endif %}
{% endif %}


{% endfor %}

