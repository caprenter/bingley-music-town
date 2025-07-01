{% if organisation.image %}
{% capture image-src %}
{{ '/assets/images/organisations' | relative_url }}/{{ organisation.image }}
{% endcapture %}
{% elsif organisation.logo %}
{% capture image-src %}
{{ '/assets/images/logos' | relative_url }}/{{ organisation.logo }}
{% endcapture %}
{% endif %}

<div class="col mb-4">
<div class="card h-100">
<a href="{{ organisation.url }}"><img class="card-img-top p-0" src="{{ image-src}}" alt="{{ organisation.name }}" /></a>
<div class="card-body p-5">
<h4><a href="{{ organisation.url }}">{{ organisation.name }}</a></h4>
    <!--<h6 class="card-subtitle mb-2 text-muted">{{ help.titleType }}</h6>-->
    <p class="card-text">{{ organisation.short-description }}</p>
    <!--<a href="{{ help.ExternalLink }}" class="card-link">{{ help.title }} on the web</a>-->
</div>
{% if organisation.member %}
<div class="card-footer text-muted">
<div class="member-badge">Bingley Music Town Member</div>
</div>
{% endif %}
</div>
</div>