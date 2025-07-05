{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
{% include organisation_grid.md %}

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bradford Airedale Youth Choir'"
    | first %}
{% include organisation_grid.md %} 

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Pick Up and Play Session'"
    | first %}
{% include organisation_grid.md %} 

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Voices of Yorkshire'"
    | first %}
{% include organisation_grid.md %} 