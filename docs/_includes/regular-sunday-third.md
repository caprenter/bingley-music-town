{% assign venue = site.venues 
    | where_exp:"venue", "venue.Name contains 'Chip'"
    | first %}
**Open Decks Vinyl Revival**<br>
Vinyl records take centre stage on the third Sunday of the month. Bring some records to play or just come along to listen. Dancing is allowed!<br>
3pm - 9pm, [{{ venue.Name }}]({{ venue.url }}), Bingley