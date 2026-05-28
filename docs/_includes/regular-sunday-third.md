{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Vinyl Revival'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name contains 'onk! Street band'"
    | first %}
{% include organisation_grid.md %}