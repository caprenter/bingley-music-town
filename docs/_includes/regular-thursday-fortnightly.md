{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Scratch Band'"
    | first %}
{% include organisation_grid.md %}
