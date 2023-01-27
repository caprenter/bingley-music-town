---
title: Play
layout: listing
cover: BMTlogoSplash.jpg #No leading slash
#image-credit:
navigation: true
---

## Music Groups
Places where you can play and sing.

<div class="container logos">
{% for organisation in site.data.organisations %}
{% if organisation.type == "music-group" %}
<div class="row"> 
<div class="column-8" markdown="1">
<h3>{{ organisation.name }}</h3>
{% if organisation.member %}
<div class="member-badge">
<p>Bingley Music Town Member</p>
</div>
{% endif %}
{{ organisation.description }}
</div>
<div class="column-4 organisation-image">
{% if organisation.image %}
<img src="{{ '/assets/images/organisations' | relative_url }}/{{ organisation.image }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />
{% endif %}
<img src="{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />

</div>

</div>
{% endif %}
{% endfor %}
</div>


