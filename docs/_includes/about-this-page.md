{% assign about_url = "https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/edit?usp=sharing" %}
{% if include.url %}
{% assign about_url = include.url %}
{% endif %}
<div class="bg-light mt-4  p-4" markdown="1">

#### About this page

We curate this data in a [google spreadsheet]({{ about_url }}). If you would like to help us manage the data please [contact us]({% link contact.md %}). If you want to re-use the data please do.

</div>