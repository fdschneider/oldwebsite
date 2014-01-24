

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



##############

Create one HTML web page per paper. This page must include certain HTML metatags and the abstract of the paper.
For instance:

<html>
<head> 
 <title>Crystal structure of squid rhodopsin</title> 
 <meta name="citation_title" content="Crystal structure of squid rhodopsin" /> 
 <meta name="citation_publication_date" content="1999" /> 
 <meta name="citation_author" content="Murakami, Midori" /> 
 <meta name="citation_author" content="Kouyama, Tsutomu" /> 
</head>
<body>
 <h1>Crystal structure of squid rhodopsin</h1>
 Abstract: 
 Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. 
 Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum 
 quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus 
 auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula 
 eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum.
</body>
</html>

Official metatags extracted from the guidelines:


Meta tag name 	Meaning
citation_title 	The paper title
citation_publication_date 	The official publication date
citation_online_date 	The online publication date
citation_author (multiple allowed) 	An author name. Multiple occurrencees of this tag are allowed
(see example above).
citation_pdf_url 	The full paper with an absolute URL
citation_conference_title 	The conference name or the proceedings title (for conference
and workshop papers)
citation_journal_title 	The journal name (for journal papers)
citation_volume 	The volume (for journal papers)
citation_issue 	The issue number (for journal papers)
citation_issn 	The journal ISSN (for journal papers)
citation_isbn 	ISBN number
citation_firstpage 	The first page of the article
citation_lastpage 	The last page of the article
citation_dissertation_institution 	The university name (for master's and Ph.D. thesis)
citation_technical_report_institution 	The institution name (for technical reports)
citation_technical_report_number 	The technical report number (for technical reports)

Note that:

    citation_authors (mentioned in this Google's email) is deprecated (information given by Google Scholar Support).
    tags that aren't listed in the guidelines are not not officially supported, so their effect on indexing in Google Scholar should be considered undefined (information given by Google Scholar Support): citation_date, citation_conference, citation_doi, citation_abstract_html_url, citation_fulltext_html_url, citation_publisher, citation_language, citation_pmid, citation_keywords, citation_dissertation_name, citation_patent_number, citation_patent_country.




##### Adding altmetric	
	
http://api.altmetric.com/embeds.html


You can choose to display details of the attention an article has received to the right of the badge by including the data-badge-details attribute.

The details display works best with the medium-donut and large-donut badge styles.

Medium donut
Article has an altmetric score of 38

See more details
Tweeted by 30
Blogged by 1
On 1 Facebook pages
Picked up by 1 news outlets
14 readers on Mendeley
0 readers on CiteULike

<div data-badge-type='medium-donut' class='altmetric-embed' data-badge-details='right' data-doi='10.1016/S0140-6736(11)61619-x'></div>

