{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Rumble Events Bingley'" 
    | first %}
{% include organisation_grid.md %}
