{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Heart Song West Yorkshire'"
    | first %}
{% include organisation_grid.md %}