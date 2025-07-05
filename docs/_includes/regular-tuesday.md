{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Tower Bell Ringers'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Cullingworth Community Choir'"
    | first %}
{% include organisation_grid.md %}