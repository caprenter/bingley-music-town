# bingley-music-town

## About

This is a static site that displays at http://bingleymusictown.org.uk/

## Deployment
It is deployed via the main branch of this repo using Github Pages.

We rebuild the site once a day using the GitHub API and [gh-cli](https://cli.github.com/) tool, using a cron job on another server (David's). 

Use the script under 

    /scripts/update_jekyll_sites.sh.example

to set up a cron jon. The job is logged in a jekyll_update.log file locally.


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


