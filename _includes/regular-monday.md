{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'All Together Now'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
10.00-11.30am, Bingley Methodist Church

{% assign organisation = site.organisations 
    | where_exp:"organisation", "organisation.name == 'Bradford Airedale Youth Choir'"
    | first %}
[{{ organisation.name }}]({{ organisation.url }})<br>
An exciting group of contemporary choirs for young people aged 6-26 years, rehearsing in Bingley on Monday evenings. 

Pick up and Play Session<br>
approx 8pm, The Brown Cow, Bingley

[Voices of Yorkshire  <i class="fa fa-external-link" aria-hidden="true"></i>](https://www.voicesofyorkshire.com/){:target="_blank" rel="noopener noreferrer"}<br>
8-9pm, Bradford and Bingley Rugby Club