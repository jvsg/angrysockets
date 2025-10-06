---
layout: default
title: Notes
description: Notes
---

<div class="page-container">
    <main class="maincontainer">
        <section class="maintext">
            <h2>Notes</h2>
            <p>A collection of quick thoughts, ideas, and observations.</p>
            
            <div class="article-list">
                {% for note in site.notes %}
                <article class="articlepreview">
                    <h3><a href="{{ note.url | relative_url }}">{{ note.title }}</a></h3>
                    <div class="article-meta">
                        <span class="timestamp">{{ note.date | date: "%b %d, %Y" }}</span>
                        {% if note.tags %}
                        <span class="tags">
                            {% for tag in note.tags %}
                            #{{ tag }}
                            {% endfor %}
                        </span>
                        {% endif %}
                    </div>
                    <p>{{ note.excerpt | strip_html | truncatewords: 30 }}</p>
                </article>
                {% endfor %}
            </div>
        </section>
    </main>
</div> 