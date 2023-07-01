<div class="instrument event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<div class="instrument-title">
{{ instrument.Item }}
</div>
<div class="instrument-description">
{{ instrument.Description }}
</div>
<div class="row">
<div class="col-9 instrument-image">
{{ instrument.SpecialRequirements }}
</div>
<div class="col-3 instrument-image">
{% if instrument.Image %}<img src="{{ site.url }}/assets/images/instruments/{{ instrument.Image }}" alt="{{ instrument.Item }}"/>{% endif %}
</div>
</div>
</div>