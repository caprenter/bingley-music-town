---
title: Tuition
layout: listing
cover: splashes/BMTlogo_effects.jpg #No leading slash
image-credit: "Photo: Martin Singleton"
navigation: true
---

We've got some great teachers in the area.

We've also had funding from the 1887 Alfred Sharp Fund for a project for the Musical Education of Bingley residents which we are carrying out with local music teachers. We will be supporting ten students with their costs to progress their musical education.  

He're a list of all the professionals who can help you to play and sing.

<div class="container logos">
{% for organisation in site.organisations %}
{% if organisation.type contains "tuition" %}

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
<img src="{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive" />
{% endif %}

</div>

</div>

{% endif %}
{% endfor %}
</div>


