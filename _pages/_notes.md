

Below solution works on Github (doesn't require a plugin):

	{% assign sorted_pages = site.pages | sort:"name" %}
	{% for node in sorted_pages %}
	  <li><a href="{{node.url}}">{{node.title}}</a></li>
	{% endfor %}

Above snippet sorts pages by file name (name attribute on Page object is derived from file name). I renamed files to match my desired order: 00-index.md, 01-about.md – and presto! Pages are ordered.

One gotcha is that those number prefixes end up in the URLs, which looks awkward for most pages and is a real problem in with 00-index.html. Permalilnks to the rescue:

	---
	layout: default
	title: News
	permalink: "index.html"
	---

P.S. I wanted to be clever and add custom attributes just for sorting. Unfortunately custom attributes are not accessible as methods on Page class and thus can't be used for sorting:

{% assign sorted_pages = site.pages | sort:"weight" %} #bummer

