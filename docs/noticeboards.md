---
title: Noticeboards
layout: page_v2
sub-title: FIX ME 
cover: splashes/BMTlogoSplash.jpg #No leading slash
#image-credit: "Photo: Bingley Camera Club"
navigation: true
---

Where can you put up a poster in the Bingley district?

If you know of any other noticeboards in the district or have any corrections please [contact us]({% link contact.md %}).

{% assign boards = site.data.noticeboards | sort: "Board" %}

<div style="overflow-x:auto;" >
<table class="events">
<tr>
<th>Board</th>
<th>Location</th>
<th>Contact</th>
<th>Notes</th>
</tr>
{% for board in boards %}
{% assign mod2 = forloop.index | modulo: 2 %}
<tr class="event-item {% if mod2 == 0 %}even{% else %}odd{% endif %}">
<td>{% if board.Board %}{{board.Board}}{% endif %}</td>
<td>{% if board.Location %}{{board.Location}}{% endif %}</td>
<td>{% if board.Contact %}{{board.Contact}}{% endif %}</td>
<td>{% if board.Notes%}{{board.Notes}}{% endif %}</td>
</tr>
{% endfor %}  
</table>
</div>

{% include about-this-page.md %}