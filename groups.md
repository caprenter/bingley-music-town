---
title: Music Groups
layout: listing
cover: splashes/BMTlogoSplash.jpg #No leading slash
#image-credit:
navigation: true
---
{% assign organisations = site.data.organisations | sort: "name" %}

Places where you can play and sing.

<div class="container logos">
{% for organisation in organisations %}
{% if organisation.type contains "music-group" %}

<div class="row"> 
<div class="column-8" markdown="1">
<h3>{{ organisation.name }}</h3>
{% if organisation.member %}
<div class="member-badge">
<p>Bingley Music Town Member</p>
</div>
{% endif %}
{{ organisation.description }}
<div class="org-contact" markdown="1">
{% if organisation.email %}* **Email:** [{{ organisation.email }}](mailto:{{ organisation.email }}){% endif %}
{% if organisation.url %}* **Web:** [{{ organisation.url }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ organisation.url }}){:target="_blank" rel="noopener noreferrer"}{% endif %}
</div>
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


