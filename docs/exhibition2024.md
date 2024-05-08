---
title: Bingley Makes Music
layout: listing
cover: exhibition2024/20231108-IMG_6465-Edit-7.jpg #No leading slash
image-credit: "Photo: Marcus Rattray (Bingley Camera Club)"
navigation: true
---

### May 16th - June 26th 2024

An exhibition of photographs celebrating music in the Bingley district taken by members of Bingley Camera Club.

The exhibition is in seven windows on Main Street, Bingley and in [Bingley Arts Centre<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleyartscentre.co.uk/){:target="_blank" rel="noopener noreferrer"} (open 10 am - 1 pm Monday-Friday).

This exhibition is to tell the story of people in Bingley having fun making and listening to music. It results from a collaboration between the enthusiastic hobby photographers at [Bingley Camera Club<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"}, and the local musicians and music lovers who have come together to form Bingley Music Town. 

We have spent the last year photographing as many activities as possible, and here we present 20 images of some of the people involved in making local music in our varied venues. Between May 16th and June 26th 2024 we also have displays in seven windows on Main Street and a print exhibition in [Bingley Arts Centre<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleyartscentre.co.uk/){:target="_blank" rel="noopener noreferrer"}. 

Once you’ve had a look at the exhibition, please [vote for your favourite picture nd fill out this short survey<i class="fa fa-external-link" aria-hidden="true"></i>](https://forms.gle/Q2goqRhdL4eGWZwZ9){:target="_blank" rel="noopener noreferrer"}.

There are lots of musical and other art, cultural and creative activities going on locally, we hope that this exhibition inspires you to get involved!

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

Please [vote for your favourite picture and fill out our short survey<i class="fa fa-external-link" aria-hidden="true"></i>](https://forms.gle/Q2goqRhdL4eGWZwZ9){:target="_blank" rel="noopener noreferrer"}.

We hope you have enjoyed our exhibition which is only possible because of the kind cooperation and support of the musicians, audiences and venues. 

In particular we thank
* [Bingley Arts Centre<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleyartscentre.co.uk/){:target="_blank" rel="noopener noreferrer"} for hosting our prints, 
* [Bradford Council<i class="fa fa-external-link" aria-hidden="true"></i>](){:target="_blank" rel="noopener noreferrer"} for financial support from their small arts grant scheme 
* Bingley Music Town for facilitation and continual support. 

Thank you especially to all the creative people, community groups and venues which are helping Bingley make music: there are too many to acknowledge here. 

[Bingley Camera Club<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"} Photographers who have contributed photographs so far are: Nigel Bain, Ginta Freiberga, Neil Horsley, Peter Kitching, Ron Pengelly, Paul 
Spencer, Marcus Rattray, Paul Vaughan, Mick Watson and Jim Weller.


If you are interested in photography, you can [find out more about Bingley Camera Club on their website<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"}

![Bradford Council Logo](assets/images/bradford.jpg)


