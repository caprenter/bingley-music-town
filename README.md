# Bingley Music Town Website

## About
This is a static site that displays at http://bingleymusictown.org.uk/

## Deployment
It is deployed via the main branch of this repo using Github Pages.

### Cron update
We rebuild the site once a day using the GitHub API and [gh-cli](https://cli.github.com/) tool, using a cron job on another server (David's). 

This means our 'Live music today' and 'Make Music Today' data is up to date.

Use the script under 

    /scripts/update_jekyll_sites.sh.example

to set up a cron job. The job is logged in a jekyll_update.log file locally.

## Local Development
To run this locally

Clone the repository

	cd bingley-music-town
	bundle exec jekyll serve

## Generating individual organisation pages
We generate markdown for each organisation page by using the pagemaster plugin/gem.

This creates pages from a .yml data file, in this case, organisations.yml, by running 

    bundle exec jekyll pagemaster {collection name}

In practice we use: 

    bundle exec jekyll pagemaster organisations

This command will generate markdown for views for each item in the collection under ./_{collection name}

To update generated markdown delete that directory as existing files are not updated when pagemaster runs

### Adding an organisation
* Add the data in `_data/organisations.yml`
* Add a logo to `/assets/images/logos`
* Add an image if you have one to `/assets/images/organisations` 
* Build the page with `bundle exec jekyll pagemaster organisations`

### Updating Information about an organisation
* Update the data in `_data/organisations.yml`
* Delete the corresponding entry under `/_organisations` (or the entire _organisations directory)
* rebuild that page(s)with `bundle exec jekyll pagemaster organisations`


## Generating individual venue pages
We generate markdown for each venue page by using the pagemaster plugin/gem.

This creates pages from a .yml data file, in this case, venues.yml, by running 

    bundle exec jekyll pagemaster {collection name}

In practice we use: 

    bundle exec jekyll pagemaster venues

This command will generate markdown for views for each item in the collection under ./_{collection name}

To update generated markdown delete that directory as existing files are not updated when pagemaster runs

### Adding an venue
* Add the data to our Google Spreadsheet - see below.
* Run the scripts/fetch_events_data.sh to fetch the data from the spreadsheet
* The data will now be in `_data/venues.yml`
* Build the page with `bundle exec jekyll pagemaster venues`

### Updating Information about a venue
* Update the data in the Google Spreadsheet
* Run the scripts/fetch_events_data.sh to fetch the data from the spreadsheet
* The data will now be in `_data/venues.yml`
* Delete the corresponding entry under `/_venues` (or the entire _venues directory)
* rebuild that page(s)with `bundle exec jekyll pagemaster venues`


## Logos in the pre-footer area
These are included in the `index.md` file from `_include/gallery.html` and should show all the logos that we have.

## Live music, previous events listings
These are generated from public google spreadsheets:
https://docs.google.com/spreadsheets/d/1-Eugy7Wfl0O2dSach2D2dOoE8JEW2tI3sqChuCvLUYg/edit

Fetch the data with the script:

    #Fetch the data from those sheets.
    cd scripts
    ./fetch_events_data.sh 
    
    #Fetch and commit changes
    ./fetch_events_data.sh update
    
    #Fetch and commit and push changes to origin main
    ./fetch_events_data.sh update push

We use the data to build a live listing page, a previous events page, and to populate the front page with live events today.


## Contributing
Please fork the repo,and make pull requests from your clone to this one.

### Branches
- `main` holds the most recently deployed code
- `(number)-(name)` branches are working branches where (number) is an issue number and (name) is made up, but has some relation to the issue

### Workflow
* Pick (or create an issue)
* Create a branch (from main if practical) - name the branch (issue number)-(suitable name) e.g. 23-fix-the-footer
* Work on the branch.
* Push to your own fork
* Make a pull request in this repo.