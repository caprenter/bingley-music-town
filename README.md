# Bingley Music Town Website

## About
This is a static site that displays at http://bingleymusictown.org.uk/

## Deployment
It is deployed via the docs directory of the main branch of this repo using Github Pages.

### Cron update
We rebuild the site once a day using the GitHub API and [gh-cli](https://cli.github.com/) tool, using a cron job on another server (David's). 

This means our 'Live music today' and 'Make Music Today' data is up to date.

Use the script under 

    /scripts/update_jekyll_sites.sh.example

to set up a cron job. The job is logged in a jekyll_update.log file locally.

This requires a GitHub authentication token which expires every now and again. If you need to replace that token you do it on the server that is running the cron job in the above file.

## Local Development

If you set up your local development environment with Docker, then you also have access to a suite of Behat tests for testing both the live and your local development site.

Alternatively you can just work on the site as you would with a general Jekyll project

Clone the repository

	cd bingley-music-town

### With Docker

If you want the site to regenerate fully on each change:

    docker-compose up
    # NB running it without the -d flag allows to watch jekyll rebuild and see any errors as you work
    # The site will be up on 0.0.0.0:4000

Partial Rebuilds - useful for small changes 

    docker-compose -f docker-compose-incremental.yml up

Running Commands

Running pagebuilder and other commands. Wherever you see:

    bundle exec jekyll ....
    ## replace with:
    docker exec -it bingleymusictown-jekyll-1 /bin/bash -c 'bundle exec jekyll ...'


#### Bring down the testing stack 

      docker-compose down

### Without Docker
	
    cd docs/
    # First run only
    bundle install 
    # Bring the site up
    bundle exec jekyll serve
    # The site should be up on 127.0.0.0:4000


# General Site Building

## Generating individual organisation pages
We generate markdown for each organisation page by using the pagemaster plugin/gem.

This creates pages from a .yml data file, in this case, organisations.yml, by running 

    bundle exec jekyll pagemaster {collection name}

In practice we use: 

    bundle exec jekyll pagemaster organisations
    ## OR with docker:
    docker exec -it jekyll /bin/bash -c 'bundle exec jekyll pagemaster organisations'

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

## What if my organisation is also a venue

Create an organisation in organisations.yml - you don't need to complete all fields

we use the `jekyll-redirect-from` gem to redirect the org page to a venue page. 
See Cottingley Community Centre as an example.

## Generating individual venue pages
We generate markdown for each venue page by using the pagemaster plugin/gem.

This creates pages from a .yml data file, in this case, venues.yml, by running 

    bundle exec jekyll pagemaster {collection name}

In practice we use: 

    bundle exec jekyll pagemaster venues
    ## OR with docker:
    docker exec -it jekyll /bin/bash -c 'bundle exec jekyll pagemaster venues'
    ## Our container is not normall called 'jekyll'!
    docker exec -it bingleymusictown-jekyll-1 /bin/bash -c 'bundle exec jekyll pagemaster venues'

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

## Internal links between organisations and venues

Put the path and the link text in the venues spreadsheet, and/or in the organisations.yml file.

Examples of both exist. 

## Generating help pages and cards
We generate markdown for each help page by using the pagemaster plugin/gem.

This creates pages from a .yml data file, in this case, help.yml, by running 

    bundle exec jekyll pagemaster {collection name}

In practice we use: 

    bundle exec jekyll pagemaster help

This command will generate markdown for views for each item in the collection under ./_{collection name}

To update generated markdown delete that directory as existing files are not updated when pagemaster runs

### Adding a help
* Add the data in `_data/help.yml`
* Use the order field to help sort the items - lower numbers are first in lists
* Add images to `/assets/images/helps`
* Also create a resized image of max width 310px and with .resized.jpg as part of the file name
* Build the page with `bundle exec jekyll pagemaster help`

```
# Or
docker exec -it bingleymusictown-jekyll-1 /bin/bash -c 'bundle exec jekyll pagemaster help'
```

### Updating Information about a help
You can edit _help/<pagename> directly.
If you want to regenerate that page from the help.yml data, delete it first then run the pagemaster script.

### Helps on the Front Page
These are limited to the first 3 in the list as order by the order field.

## Images

### Banner images

Main banner images are currently 1280x720px - 16:9 ration
(they used to be 1280x800px and some were just a bit random)

Resize with
```
find . -name '*.jpg' -size +100k  -print0 | while read -d $'\0' file ; do smartresize "$file" 1280 . ; done
```

### Gallery

Gallery Images should be no wider than 1024px

Thumbnails should be 400px square - see below.

Place images in '/assets/images/gallery'

File names of the images are used to generate captions etc.

Underscores in filenames will be replaced by spaces in captions, titles and alt text. 

Run this script in that directory to generate Thumbnails
    
    find . \( -name '*.jpg' -or -name '*.JPG' \) -print0 |  while read -d $'\0' file ; do convert -define jpeg:size=400x400  "$file" -thumbnail 300x300^ -gravity center -extent 300x300  ../thumbnails/"$file" ; done

#### How the gallery works
The gallery is made with [Lightbox for Bootstrap](https://ashleydw.github.io/lightbox/)

There is jekyll config in `config.yml`.

These scripts need to be on the page:

    ## In the header
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    ## Before the </body> tag
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- Lightbox -->
    <script src="https://cdn.jsdelivr.net/npm/bs5-lightbox@1.8.3/dist/index.bundle.min.js"></script>

### Help Images

These images should be 1280x720 - a 16:9 ratio

### Instrument Images

These images should be a 16:9 ratio and don't really need to be bigger than 350px. Many are 600px wide.

### PDF images

A4 portrait are 400px wide

### Logos in the pre-footer area
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

### Events code

This is a bit of a mess. Recently to add a check that and Artists value exists in the data I had to change:
* docs/_data/events.csv
* docs/_includes/live-today.md
* docs/_includes/previous-events.md
* docs/_includes/upcoming-events.md
* docs/_layouts/venue_page.html
* docs/live/next-month.md
* docs/live/this-month.md

## Regular activities

The Regular activities page is generated from a bunch of individual files that give information about an activity on a certain day of the week.

We have individual files for the first week of the month, third thursday and so on.

These are pulled together with scripts.

To add or remove a listing you need to check:
* includes/regular-<day>-<optionally-occurance>.md
* make-today.md
* regular-activities.md
* _data/regular_days_mapping

## Make Music Listing (front page)

These are generated from lots of small includes files that contain data about activities that happen on each individual day of the week.

### Christmas / Be Careful Dates etc

`make-today.md` contains a list of dates that can be set to flag a warning on days when regular activities might not happen e.g. Christmas

## Instruments
Data is held in a google spreadsheet. Google forms collect the basic info.
We need to download the instruments sheet as a csv to update the website.
We could make this a public sheet and automate it.
Images are saved and named and then the filename is added to the spreadsheet

# Testing

If you have set up your development environment with Docker then you can run the tests against your local site or the live site using Behat.

We have created a network for the 3 containers (behat, selenium, jekyll), and assigned IP Addresses to each so that the local testing can find the Jekyll site.

The `behat.yml` file contains configuration for the live URL, the local network,and other stuff.

##  Run the tests 

By default the tests will run against a site live on the web as configured in `behat.yml`.

To run against a local development site use the `profile` flag:
 
    --profile=local 

### Optional: Set up a bash alias

Add line to your terminal profile file on your local machine: 
  
     alias behat='docker exec -it behat behat --colors "$@"'

Either reload terminal session or refresh session to make the alias permanent across sessions

### Examples: 
**NB** the examples assume you have set up an alias (see above)
    
    # Get version information
    behat --version 

    # Run all available tests against a LIVE site
    behat 

    # Run all available tests against a local development site
    behat --profile=local 
    docker exec -it  bingleymusictown-behat-1 behat --profile=local


#### Partial tests

    # Run all tests tagged 'subsection'
    behat --tags @subsection  

    # Run all tests tagged 'javascript' with a javascript enabled browser against a LIVE site.
    behat --tags @javascript  

    # Run all tests tagged 'javascript' with a javascript enabled browser against a LOCAL site.
    behat --profile=local --tags @javascript

    # Run all tests tagged 'javascript' with a javascript enabled browser against a LOCAL site.
    behat --profile=local features/<name of feature>.feature


## Watch the tests 

You can launch a vnc browser instance in Chrome/Chromium to watch Selenium tests at

     http://localhost:7900 - the password is "secret"

## Writing and contributing tests

Everything is in the `testing` directory. See the Behat docs for more help.


# Contributing
Please fork the repo,and make pull requests from your clone to this one.

## Branches
- `main` holds the most recently deployed code
- `(number)-(name)` branches are working branches where (number) is an issue number and (name) is made up, but has some relation to the issue

## Workflow
* Pick (or create an issue)
* Create a branch (from main if practical) - name the branch (issue number)-(suitable name) e.g. 23-fix-the-footer
* Work on the branch.
* Push to your own fork
* Make a pull request in this repo.