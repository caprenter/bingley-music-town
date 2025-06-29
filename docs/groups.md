---
title: Music Groups
layout: page_v2
sub-title: It's good to make music with other people
cover: splashes/splash_groups.jpg #No leading slash
# image-credit: "Photo: Peter Kitching (Bingley Camera Club)"
navigation: true
---


Places where you can play and sing.

<div class="container logos">
{% for organisation in site.organisations %}
{% if organisation.type contains "music-group" %}

<div class="row"> 
<div class="column-8" markdown="1">
<h3><a href="{{ organisation.url }}">{{ organisation.name }}</a></h3>
{% if organisation.member %}
<div class="member-badge">
<p>Bingley Music Town Member</p>
</div>
{% endif %}
{{ organisation.short-description }}
<!--<div class="org-contact" markdown="1">
{% if organisation.email %}* **Email:** [{{ organisation.email }}](mailto:{{ organisation.email }}){% endif %}
{% if organisation.website %}* **Web:** [{{ organisation.website }} <i class="fa fa-external-link" aria-hidden="true"></i>]({{ organisation.website }}){:target="_blank" rel="noopener noreferrer"}{% endif %}
</div>-->
</div>
<div class="column-4 organisation-image">
{% if organisation.image %}
<img src="{{ '/assets/images/organisations' | relative_url }}/{{ organisation.image }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />
{% endif %}
{% if organisation.logo %}
<img src="{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}" alt="{{ organisation.name }}" title="{{ organisation.name }}" />
{% endif %}
</div>

</div>

{% endif %}
{% endfor %}
</div>


