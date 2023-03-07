
{% assign dayToday = 'now' | date: "%A" %}
{% if dayToday != "Friday" %}
## Make Music Today
Want to make your own music today ({{ dayToday }})?<br>
Check out our <a href="{% link regular-activities.md %}#{{ dayToday | downcase }}">Regular Activities page</a> to see what's on. 
{% else %}
## Make Music 
Check out our <a href="{% link regular-activities.md %}">Regular Activities page</a> to see what's on offer.
{% endif %}