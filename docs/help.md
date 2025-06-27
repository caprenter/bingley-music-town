---
title: Help Wanted
layout: page_v2
sub-title: FIX ME
cover: splashes/BMTlogoSplash.jpg #No leading slash
#image-credit: "Photo: Peter Kitching (Bingley Camera Club)"
navigation: true
---


## Can you help?

So many people doing so many wonderful things around music. 

Sometimes we need a little help from our friends so we've set up this community notice board of requests we've received for help.

{% assign helps = site.data.help | sort: "order" %}
<div class="row row-cols-1 row-cols-md-3 d-flex align-items-stretch help">
{% for help in helps %}
{% include helps.md %}
{% endfor %}
</div>

## Thank you
[Bingley Camera Club<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"} have been helping us to document music in the area, and we use those photos across this website. See the [gallery]({% link gallery.md %}) for more of their work.




