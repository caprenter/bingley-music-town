---
title: Instruments
layout: page 
cover: splashes/BMTlogo_guitar.jpg #No leading slash
#image-credit: "Photo: Bingley Camera Club"
navigation: true
---

# Shop

Our local instrument shop is [Windstruments](https://www.windstruments.co.uk/) at Crossflatts. 

Windstruments started in 1994 as a woodwind and brass instrument repair company. Since then we have expanded into one of the largest stockists of musical instruments in the UK adding a branch in Harrogate, known as Music House, as well as Bingley. 

# Re-home

Got an instrument you no longer need? 

We've found ourselves finding good homes for instruments people no longer need, and we're happy to keep on doing so.

[Get in touch]({% link contact.md %}) if you have an instrument looking for a new home.

<div class="container">
<div class="row">
<div class="col-4" markdown="1">
![image tooltip here](/assets/images/instruments/yamaha_thumb.jpg)
</div>
<div class="col-8" markdown="1">
So far we have found new homes for:

 * a keyboard that was found in a house clearance and went to the student of Wilsden music teacher Paul Janetta. 
* another keyboard that went to a family where the child learns at school but they could not afford an instrument at home.
* a classical guitar, drum sticks, and other bits and pieces that went to a gigging drummer, and the guitar went to a singer in a punk band who is also learning to play guitar.
</div>
</div>
</div>

{% comment %}
Show tables of instruments avialbale and already gone
{% endcomment %}

{% assign instruments = site.data.instruments %}

{% assign gone = "" | split: ',' %}
{% assign available = "" | split: ',' %}
{% assign reserved = "" | split: ',' %}

{% for instrument in instruments %}
    {% if instrument.DateOut %}
         {% assign gone = gone | push: instrument %}
    {% elsif instrument.ReservedDate %}
        {% assign reserved = reserved | push: instrument %}
        {% assign has-reserved = true %}
    {% else %}
        {% assign available = available | push: instrument %}
  {% endif %}
{% endfor %}

## Available Instruments
<div style="overflow-x:auto;" >
<table class="events">
<tr>
<th>Instrument</th>
<th>Description</th>
<th>Notes</th>
</tr>
{% for instrument in available %}
{% assign mod2 = forloop.index | modulo: 2 %}

<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td>{{ instrument.Item }}</td>
<td>{{ instrument.Description }}</td>
<td>{{ instrument.SpecialRequirements }}</td>
</tr>
{% endfor %}  
</table>
</div>

{% if has-reserved %}
## Reserved for Collection
<div style="overflow-x:auto;" >
<table class="events">
<tr>
<th>Instrument</th>
<th>Description</th>
<th>Notes</th>
</tr>
{% for instrument in reserved %}
{% assign mod2 = forloop.index | modulo: 2 %}

<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td>{{ instrument.Item }}</td>
<td>{{ instrument.Description }}</td>
<td>{{ instrument.SpecialRequirements }}</td>
</tr>
{% endfor %}  
</table>
</div>
{% endif %}

## We've distributed the following
<div style="overflow-x:auto;" >
<table class="events">
<tr>
<th>Instrument</th>
<th>Description</th>
<th>Notes</th>
</tr>
{% for instrument in gone %}
{% assign mod2 = forloop.index | modulo: 2 %}

<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td>{{ instrument.Item }}</td>
<td>{{ instrument.Description }}</td>
<td>{{ instrument.SpecialRequirements }}</td>
</tr>
{% endfor %}  
</table>
</div>