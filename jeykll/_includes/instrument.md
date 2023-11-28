<!--
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
-->


<div class="col mb-4">
<div class="card h-100">
  <h4 class="card-header text-white bg-dark">{{ instrument.Item }}</h4>
  {% if instrument.Image %}
  <img class="card-img-top" src="{{ site.url }}/assets/images/instruments/{{ instrument.Image}}" alt="{{ instrument.Item }}">
  {%endif %}
  <div class="card-body">
    {% if instrument.OnLoanUntil %}
      <div class="alert alert-info" role="alert">
         On loan until {{ instrument.OnLoanUntil }} 
      </div>
    {% endif %}
    <p class="card-text"><strong>{{ instrument.Description }}</strong></p>
    <p class="card-text">{{ instrument.SpecialRequirements }}</p>
  </div>
</div>
</div>