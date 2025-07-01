---
title: Effects Library
layout: page_v2
sub-title: What would life be without a bit of delay, chorus, distortion.. 
cover: splashes/BMT_Effects.jpg #No leading slash
#image-credit: "Photo: Bingley Camera Club"
navigation: true
---

We have a number of guitar effects pedals available to borrow.

The library is a 'low admin' enterprise and runs on goodwill and trust.

We do our best to make sure everything is working for you, and can advise you about how to use it, including the correct way to power them. 

This service is run voluntarily by Dave Johnson at [Bingley Guitar Studio]({% link _organisations/bingley_guitar_studio.md %}), First Floor 122-124 Main Street (above Ison Harrison Solicitors), Bingley, BD16 2HL

<div class="alert alert-info block rounded" markdown="1">
<h4>Instruments</h4>

We also take in and re-home instruments that people no longer need. See our [instruments page]({% link instruments.md %}) to find out more. 
</div>

## Request an effect

Fill in our [Request an Instrument form](https://docs.google.com/forms/d/e/1FAIpQLSfgOb9AqzPsfuYIa1MiFecc6Fuw5kwAUicM_X0914f5r9BMdQ/viewform), and we'll be in touch.

## Donate an instrument

If you have unused gear that you'd like to donate to the library, please fill in our [Donate an Instrument form](https://docs.google.com/forms/d/e/1FAIpQLSfpGeqaYlQz2LAsN3985pGQv32smi1tkOYU_kkgBsaX7lsrMg/viewform) , and we'll be in touch.

## Effects
{% assign effects = site.data.effects %}

<div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch effects">
{% for effect in effects %}
  <div class="col mb-4">
    <div class="card h-100">
    <h4 class="card-header text-white bg-dark">{{ effect.EffectType }}</h4>
    <a href="{{site.baseurl}}/assets/images/instruments/effects/{{ effect.Image }}" data-toggle="lightbox" data-gallery="example-gallery" data-caption="{{ effect.Effect }}"><img class="card-img-top p-0" src="{{ site.url }}/assets/images/instruments/effects/{{ effect.Image }}" alt="{{ effect.Effect }}"></a>
    <div class="card-body">
      <h5 class="card-title">{{ effect.Effect }}</h5>
      {% if effect.OnLoanUntil %}
      <div class="alert alert-info" role="alert">
         On loan until {{ effect.OnLoanUntil }} 
      </div>
      {% endif %}
      <!--<h6 class="card-subtitle mb-2 text-muted">{{ effect.EffectType }}</h6>-->
      <p class="card-text">{{ effect.Description }}</p>
      <!--<a href="{{ effect.ExternalLink }}" class="card-link">{{ effect.Effect }} on the web</a>-->
    </div>
    {% if effect.VideoLink or effect.ExternalLink %}
    <div class="card-footer text-muted">
    {% if effect.VideoLink %}
    <a href="{{ effect.VideoLink }}"><i class="bi bi-play-btn-fill p-3"></i>{{ effect.Effect }}</a>
    {% elsif effect.ExternalLink %}
    <a href="{{ effect.ExternalLink }}"><i class="bi bi-info-circle-fill p-3"></i>{{ effect.Effect }}</a>
    {% endif %}
    </div>
    {% endif %}
    </div>
  </div>
{% endfor %}
</div>