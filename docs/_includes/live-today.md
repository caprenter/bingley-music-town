{% assign dateToday = 'now' | date: "%Y-%m-%d" %}
{% assign currentYear = site.time | date: "%Y" %}
{% assign today = site.time | date: "%j" | plus: 0 %}
{% assign tomorrow = site.time | date: "%j" | plus: 1 %}
{% assign currentDay_plus_seven_days = site.time | date: "%j" | plus: 7  %}
{% assign weekday = "now" | date: "%A" %}

{% assign events = site.data.events | sort: "Date"  %}
{% assign artists = site.data.artists %}
{% assign venues = site.data.venues %}


## Live Music This Week
Check out our [Upcoming Events page]({% link live.md %}) to see all listings.

{% assign eventstoday = 0 %}
{% for event in events %}
{% assign eventYear = event.Date | date: "%Y" %}
{% assign eventDay = event.Date | date: "%j" | plus: 0 %}
{%- if currentYear == eventYear and eventDay < currentDay_plus_seven_days and eventDay >= tomorrow  -%}
{% assign week-date = event.Date %}
{%- endif -%}
{% assign mod2 = forloop.index | modulo: 2 %}
{% endfor %}

{% if week-date %}
<div class="container p-0">
<div class="row">
<div class="col-md-12">

{% for event in events %}
{% if event.Artists and event.Artists != nil and event.Artists != "" %}
{% assign eventYear = event.Date | date: "%Y" %}
{% assign eventDay = event.Date | date: "%j" | plus: 0 %}

{%- if currentYear == eventYear and eventDay < currentDay_plus_seven_days and eventDay >= today  -%}
{% assign slug = event.Date | date:"%A-%d-%B-%Y" %}
{% for venue in venues %} {% if venue.Name == event.Venue %}{% assign ThisVenue = site.venues | where:"Name", venue.Name | first %}{% endif %}{% endfor %}
<div class="card-group event-card text-dark mb-2">
    <div class="card mb-0 border-0">
        <div class="card-body py-4 border-bottom {% if event.Date == dateToday  %}bg-light{% endif %}">
            <div class="row">
                <div class="col-lg-3 col-md-5 date pb-4">
                    <p class="p-0 m-0 display-8">{{ event.Date | date: "%A" }}</p>
                    <p class="p-0 m-0 display-1">{{ event.Date | date: "%d" }}</p>
                    <p class="p-0 m-0 display-8">{{ event.Date | date: "%B" }}</p>
                    {% if event.Date == dateToday  %}<h5 class="p-0 m-0 display-8 ">TODAY</h5>{% endif %}
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="d-flex flex-column">
                    {% if event.Presents %}<h5>{{ event.Presents }}</h5>{% endif %}
                        <h3 class="card-title text-capitalize mt-0">
                            <strong markdown="1">{% if event.Cancelled =="1" %}CANCELLED <br>{% endif %}[{{ event.Artists }}]({{ '/live#' | relative_url }}#{{ slug | downcase  }})</strong>                    
                        </h3>
<div class="card-text" markdown="1">**[{{ ThisVenue.Name }}]( {{ ThisVenue.url }} )**{: class="venue-name" }
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
{% assign week-date = event.Date %}
{%- endif -%}
{%- endif -%}
{%- endfor -%}
</div>
</div>
</div>

{% if weekday == "Sunday" %}
{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Tower Bell Ringers'"
    | first %}
### Church Bells
9:45am - 10:30am - All Saints Church Bells will be rung by [{{ organisation.name }}]({{ organisation.url }}) for the Sunday service.
{% endif %}

{% if weekday == "Tuesday" %}
{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Tower Bell Ringers'"
    | first %}
### Church Bells
7:30pm - All Saints Church Bells will be rung by [{{ organisation.name }}]({{ organisation.url }}) for practice.
{% endif %}
{% endif %}<!-- End Only print this once section -->