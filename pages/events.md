---
layout: page
---
# Events

---
## The 2nd Annual SCTA Community Meeting

### The Digital Future of Scholasticism

#### Storing, linking, displaying and reusing scholastic data with the Scholastic Commentaries and Texts Archive ([http://scta.info](http://scta.info))

When: Friday, June 29, 2018

Where: Faculty of Theology, Nadelberg 10, Basel, Switzerland, Grosser Seminarraum
Organizers: Jeffrey C. Witt, Loyola University Maryland and Ueli Zahnd, University of Basel

![/assets/images/SCTA-Friday-Showcase-flyer-v2.jpg](/assets/images/SCTA-Friday-Showcase-flyer-v2.jpg)


<div>
{% for post in site.posts %}
{% if post.category == "event" %}
  <div>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
      <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
      {% if post.description %}
        <br/> <span class="post-desc">{{post.description}}</span>
      {% endif %}
      <br/>
      <br/>
  </div>
  {% endif %}
{% endfor %}
</div>
