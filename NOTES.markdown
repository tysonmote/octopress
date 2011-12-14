Listing all posts:

    {% for post in site.posts %}
      <li class="post">
        <a href="{{ root_url }}{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endfor %}
