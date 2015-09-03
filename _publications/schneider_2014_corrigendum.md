---
permalink: /publications/schneider_2014_corrigendum/
categories: article, dissertation, talk, poster, other
layout: article
categories: article
tag: allometry
title: "Corrigendum to Schneider, Scheu & Brose (2012) DOI: 10.1111/j.1461-0248.2012.01750.x"
authors: Schneider, F.D., Scheu, S. &amp; Brose, U.
date: October 2014
journal: Ecology Letters
volume: 17
issue: 10
pages: 1339–1340
doi: 10.1111/ele.12333
URL: http://onlinelibrary.wiley.com/doi/10.1111/ele.12333/full
publisher:
city:
conference:
priority: B
---

<br>
original paper published in *Ecology Letters*, 15:436-443, Mai 2012
doi: 10.1111/j.1461-0248.2012.01750.x

####  Florian Dirk Schneider<sup>1</sup>*, Stefan Scheu<sup>2</sup> , and Ulrich Brose<sup>2</sup>

<sup>1</sup> Institut des Sciences de l’Evolution, CNRS, Université Montpellier 2 - CC065, Montpellier Cedex 05, 34095, France

<sup>2</sup> Georg August University Göttingen, J.F. Blumenbach Institute of Zoology and Anthropology, Berliner Str. 28, 37073 Göttingen, Germany

\* Correspondence E-mail: florian.schneider@univ-montp2.fr

[![DOI](https://zenodo.org/badge/4927/fdschneider/Schneider_et_al_2012_Corrigendum.png)](http://dx.doi.org/10.5281/zenodo.10878)

In the simulations for our paper "Body mass constraints on feeding rates determine the consequences of predator loss" in *Ecology Letters* we discovered a technical flaw which led to wrong predictions of interaction strengths. We apologize for this confusion.
Here, we provide a corrected set of parameters which produces similar results with regard to the major interpretations of the paper.
Additionally, we correct an erroneous count of springtails in one replicate of the experiment, resulting in higher experimental interaction strength of spiders on springtails.
However, after these corrections, all interpretations of the paper remain valid.

As a consequence of these mistakes, we commit ourselves to
transparent and reproducible computational research by providing
raw data and the full simulation code as an [open
access repository on GitHub] (https://github.com/fdschneider/Schneider_et_al_2012_Corrigendum).

### Parameter selection

All equations and allometric exponents given in the paper remain valid. We refined few parameters to reproduce interaction strengths matching the experiment similarly well as in the original publication: The parameters of the Ricker function (eq 2 in the paper, success rate) $R_\mathrm{opt} = 200$, $γ = 1$; the normalisation constants of attack rate $a_0 = 0.15$ and handling time $h_0 = 8.0$. All parameters are still in the range of previously documented values (references in original paper). Both, the original and corrected simulations were initialised with densities $N_1 = 912$, $N_2 = 350$, $N_3 = 4$, $N_4 = 2$ and body masses $M_1 = 0.0104$, $M_2 = 0.157$, $M_3 = 25.69$ and $M_4 = 125.3$ [mg], for springtails, predatory mites, spiders and centipedes, respectively (the body masses reported in the paper were rounded to one digit less). In the simulations we did not assume a delayed restocking of mites as it was the case in the experiment. Simulations ran over a time of 1152 hours.

### Results

The statical estimates of feeding rates reported in the paper are correct. The experimental and simulated $IS_{ij}$ were positively correlated at the population level ($r = 0.91$; $P < 0.001$; Fig. 4*b*), whereas the positive correlation at the per capita level was only marginally significant ($r = 0.49$; $P = 0.093$).

![Fig 4 (b) All population $IS_{ij}$ of simulation (corrected) *vs.* experiment; dark green: effects of centipedes; green: effects of spider; light green: effects of mites.](https://raw.githubusercontent.com/fdschneider/Schneider_et_al_2012_Corrigendum/release/manuscript/schneider_fig4b.png)

**Fig 4 (b)** All population ISij of simulation (corrected) *vs.* experiment; dark green: effects of centipedes; green: effects of spider; light green: effects of mites.

### Acknowledgements

We are grateful to Tomas Jonsson who brought the mistake to our attention and to Kevin Cazelles for a thorough review of the code.


## Licenses

### Code

The MIT License (MIT)

Copyright (C) 2014  Schneider, Scheu & Brose

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

###  Data & Content

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />The data and text in this repository are part of the <span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Corrigendum to Schneider, Scheu & Brose (2012)</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Florian D. Schneider, Stefan Scheu & Ulrich Brose</span> and are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
