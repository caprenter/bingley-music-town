{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Rumble Up The Ryshworth'"
    | first %}
{% include organisation_grid.md %}
