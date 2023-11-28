{% assign TDTD = false %}
{% assign dateToday = include.dateToday %}
{% assign dayToday = dateToday | date: "%d" | plus:0 %}
{% assign firstDOM = dateToday | truncate: 8, "" | append: "01"  %}
{% assign first_DOM_as_day = firstDOM | date: "%A" %}
{% assign first_DOM_as_day_num = firstDOM | date: "%w" %}
{% assign day_of_week_we_want = include.day_of_week  %}
{% assign additional_days = day_of_week_we_want | minus: first_DOM_as_day_num %}
{% if  additional_days >= 0 %}
{% assign first_occurrence = 1 |plus: additional_days %}
{% else %}
{% assign first_occurrence = 8 |plus: additional_days %}
{% endif %}
{% assign nth_occurrence = include.nth_occurrence %}
{% assign weeks_to_add = nth_occurrence | minus:1 | times: 7 %}
{% assign date_we_want_day = weeks_to_add | plus: first_occurrence %}
{% if date_we_want_day == dayToday %}
{% assign TDTD = true %}
{% endif %}