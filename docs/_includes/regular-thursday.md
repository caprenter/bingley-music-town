{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Cullingworth Ukulele Group'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
{% include organisation_grid.md %}