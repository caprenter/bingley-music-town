{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Vinyl Revival'"
    | first %}
{% include organisation_grid.md %}