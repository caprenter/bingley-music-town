{% assign Fortnightly = false %}
{% assign dateToday = include.dateToday %}
{% assign dateTodayUnix = dateToday | date: '%s' | plus: 0 %}
{% assign startDate = include.startToday %}
{% assign startDateUnix = startDate | date: '%s' | plus: 0 %}

{% if dateTodayUnix >= startDateUnix %} 
{% if dateToday == startDate %}
{% assign Fortnightly = true %}
{% else %}
{% assign unix-time-difference = dateTodayUnix - startDateUnix %}
{% assign days-difference = unix-time-difference | divided_by: 86400 %}
{% if days-difference | modulo 14 == 0 %}
{% assign Fortnightly = true %}
{% endif %}
{% endif %}
{% endif %}