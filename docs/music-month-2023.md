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

## Members Meet Ups in November

Meet other Bingley Music Town members during music month at these events.

* **Wed 1st Nov:** Pick up and Play session at the Chip N Ern, Bingley from 8pm.
* **Mon 6th Nov:** Bingley Music Town First Birthday Party at Bingley First Monday Folk, Ryshworth Club, Crossflatts (7pm -10pm).
* **Wed 8th Nov:** Bingley Music Town Steering Group meeting - all welcome. Cardigan House Bingley, 7pm - 8pm.
* **Sun 12th Nov:** Buskers open mic at Martinez Wine Bar, Bingley - from 7pm.
* **Thurs 16th Nov:** Bingley Ukulele Group, The Peacock Bar, Bingley, (group is 7 - 9, suggest we're there from 6pm).
* **Sat 18th Nov:** Laurel Canyon Union at the Brown Cow, Bingley (meet from 8pm, music starts at 9).
* **Wed 22nd Nov:** Blues Night Martinez Wine Bar from 7pm.

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

{% assign start-day = "01-05-2025" | date: '%s' %}

{% for i in (0..29) %}
   
{% assign seconds-to-add = 86400 | times: i %} 
{% assign on-this-day = start-day | plus: seconds-to-add %}
{% assign weekday = on-this-day | date: "%A" %}
{% assign on-this-day-as-date = on-this-day | date: "%Y-%m-%d" %}
{% assign eventYear = on-this-day | date: "%Y" %}
{% assign eventDay = on-this-day | date: "%j" | plus: 0 %}
{% assign has-events = false %}
<h3>{{ on-this-day  | date: "%A %e %B" }}</h3>

{% for event in events %}
    
{% if event.Date == on-this-day-as-date %}
{% assign slug = event.Date | date:"%A-%d-%B-%Y" %}
{% for venue in venues %} {% if venue.Name == event.Venue %}{% assign ThisVenue = site.venues | where:"Name", venue.Name | first %}{% endif %}{% endfor %}
<div class="card-group event-card text-dark mb-2">
    <div class="card mb-0 border-0">
        <div class="card-body py-4 border-bottom">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <div class="d-flex flex-column">
                    {% if event.Presents %}<h5>{{ event.Presents }}</h5>{% endif %}
                        <h3 class="card-title text-capitalize mt-0">
                            <strong markdown="1">{% if event.Cancelled =="1" %}CANCELLED <br>{% endif %}[{{ event.Artists }}]({{ '/live#' | relative_url }}#{{ slug | downcase  }})</strong>                    
                        </h3>
<div class="card-text" markdown="1">**[{{ ThisVenue.Name }}]( {{site.url}}{{ ThisVenue.url }} )**{: class="venue-name" }
{% if event.Cancelled =="1" %}
{{ event.CancelledText }}
{: class="description" }
{% else %}
{{ event.Description }}
{: class="description" }
{% if event.Time %}*From: {{ event.Time}}*
{: class="description" }{% endif %}
*Price: {{ event.Price }}*
{: class="description" }
{% if event.Tickets %} [Buy Tickets]({{ event.Tickets }}){% endif %}
{% endif %}
</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% assign has-events = true %}
{%- endif -%}
{%- endfor -%}



{% if weekday == "Monday" %}
{% include regular-monday.md %}
{% assign has-events = true %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Monday of the month**<br>
{% include regular-monday-first.md %}
{% assign has-events = true %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Monday of the month**<br>
{% include regular-monday-third.md %}
{% assign has-events = true %}
{% endif %}
{% endif %}

{% if weekday == "Tuesday" %}
{% include regular-tuesday.md %}
{% assign has-events = true %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=2 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Tuesday of the month**<br>
{% include regular-tuesday-third.md %}
{% assign has-events = true %}
{% endif %}
{% endif %}

{% if weekday == "Wednesday" %}
{% include regular-wednesday.md %}
{% assign has-events = true %}
{% endif %}

{% if weekday == "Thursday" %}
{% include regular-thursday.md %}
{% assign has-events = true %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Thursday of the month**<br>
{% include regular-thursday-first.md %}
{% assign has-events = true %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Thursday of the month**<br>
{% include regular-thursday-second.md %}
{% assign has-events = true %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Thursday of the month**<br>
{% include regular-thursday-third.md %}
{% assign has-events = true %}
{% endif %}
{% endif %}

{% if weekday == "Saturday" %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=6 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Saturday of the month**<br>
{% include regular-saturday-first.md %}
{% assign has-events = true %}
{% endif %}
{% endif %}

{% if weekday == "Sunday" %}
{% include regular-sunday.md %}
{% assign has-events = true %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=0 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Sunday of the month**<br>
{% include regular-sunday-second.md %}
{% assign has-events = true %}
{% endif %}
{% endif %}

{% if has-events != true %}
We don't know of any events on this date yet. [Contact ucds]({% link contact.md %}) if you know of something going on.
{% endif %}
{% endfor %}

