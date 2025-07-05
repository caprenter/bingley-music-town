{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Buskers'"
    | first %}
{% include organisation_grid.md %}