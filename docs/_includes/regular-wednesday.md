{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Singing For Fun'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Library Acoustic Sessions Time'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Pick Up and Play Session'"
    | first %}
{% include organisation_grid.md %} 

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Handbell Ringers'"
    | first %}
{% include organisation_grid.md %}