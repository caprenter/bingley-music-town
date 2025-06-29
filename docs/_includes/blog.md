{% for post in site.posts %}
  {% assign indexmod3 = forloop.index | modulo: 3 %}
    {% if indexmod3 == 1 %}<div class="row">{% endif %}
            <div class="col-12 col-md-6 col-lg-4 mb-3">
            <div class="blog-item h-100">
              <div class="blog-teaser-img">
                <a href="{{ post.url }}"><img src="assets/images/{{ post.cover | relative_url }}" class="img-responsive" alt="{{ post.image-title }}"/></a>
              </div>
              <!--<h2 class="blog"><a href="{{ post.url }}">{{ post.title }}</a></h2>
              <p>{{ post.date | date_to_string }}</p>-->
              <div class="p-3">
                <h3 class="blog-title"><a href="{{ post.url }}">{{ post.title }}</a></h3>
                <span class="post-date">{{ post.date | date_to_string }}</span>
                {{ post.excerpt }}
              </div>
            </div>
            </div>
    {% if indexmod3 == 0 %}</div>{% endif %}
{% endfor %}