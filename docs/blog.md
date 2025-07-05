---
#layout: default
title: Blog
sub-title: Irregular posts about what's happening
description: "Been up to much lately?"
layout: page_v2
cover: exhibition2024/20231108-IMG_6465-Edit-7.jpg #No leading slash
# image-credit: "Photo: Marcus Rattray (Bingley Camera Club)"
navigation: true
---
<div class="main">
  <div class="blog">     
  <div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch blog">
  {% for post in site.posts %}   
    {% include blog.md %}
  {% endfor %}
  </div>
  </div>
</div>