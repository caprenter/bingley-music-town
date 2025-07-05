{% assign regular_days = site.data.regular_days_mapping.frequency %}
{% assign venues = site.venues %}

{% for meet in meets %}

{% for venue in venues %}

{% if meet.meets-at == venue.Name %}
{% assign meets-at-url = venue.url %}
{% endif %}
{% endfor %} 

{% if meets-at-url %}
<p class="card-text fs-4 fw-bold my-2"> {{ regular_days[meet.frequency] }}, {{ meet.meets-when }}, <a href="{{meets-at-url}}">{{meet.meets-at}}</a></p>
{% else %}
<p class="card-text fs-4 fw-bold my-2"> {{ regular_days[meet.frequency] }}, {{ meet.meets-when }}, {{meet.meets-at}}</p>
{% endif %}

{% endfor %} 