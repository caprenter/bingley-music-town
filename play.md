---
title: Play
layout: listing
cover: BMTlogoSplash.jpg #No leading slash
#image-credit:
navigation: true
---

## Music Groups

<div class="container logos">
{% for organisation in site.data.organisations %}
{% if organisation.type == "music-group" %}
<div class="row">
    <h3>{{ organisation.name }}</h3>
    <div>
    {% if organisation.image %}
        <img src="{{ '/assets/images/organisations' | relative_url }}/{{ organisation.image }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />
    {% else %}
        <img src="{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />
    {% endif %}
    </div>
    <div>
        
<div markdown="1">
{{ organisation.description }}
</div>
    </div>
</div>
{% endif %}
{% endfor %}
</div>


