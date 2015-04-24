---
layout: misc
---
<article class="currently">
##CURRENTLY
-----
###READING {% for book in site.data.reading %}
<p class="item">{{ book.title }} by {{ book.author }}</p>
{% endfor %}
###PLAYING {% for game in site.data.games %}
<p class="item">[{{ game.title }}](http://www.1010ga.me)</p>
<p class="currently">{{ game.comment }}</p>{% endfor %}
###LEARNING {% for learning in site.data.learning %}
- {{ learning.thing }}
<p class="currently">{{ learning.comment }}</p>{% endfor %}
</article>
