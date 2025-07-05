{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Open Mic At the Birches'"
    | first %}
{% include organisation_grid.md %}