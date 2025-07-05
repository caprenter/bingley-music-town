{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley First Monday Folk'"
    | first %}
{% include organisation_grid.md %}