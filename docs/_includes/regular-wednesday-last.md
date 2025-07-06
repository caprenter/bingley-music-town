{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Open Mic At The Glen'"
    | first %}
{% include organisation_grid.md %}