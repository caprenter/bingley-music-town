
{% assign dayToday = 'now' | date: "%A" %}

{% include nth-occurrence.html date=site.time nth_occurrence=2 day_of_week="Wednesday" %}


{% if dayToday != "Friday" %}
## Make Music Today
Want to make your own music today ({{ dayToday }})?<br>
Check out our <a href="{% link regular-activities.md %}#{{ dayToday | downcase }}">Regular Activities page</a> to see what's on. 
{% else %}
## Make Music 
Check out our <a href="{% link regular-activities.md %}">Regular Activities page</a> to see what's on offer.
{% endif %}