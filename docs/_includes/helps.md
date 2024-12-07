  <div class="col mb-4">
    <div class="card h-100">
    <h4 class="card-header text-white bg-dark">{{ help.title }}</h4>
    <a href="/help/{{ help.slug }}"><img class="card-img-top" src="/assets/images/helps/{{ help.image | replace: '.jpg', '.resized.jpg' }}" alt="{{ help.title }}" /></a>
    <div class="card-body">
      <!--<h6 class="card-subtitle mb-2 text-muted">{{ help.titleType }}</h6>-->
      <p class="card-text">{{ help.short-description }}</p>
      <!--<a href="{{ help.ExternalLink }}" class="card-link">{{ help.title }} on the web</a>-->
    </div>
    <div class="card-footer text-muted">
    <a href="/{{ help.slug }}"><i class="bi bi-info-circle-fill p-3"></i>More about {{ help.title }}</a>
    </div>
    </div>
  </div>