---
title: "contents.txt"
output: true
# this is used to "generate" /data/beginner.yml 
# by cut and paste, and sorting data manually
#
# the if condition don't work if permalink: pretty is set in _config.yml
---
<pre>{% for p in site.pages %}{% if {{p.dir}} == {{page.dir}} %}
- title: {{p.title}}
  url:   {{p.url}}
  dir:   {{p.dir}}
{% endif %}{% endfor %}</pre>
