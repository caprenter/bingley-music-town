---
title: Tuition
layout: page_v2
sub-title: Learn to sing and play
cover: splashes/splash_tuition.jpg #No leading slash
# image-credit: "Photo: Martin Singleton"
navigation: true
---
We've got some great teachers in the area.

We've also had funding from the 1887 Alfred Sharp Fund for a project for the Musical Education of Bingley residents which we are carrying out with local music teachers. We will be supporting ten students with their costs to progress their musical education.  

Here's a list of all the professionals who can help you to play and sing.

<div class="row row-cols-1 row-cols-md-4 d-flex align-items-stretch help g-4">
{% for organisation in site.organisations %}
{% if organisation.type contains "tuition" %}

  <div class="col">
    <div class="card h-100">
        <h5 class="card-header text-white bg-dark"><a class="text-white" href="{{ organisation.url }}">{{ organisation.name }}</a></h5>
        <!-- <a href="/help/{{ help.slug }}"><img class="card-img-top" src="/assets/images/helps/{{ help.image | replace: '.jpg', '.resized.jpg' }}" alt="{{ help.title }}" /></a> -->
        {% if organisation.image %}
        <a href="{{ organisation.url }}"><img src="{{ '/assets/images/organisations' | relative_url }}/{{ organisation.image }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive card-img-top p-4" /></a>
        {% endif %}
        {% if organisation.logo %}
        <a href="{{ organisation.url }}"><img src="{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}" alt="{{ organisation.name }}" title="{{ organisation.name }}"  class="img-responsive card-img-top p-4" /></a>
        {% endif %}
        <div class="card-body">
            {% if organisation.member %}
            <div class="member-badge">
            <p>Bingley Music Town Member</p>
            </div>
            {% endif %}
            <p class="card-text">{{ organisation.short-description }}</p>
            <!--<a href="{{ help.ExternalLink }}" class="card-link">{{ help.title }} on the web</a>-->
        </div>
    </div>
  </div>
{% endif %}
{% endfor %}
</div>