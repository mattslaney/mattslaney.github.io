---
layout: page
---

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr 1fr">
    <div>
        <h1>Pages</h1>
        <ul>
        {% assign pages = site.pages %}
        {% for page in pages %}
            {% if page.title %}
            <li>    
                <a href="{{ page.url }}">{{ page.title }}</a>
            </li>
            {% endif %}
        {% endfor %}
        </ul>
    </div>
    <div>
        <h1>Posts</h1>
        <ul>
        {% assign posts = site.posts %}
        {% for post in posts %}
            {% if post.title %}
            <li>    
                {{post.date | date: "%Y-%m-%d" }} &gt;&gt;
                <a href="{{ post.url }}">{{ post.title }}</a>
            </li>
            {% endif %}
        {% endfor %}
        </ul>
    </div>
    <div>
        <h1>Categories</h1>
        <ul>
        {% assign categories = site.categories %}
        {% for category in categories %}
            <li>    
                <a href="/categories/{{ category[0] }}">{{ category[0] }}</a>
            </li>
        {% endfor %}
        </ul>
    </div>
    <div>
        <h1>Tags</h1>
        <ul>
        {% assign tags = site.tags %}
        {% for tag in tags %}
            <li>    
                <a href="/tags/{{ tag[0] }}">{{ tag[0] }}</a>
            </li>
        {% endfor %}
        </ul>
    </div>
</div>
