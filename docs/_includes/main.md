<article class="post"> <!-- centres the content in the page -->
<header class="post-header">
<!--<h2 class="post-title">Bingley - A Music Town</h2>-->
</header>
<section class="main-page">
<div markdown="1">

{% include live-today.md %}

<p></p>
{% include make-today.md %}

## Can you Help?
Sometimes we need a little help from our friends so we've set up a [community notice board]({% link help.md %}) of requests we've received for help.

{% assign helps = site.data.help | sort: "order" %}
<div class="row row-cols-1 row-cols-md-3 d-flex align-items-stretch help">
{% for help in helps limit:3%}
{% include helps.md %}
{% endfor %}
</div>

See our **[Help Wanted page]({% link help.md %})** for more community music notices. 

## Bingley - A Music Town
Bingley Music Town brings together the people that care about music in our area, to make sure there are great musical opportunities for everyone now, and into the future.

There's already so much going on, and there's also loads of ideas about what else could happen in our town and district.

We're working on a plan to make things happen, you're welcome to [join us]({{% site_url %}}/join#become-a-member).

Get up to speed with what we're doing...

### Background Documents
* [Bingley - A Music Town<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/1cIwYgCtF7vX98hy2NKenFRFFM3cwq3fK3-6qjdclAss/edit){:target="_blank" rel="noopener noreferrer"}
* [What we've got already<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/1cIwYgCtF7vX98hy2NKenFRFFM3cwq3fK3-6qjdclAss/edit#heading=h.5vdluu5s24cx){:target="_blank" rel="noopener noreferrer"}
* [What's missing (that a Music Town might have)<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/1cIwYgCtF7vX98hy2NKenFRFFM3cwq3fK3-6qjdclAss/edit#heading=h.azivrbtwiz2u){:target="_blank" rel="noopener noreferrer"}.

### News
* [Ocotber/November 2023 Newsletter](https://mailchi.mp/9b578095b051/bingley-music-town-news-oct-nov-2023){:target="_blank" rel="noopener noreferrer"}
* [September 2023 Newsletter](https://mailchi.mp/5314b38aae49/bingley-music-town-news-september-2023){:target="_blank" rel="noopener noreferrer"}
* [July 2023 Newsletter](https://mailchi.mp/2c3b0899ebf8/bingley-music-town-news-july){:target="_blank" rel="noopener noreferrer"}
* [June 2023 Newsletter](https://mailchi.mp/319ca221e599/bingley-music-town-news-june-2023){:target="_blank" rel="noopener noreferrer"}
* [May 2023 Newsletter](https://mailchi.mp/f44a81680a13/bingley-music-town-news-may-2023){:target="_blank" rel="noopener noreferrer"}
* [April 2023 Newsletter](https://mailchi.mp/355bac5ba170/bingley-music-town-news-april-2023){:target="_blank" rel="noopener noreferrer"}
* [March 2023 Newsletter](https://mailchi.mp/2a270ea0026f/bingley-music-town-february-2023-news-362323){:target="_blank" rel="noopener noreferrer"}
* [February 2023 Newsletter](https://us21.campaign-archive.com/?u=7fbce00836d596f9a960cfed6&id=d92c4bda77){:target="_blank" rel="noopener noreferrer"}
* [January 2023 Newsletter](https://us21.campaign-archive.com/?u=7fbce00836d596f9a960cfed6&id=928a214397){:target="_blank" rel="noopener noreferrer"}
* [December 2022 Newlsetter](https://us21.campaign-archive.com/?u=7fbce00836d596f9a960cfed6&id=b286710b73){:target="_blank" rel="noopener noreferrer"}

{% include get-involved.md %}

Help spread the word by talking about us on social media? Use the hashtag:

#### #bingleymusictown

</div>
</section>
</article>