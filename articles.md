---
layout: default
title: Articles
description: Articles
---

<div class="page-container">
    <main class="maincontainer">
        <section class="maintext">
            <h2>Articles</h2>
            <p>A collection of my thoughts, research, and musings on various topics.</p>
            
            <div class="article-list">
                {% for article in site.articles %}
                <article class="articlepreview">
                    <h3><a href="{{ article.url | relative_url }}">{{ article.title }}</a></h3>
                    <div class="article-meta">
                        <span class="timestamp">{{ article.date | date: "%b %d, %Y" }}</span>
                        {% if article.tags %}
                        <span class="tags">
                            {% for tag in article.tags %}
                            #{{ tag }}
                            {% endfor %}
                        </span>
                        {% endif %}
                    </div>
                    <p>{{ article.excerpt | strip_html | truncatewords: 30 }}</p>
                </article>
                {% endfor %}
            </div>
        </section>

    </main>
</div> 