---
title: Bingley Makes Music
layout: listing
cover: exhibition2024/20231108-IMG_6465-Edit-7.jpg #No leading slash
image-credit: "Photo: Marcus Rattray (Bingley Camera Club)"
navigation: true
---

An exhibition of photographs celebrating music in the Bingley district taken by members of Bingley Camera Club. 
### May 16th - June 29th 2024
at Bingley Arts Centre


{% assign exhibits = site.data.exhibition2024 | sort: "order" %}
<div class="row row-cols-1 d-flex align-items-stretch exhibition" markdown="1">

{% for exhibit in exhibits %}
### {{ exhibit.title }}
{: class="exhibit-title"}
Photographer: {{ exhibit.photographer }}
{: class="photographer"}
{% assign altcaptitle = exhibit.title | replace: "_"," " | append: " - Photos by Bingley Camera Club" %}
<a href="{{site.baseurl}}/assets/images/exhibition2024/{{ exhibit.image }}" data-toggle="lightbox" data-gallery="example-gallery" data-caption="{{ altcaptitle }}" class="col-sm-4"><img src="{{site.baseurl}}/assets/images/exhibition2024/{{ exhibit.image }}" alt="{{ altcaptitle }}" title="{{ altcaptitle }}" class="img-fluid" /></a>
<!-- ![exhibit.title](assets/images/exhibition2024/{{ exhibit.image }}) -->
{: class="img-responsive"}
<div class="exhibit-description" markdown="1">{{ exhibit.description }}</div>
{% endfor %}
</div>

## Thank you
[Bingley Camera Club<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"} have been helping us to document music in the area, and we use those photos across this website. See the [gallery]({% link gallery.md %}) for more of their work.




