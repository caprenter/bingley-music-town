{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bingley Ukulele Group'"
    | first %}
{% include organisation_grid.md %}
