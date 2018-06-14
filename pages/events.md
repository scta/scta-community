---
layout: page
---
# Events




<div>
{% for post in site.posts %}
{% if post.category == "event" %}
  <div>
      <span class="post-meta">Event Dates: {{ post.eventStart | date: "%b %-d, %Y" }}
      {% if post.eventEnd %}
      --
      {{ post.eventEnd | date: "%b %-d, %Y" }}
      {% endif %}
      </span>
      <br/>
      <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
      <br/>
      <span class="post-meta">Posted on {{ post.date | date: "%b %-d, %Y" }}</span>
      {% if post.description %}
        <br/> <span class="post-desc">{{post.description}}</span>
      {% endif %}
      <br/>
      <br/>
  </div>
  {% endif %}
{% endfor %}
</div>
