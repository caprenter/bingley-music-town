---
title: Regular Activities
layout: page 
cover: splashes/BMTlogo_piano.jpg #No leading slash
image-credit: Becs Leighton Music
navigation: true
---
Below is a list of things we think go in in Bingley each week.

Where links are available we've put them in. We appreciate that finding out more information is not always easy, but probably best to try to double check before turning up.

### Monday 
{% include regular-monday.md %}

#### First Monday of the month
{% include regular-monday-first.md %}

### Tuesday
{% include regular-tuesday.md %}

#### Third Tuesday of the month
{% include regular-tuesday-third.md %}

### Wednesday
{% include regular-wednesday.md %}

{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name == 'Martinez Bingley Wine Shop & Wine Bar'"
    | first %}
Blues Night<br>
approx 7pm, [{{ venue.Name }}]({{ venue.url }}), Bingley

### Thursday 
{% include regular-thursday.md %}

#### Second Thursday of the month
{% include regular-thursday-second.md %}

### Saturday

#### First Saturday of the month
{% include regular-saturday-first.md %}

### Sunday

#### Second Sunday of the month
{% include regular-sunday-second.md %}