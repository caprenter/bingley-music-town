<div class="col mb-4">
  <div class="card h-100">
      <a href="{{ post.url }}"><img class="card-img-top p-0" src="assets/images/{{ post.cover | relative_url }}" alt="{{ post.image-title }}"/></a>
    <!--<h2 class="blog"><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <p>{{ post.date | date_to_string }}</p>-->
    <div class="card-body">
      <h4 class="blog-title"><a href="{{ post.url }}">{{ post.title }}</a></h4>
      <p class="card-text m-0"><span class="post-date">{{ post.date | date_to_string }}</span></p>
      <p class="card-text m-0">{{ post.excerpt | markdownify | strip_html | markdownify }}</p>
    </div>
  </div>
</div>