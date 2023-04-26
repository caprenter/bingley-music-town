{% comment %}
Sun = 0
Mon = 1
Tue = 2
Wed = 3
Thur = 4
Fri = 5
Sat = 6
{% endcomment %}

{% assign weekday = "now" | date: "%A" %}

{% if weekday != "Friday" %}
## Make Music Today
Want to make your own music today ({{ weekday }})?<br>

{% if weekday == "Monday" %}
{% include regular-monday.md %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=1 %}
{% if TDTD %}
**Every First Monday of the month**<br>
{% include regular-monday-first.md %}
{% endif %}
{% endif %}

{% if weekday == "Tuesday" %}
{% include regular-tuesday.md %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=2 %}
{% if TDTD %}
**Every Third Tuesday of the month**<br>
{% include regular-tuesday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Wednesday" %}
{% include regular-wednesday.md %}
{% endif %}

{% if weekday == "Thursday" %}
{% include regular-thursday.md %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=4 %}
{% if TDTD %}
**Every Second Thursday of the month**<br>
{% include regular-thursday-second.md %}
{% endif %}
{% endif %}

{% if weekday == "Saturday" %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=6 %}
{% if TDTD %}
**Every First Saturday of the month**<br>
{% include regular-saturday-first.md %}
{% endif %}
{% endif %}

{% if weekday == "Sunday" %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=0 %}
{% if TDTD %}
**Every Second Sunday of the month**<br>
{% include regular-sunday-second.md %}
{% endif %}
{% endif %}

Check out our <a href="{% link regular-activities.md %}#{{ weekday | downcase }}">Regular Activities page</a> to see what's on. 
{% else %}
## Make Music 
Check out our <a href="{% link regular-activities.md %}">Regular Activities page</a> to see what's on offer.
{% endif %}