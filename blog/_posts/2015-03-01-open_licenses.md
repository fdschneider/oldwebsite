---
layout: posts
title: "Open Licenses for Science"
author: Florian D. Schneider
categories: blog
teaser: Data, computer code and manuscripts are the produce of scientific work. It is what we make. Nowadays, people claim that all of it has to be open access or open source. But what is that all about?
disqus: true
---


The legal background to consider when making things publicly available on the internet is ... complicated, to be modest. It differs in the type of content, in national law, and in the purpose or use of the publication.
Let's start with the type of content: Traditionally, at least in Europe and the U.S., there is a distinction between creative and non-creative content. The assignment of content to these categories might differ.
Usually, Creative content is understood to be originally created by the author, such as literary work (writing), pictures or music, but also math equations and computer code[^1], whereas non-creative content is the result of repetitive and somehow standardized work, such as measurements, systematic image capturing, recordings, but also technical solutions, such as blueprints or originals of any kind of machines.  

[^1]: Wikipedia on [Software copyright](https://en.wikipedia.org/wiki/Software_copyright)

## All rights reserved

The legal difference could not be more contrasting: *creative* content is *per se* protected by **copyright**[^2], which means the author always retains the ownership and the right to capitalize, publish, reproduce and modify the work. It is important to note that the law in the US and UK secures the rights of the owner (usually the publisher), while the European law focuses on the actual author of the work, who has to do nothing but proof his authorship. In both cases the act of *publishing* is crucial. Most national laws make sure copyright expires after a very, very long period.

[^2]: As declared in the [Berne Convention for the Protection of Literary and Artistic Works ](https://en.wikipedia.org/wiki/Berne_Convention)

On the other hand, *non-creative* work is unprotected by copyright. If the authors or makers decide to publish or give away their work *and* want to protect their commercial interests, they have to claim the ownership and the rights. To ensure that they will be the only ones to build upon the work they have to put it under a **patent**.

Computer code on the one hand it is considered to be literary work (at least in the United States and Europe), which means it is creative content, but on the other hand this does not include the structure and logic of the code, which is considered non-creative. The latter is very important in determining the function and features of the software and thus often would be protected by special software patents. That is why special **licenses** were developed that cover both function  and form of the software.  
Another special case are databases: Europe has a database right that allows to put the work of assembling data using standardized efforts to a database under property right[^3]. Nothing of that kind exists in the United States.

[^3]: ["database right" on wikipedia.org](https://en.wikipedia.org/wiki/Sui_generis_database_right)

To sum up, non-licensed work is, once published properly, by default under copyright, and therefore not free to use or distribute. Non-creative work like data unless stated otherwise can be re-used and developed by anybody who gets hands on it. The legal history of copyright and ownership rights is very particular for each country. The same is true for the definition of 'creative work'.  
This leads to serious conflicts between the commercial interests of publishers and companies and the public interest of data and knowledge availability. But who's side are we, the authors, on?

## Why specify licenses for scientific work?

There are many reasons why you might want to clarify the terms and conditions for the use of your work by putting it under a specific license. Some of the motivations are listed here:

1. **publish but protect:** you want your work to be read or your software to be run, but you want to retain all rights of monetizing it or build upon it.  *Patents* or classic *copyright* would apply here. Things under copyright can not be copied or modified.
2. **reduce limits for access:** this is the core idea of open access. The work is meant to be read or applied, the data are meant to be analyzed by anyone. Thus you want to enable access by anybody with internet access. You want to maximize the visibility.  
3. **facilitate re-use:** If you want to facilitate the re-use and modification of your text, code or data, you would want a *permissive* license, such as the [MIT License](http://opensource.org/licenses/MIT) or [Apache License](https://www.apache.org/licenses/LICENSE-2.0.html) (for software) or [Creative Commons attribution License](https://creativecommons.org/licenses/by/4.0/) (for text and data). That would allow others to use your work it in their own interest and even make their own product out of it. Still, attribution of authorship is important for you.
4. **free as in freedom:** Ideas must remain free to be adopted and modified by anyone. No one must be able to bind them by law and make them their own. This is the idea of free software. [Copyleft Licenses](https://en.wikipedia.org/wiki/Copyleft) such as [GNU General Public Licenses](https://www.gnu.org/licenses/) or [Creative Commons share-alike Licenses](https://creativecommons.org/licenses/by-sa/4.0/) ensure that all derivatives of your work will remain free.
5. **non-commercial, non-governmental interest:** You want to prevent particularly that somebody makes money with your idea. Your idea is meant to benefit people, not companies. To prevent the commercial use of your work, chose [GNU General Public Licenses](https://www.gnu.org/licenses/) or the [CC non-commercial](https://creativecommons.org/licenses/by-nc/4.0/) option.
6. **public interest:** If you work on a University, directly or indirectly, your employer is the taxpayer. Thus, anything you develop or write in a way belongs to the public. That includes companies, too. It must be openly accessible and reusable by anyone to increase the revenue of the public investment. A [Public Domain](https://creativecommons.org/publicdomain/) dedication is a waiver for all rights on the work.
7. **liability:** Since you give your software away for free, you want others to use your work on their own risk. But you do not want to be held liable for any errors or harm that arises from that use. 
9. **reproducibility:** The claims you make in a research paper depend on the whole process of data aquisition, data management, computational analysis, maybe some simulations. The credibility of your research depends on that entire chain. If you make the steps of your research public, reviewers and colleagues will be able to follow it thoroughly and understand it better. Or they might find a flaw that alters your conclusion. The propagation of wrong claims will become less likely.

Some of these arguments apply only to certain kinds of work. Many of them are compatible, like 2 and 6, some of them are mutually exclusive, like 1 and 4. Some are only slightly different, like 3 and 6. Some are mandatory in certain circumstances, e.g. 8, if a journal requires the publication of data and code.   Most of them have moral implications. So first of all, start thinking about your own motivation and your responsibilities for publishing data, code or creative content.

## Ask yourself!

What kind of content do you produce? Is your content creative or non-creative?  
Who did you make it for? For yourself, to boost your own research success or for others? Do you want others to modify and built upon your work or do you just publish to make it more accessible and visible for an audience or reviewers? Do you want to retain full rights to monetize and build upon it or do feel obliged to give it away for others to use it as they think is best?
Do you have to ensure open access to your work because the university or your fund requires it?  Do you want to publish it for documentation, and reproducibility of your research only, not encouraging the re-use, because it is specific and developed for a particular project? Do you have to publish your data or code because the journal requires it?  
Do you want to be acknowledged for your work at all or did you just make something that you believe is useful? Do you need the reputation to increase your impact and the perception of your work in general?  

Only after you know what you want you can choose your license.

## What license to choose?

Licenses for creative content are all covered by the [Creative Commons](https://creativecommons.org/) (CC) licensing scheme, which is modular and lets you chose between many options. Usually, the minimal requirement is author attribution ([CC attribution international 4.0, cc by int. 4.0](https://creativecommons.org/licenses/by/4.0/)), which is a permissive license that also allows commercial use and derivatives of your work. Those rights can be further restricted by allowing non-commercial use only ([CC attribution non-commercial international 4.0; cc by-nc int. 4.0](https://creativecommons.org/licenses/by-nc/4.0/)) or disallow modifications ([CC attribution no derivatives; cc by-nd int. 4.0](https://creativecommons.org/licenses/by-nd/4.0/)). The copyleft version ([CC attribution share-alike int. 4.0; cc by-sa int. 4.0](https://creativecommons.org/licenses/by-sa/4.0/)) permits use only if the product is shared under the same license. And last but not least there also is a public domain option (CC 0).
Very interesting: As a unique feature, the version 4.0 of the Creative Commons licenses does not only cover creative content, but also databases that are considered 'non-creative' work by law. It becomes therefore much easier to license scientific work.

Computer code has a long tradition of open licenses. As the least restrictive, [Public Domain waivers](http://choosealicense.com/licenses/unlicense/) only ensure that you can't be held liable for errors or misuse of the code and allow to copy, modify and monetize the software.
Free software licenses like GNU General Public Licenses are [Copyleft Licenses](https://en.wikipedia.org/wiki/Copyleft) and allow anybody to re-use and modify yout work as long as they acknowledge your authorship and publish it under the same kind of license.
This is a difference to permissive licenses which do not require any particular license for derivates of your work[^4]. Different degrees are available which for instance allow the use of your code for patents or limit it to non-commercial use only. The website [choosealicense.com](http://choosealicense.com/) lists all of those licenses with their features.
The Creative Commons licenses are incompatible with code for reasons mentioned above.

[^4]: See this excellent [blog post on astrobetter.com]( http://www.astrobetter.com/the-whys-and-hows-of-licensing-scientific-code/)


## How to apply a license?

To apply a license to your work just add a license disclaimer to the header of footer of your project as the license requires it. This is one or a couple of paragraphs stating which kind of license applies to your work and who is the author. The classic 'copyright' disclaimer just reads:

    Copyright (<year>) <Name of Author(s)>

Other licenses are referred to in a similar way. For instance a text under Creative Commons licenses can simply state

    This work is licensed under a Creative Commons Attribution
    4.0 International License.

But for websites, mashine-readable html code for disclaimers are preferred:

    <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
    <img alt="Creative Commons License" style="border-width:0"
     src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />
     <span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text"
     property="dct:title" rel="dct:type">{title of work}</span> by
     <span xmlns:cc="http://creativecommons.org/ns#"
      property="cc:attributionName">{name of author}</span>
      is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
      Creative Commons Attribution 4.0 International License</a>.

This will embed the Creative Commons icons as well as the disclaimer text on your website. Customized code can be created on the [Creative Commons website](https://creativecommons.org/choose/).

Software licenses like GPL or Apache License require to  a separate text file called `license.txt` in the root directory of your project and a disclaimer that refers to the original text online (valid standard formulations for the disclaimer are given in the full license text).
Licenses with short text may included in full in the header of your code file  (e.g. MIT License).  


## Publish

Today, the most scientific journals offer the publication under Creative Commons license as the default or as an option (but usually charge between <span class="tex2jax_ignore"> $1000 and  $3000 </span> for it). Pre-print servers like [bioRxive](http://www.biorxiv.org/) and [arXiv](http://arxiv.org/) are free and popular and publish under the open license of your choice. [figshare](http://figshare.com/) is a platform that hosts any kind of research output in form of figures, slides or full reports and lets you choose the license. Collaborative writing platforms, like [Authorea](https://www.authorea.com/)[^5], make the entire process of authoring scientific papers transparent and publish it under Creative Commons license.  
Data can be hosted on repositories of scientific data like [Dryad](http://www.datadryad.org/) or [figshare](http://figshare.com/).  
The open source software community lives on platforms like [GitHub](http://www.github.com) or [Bitbucket](https://bitbucket.org/). Those provide version control, project management and documentation tools and are made for collaborative code development. GitHub adds the License of your choice to your new projects.

[^5]: See ['Scientific writing: the online cooperative', by Jeffrey M. Perkel in Nature 514, 127–128(02 October 2014)]( http://www.nature.com/news/scientific-writing-the-online-cooperative-1.16039)


## Conclusion

As an author of research articles, computer code and data you should be aware of the different possibilities of licensing. Not specifying a license hinders the re-use and distribution of your work. Choose an open license that suits your aims!
