---
layout: default
---
    {% assign languages = site.data.languages | sort: "name" %}
    {% for l in languages %}
      <div class="trigger">
        {% assign path = "404/" | append: l.code %}
        {% assign file = path | append: ".md" %}
        {% capture md %}
          {% include {{ file }} %}
        {% endcapture %}
        {{ md | markdownify }}
      </div>
    {% endfor %}

<script>
  window.setTimeout(function () {
    var p = window.location.pathname;
    var regex = /^\/\w+\//i;
    if (p.search(/^\/en\//i) != 0) {
      p = p.replace(regex,"/en/");
    } else {
      p = "/";
    }
    window.location.assign(p);
  },{{site.delay }}* 1000);

</script>