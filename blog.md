---
layout: page
title: Blog
permalink: /blog/
---

{% if paginator %}
  {% assign posts = paginator.posts %}
{% else %}
  {% assign posts = site.posts %}
{% endif %}

{% for post in posts %}
  <article>
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p><small>{{ post.date | date: "%Y-%m-%d" }}</small></p>
    {{ post.excerpt }}
    <p><a href="{{ post.url | relative_url }}">Read more →</a></p>
  </article>
  <hr>
{% endfor %}

{% if paginator and paginator.total_pages > 1 %}
<nav>
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}">← Newer</a>
  {% endif %}
  <span>Page {{ paginator.page }} of {{ paginator.total_pages }}</span>
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}">Older →</a>
  {% endif %}
</nav>
{% endif %}
