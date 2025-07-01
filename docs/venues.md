---
title: Venues
sub-title: Places to play, watch, listen, dance, sing...
layout: page_v2
cover: splashes/splash_venue_default.jpg #No leading slash
# image-credit: "Photo: Neil Horsley, Bingley Camera Club"
navigation: true
---
This is a list of places in our district where live music takes place.

Check out our [live music events listing]({% link live.md %}).

<div class="container logos venues">
{% for venue in site.venues %}
{% if venue.closed-date !=nil %}
    {% continue %}
{% endif %}

<div class="row m-0 mb-4"> 
<div class="column-8" markdown="1">
<!-- <h3><a href="{{ venue.url }}">{{ venue.Name }}</a></h3>
{% if venue.Member =='yes' %}
<div class="member-badge">
<p>Bingley Music Town Member</p>
</div>
{% endif %}
<p class="venue-address">{{ venue.Address }}{% if venue.Postcode %}, {{ venue.Postcode }}{% endif %}</p>
<p class="venue-description">{{ venue.Description }}</p>

<!-- <div class="org-contact" markdown="1">
{% if venue.email %}* **Email:** [{{ venue.email }}](mailto:{{ venue.email }}){% endif %}
{% if venue.Web %}* **Web:** [{{ venue.Web }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ venue.Web }}){:target="_blank" rel="noopener noreferrer"}{% endif %}
</div> -->
<!-- </div>  -->

<div class="card h-100 mb-4">
  <!-- <h4 class="card-header text-white bg-dark">{{ instrument.Item }}</h4> -->
  {% if venue.splash %}
  <img class="card-img-top p-0" src="/assets/images/venues/{{ venue.splash}}" alt="{{ venue.Name }}">
  {%endif %}
  <div class="card-body p-4">
  <h4><a href="{{ venue.url }}">{{ venue.Name }}</a></h4>
    {% if venue.Member =='yes' %}
    <div class="member-badge">
    <p>Bingley Music Town Member</p>
    </div>
    {% endif %}
    <p class="venue-address card-text m-0">{{ venue.Address }}{% if venue.Postcode %}, {{ venue.Postcode }}{% endif %}</p>
    <p class="venue-description card-text m-0">{{ venue.Description }}</p>
<div class="org-contact" markdown="1">
{% if venue.email %}* **Email:** [{{ venue.email }}](mailto:{{ venue.email }}){% endif %}
{% if venue.Web %}* **Web:** [{{ venue.Web }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ venue.Web }}){:target="_blank" rel="noopener noreferrer"}{% endif %}
</div>
  </div>
</div>
</div><!--column -->

<div class="column-4 venue-image">
{% include upcoming-events-table.md WhichVenue=venue.Name %}
</div><!--column -->

</div>

{% endfor %}
</div>


