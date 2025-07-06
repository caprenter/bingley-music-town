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
{% assign on-this-day-as-date = "now" | date: "%Y-%m-%d" %}


{% if weekday != "Saturday" %}
## Make Music Today
{% assign beCarefulDates = "2024-12-24,2024-12-25,2024-12-26,2024-12-27,2024-12-28,2024-12-29,2024-12-30,2024-12-31,2025-01-01,2025-01-02,2024-01-03" | split:"," %}
{% if beCarefulDates contains on-this-day-as-date %}
<strong>Because of the holiday season these events may or may not be on. Check in advance.</strong>
{% endif %}
Want to make your own music today ({{ weekday }})?<br>

{% if weekday == "Monday" %}
{% include regular-monday.md %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Monday of the month**<br>
{% include regular-monday-first.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=1 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Monday of the month**<br>
{% include regular-monday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Tuesday" %}
{% include regular-tuesday.md %}
{% comment %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=2 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Tuesday of the month**<br>
{% include regular-tuesday-third.md %}
{% endif %}
{% endcomment %}
{% endif %}

{% if weekday == "Wednesday" %}
{% include regular-wednesday.md %}
{% include nth-occurrence.md nth_occurrence="last" day_of_week=3 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Last Wednesday of the month**<br>
{% include regular-wednesday-last.md %}
{% endif %}
{% endif %}

{% if weekday == "Thursday" %}
{% include regular-thursday.md %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Thursday of the month**<br>
{% include regular-thursday-first.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Thursday of the month**<br>
{% include regular-thursday-second.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=4 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Thursday of the month**<br>
{% include regular-thursday-third.md %}
{% endif %}
{% endif %}

{% if weekday == "Friday" %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=5 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Friday of the month**<br>
{% include regular-friday-third.md %}
{% endif %}
{% endif %}

<!-- {% if weekday == "Saturday" %}
{% include nth-occurrence.md nth_occurrence=1 day_of_week=6 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every First Saturday of the month**<br>

{% endif %}
{% endif %} -->

{% if weekday == "Sunday" %}
{% include regular-sunday.md %}
{% include nth-occurrence.md nth_occurrence=2 day_of_week=0 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Second Sunday of the month**<br>
{% include regular-sunday-second.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence=3 day_of_week=0 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Third Sunday of the month**<br>
{% include regular-sunday-third.md %}
{% endif %}
{% include nth-occurrence.md nth_occurrence="last" day_of_week=0 dateToday=on-this-day-as-date %}
{% if TDTD %}
**Every Last Sunday of the month**<br>
{% include regular-sunday-last.md %}
{% endif %}
{% endif %}

{% else %}

## Make Music 
{% endif %}

<div class="container p-4 bg-light" markdown="1">
Check out our <a href="{% link regular-activities.md %}">Regular Activities page</a> to see what's on offer throughout the week.<br>
Looking for [Music Teacher]({% link tuition.md %})? Check out our [Tuition page]({% link tuition.md %}).
</div>