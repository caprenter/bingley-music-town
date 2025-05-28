---
layout: fixed_listing
cover: splashes/this-month.jpg #No leading slash
image-credit: "Photo: Nigel Bain - Bingley Camera Club"
navigation: true
---
{% assign currentMonth = site.time | date: '%B' %}
{% assign currentYear = site.time | date: '%Y' %}
{% assign currentMonthNumber = site.time | date: '%m' %}
{% assign start-date = "01-" | append: currentMonthNumber  | append: "-" | append: currentYear %}

# Live Music in {{currentMonth}} {{currentYear}}

You can always find [live events in Bingley]({% link live.md %}) along with [regular music making activities in our district]({% link regular-activities.md %}) right here on this website. 

We've grouped this month's gigs into one long list so that you can easily see what's happening in Bingley Music Town throughout {{currentMonth}}.

Don't forget to checkout out the [regular music making activities]({% link regular-activities.md %}) page for open mics, traditional music, and other regular events.

{% assign allEvents = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}


{% assign events = '' | split: '' %}
{% for event in allEvents %}
{% if event.Artists and event.Artists != nil and event.Artists != "" %}
{% assign eventMonth = event.Date | date: "%m" %}
{% assign eventYear = event.Date | date: "%Y" %}
  {% if eventMonth == currentMonthNumber %}
  {% if eventYear == currentYear  %}
     {% assign events = events | push: event %}
  {% endif %}
  {% endif %}
{% endif %}
{% endfor %}




{% comment %}
Sun = 0
Mon = 1
Tue = 2
Wed = 3
Thur = 4
Fri = 5
Sat = 6
{% endcomment %}




{% for event in events %}
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
    
<h3>{{ on-this-day  | date: "%A %e %B" }}</h3>
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
{%- endfor -%}



