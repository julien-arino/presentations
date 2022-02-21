---
marp: true
title: Mobility, case importations and spatio-temporal spread of infection in the context of COVID-19
description: Presentation on the role of importation versus community-based transmission of a novel variant
theme: default
paginate: false
size: 4K
---

# The spatio-temporal spread of infectious pathogens: lessons learned from COVID-19

16 September 2021

Julien Arino ([Julien.Arino@umanitoba.ca](mailto:Julien.Arino@umanitoba.ca))

Department of Mathematics & Data Science Nexus
University of Manitoba

Canadian Centre for Disease Modelling
Canadian COVID-19 Mathematical Modelling Task Force
NSERC-PHAC Emerging Infectious Disease Modelling Consortium

---

# Thank you

**for receiving me in your homes/offices** and to .. 

- many people over the years, including most recently
	- Pierre-Yves Boëlle (IPLESP, Sorbonne Université, Paris)
	- Evan Milliken (University of Louisville)
	- Stéphanie Portet (U of M)
- based also on earlier work with Nicolas Bajeux, S. Portet and James Watmough
- PHAC external modelling group members for discussions

<div style = "position: relative; bottom: -15%; font-size:24px;">
Funding NSERC and CIHR

Funding and logistical support: Public Health Agency of Canada (PHAC)
</div>

---

# <!-- fit --> Pathogens have been mobile for a while

<Div style = "text-align: justify">
It first began, it is said, in the parts of Ethiopia above Egypt, and thence descended into Egypt and Libya and into most of the [Persian] King's country. Suddenly falling upon Athens, it first attacked the population in Piraeus [..] and afterwards appeared in the upper city, when the deaths became much more frequent.</div>

<Div style = "text-align: right; position: relative; bottom: -15%; ">
Thucydides (c. 460 BCE - c. 395 BCE)

History of the Peloponnesian War</div>

![bg 90% right:30%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/various/Thucydides-bust-noBG.png)

--- 

# Outline

- Movement and the spatialisation of an epidemic
- The initial spread of COVID-19
- Role of transport restrictions
- Role of quarantine

---

# <!-- fit --> Movement and the spatialisation of an epidemic

---

# Following 2 slides

- $S$ (blue), $I$ (red), $R$ (green) model
- Individuals spatially located
- Interaction radius to model local movement
- When contacts occur, each contact is infecting with indicated $\mathbb{P}$.. so binomial
- Infecting contact to an $R$ is "lost"
	- First slide: fixed infectious period of 5 days
	- Second slide: infectious period in $\mathcal{U}(3,10)$ days

---

<video controls autoplay loop width="100%">
<source src="https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/spatial_spread_1location_fixed_infectious_period.mp4" type="video/mp4">
</video>

---

<video controls autoplay loop width="100%">
<source src="https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/spatial_spread_1location_variable_infectious_period.mp4" type="video/mp4">
</video>

---

# This is good for diseases of (not winged) animals

- Range is typically not huge
- Disease moving between species see patchiness of the support bridged by variety of ranges in the different species
---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/rabies_1990-noBG.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/rabies_2000-noBG.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/rabies_2010-noBG.png)

---

# <!-- fit --> Model of Lopez, Coutinho, Buratini & Massad (1999) 

$$
\begin{aligned} 
\frac{\partial}{\partial t}S(x,t) &=  -\lambda(x,t)S(x,t) - \mu S(x,t) + \mu N(x) + \gamma_1 I(x,t) \\
\frac{\partial}{\partial t}I(x,t) &= \lambda(x,t)S(x,t)-(\mu+\gamma_1+\gamma_2) I(x,t) \\
\frac{\partial}{\partial t}R(x,t) &= \gamma_2I(x,t)-\mu R(x,t)
\end{aligned}
$$
with force of infection
$$
\lambda(x,t) = \frac 1N\int_0^L dx'\beta(x,x')I(x',t)
$$
and total population along the road
$$
N = \int_0^L dx'N(x')
$$

---

# Why human diseases differ

- Pathogens of humans follow .. humans
- Not all humans are mobile, but some humans have for a very long time been more mobile (because of trade)
- Complex spatial patterns have been observed for a long time


---

# First known epidemics (from Wikipedia)

<style scoped>
table {
    height: 100%;
    width: 100%;
    font-size: 20px;
}
</style>

| Event | Date | Location | Disease | Death toll (estimate) |
|---|---|---|---|---|
| Plague of Megiddo | 1350 BCE | Megiddo, land of Canaan | Unknown | Unknown | 
| Plague of Athens | 429–426 BCE | Greece, Libya, Egypt, Ethiopia | Possibly typhus, typhoid fever or VHF |  75,000–100,000 |
| 412 BCE epidemic |412 BCE | Greece, Roman Republic | Possibly influenza | Unknown |
| Antonine Plague | 165–180 CE (possibly up to 190 CE) | Roman Empire | Possibly smallpox | 5–10 million |
| Jian'an Plague | 217 CE | Han dynasty | Possibly typhoid fever or VHF | Unknown |
| Plague of Cyprian | 250–266 CE | Europe | Possibly smallpox | Unknown |
| Plague of Justinian (1st plague pandemic) | 541–549 CE | Europe and West Asia | Bubonic plague | 15–100 million (25–60% of population of Europe) | 
| Roman Plague of 590 (1st plague pandemic) | 590 CE | Rome, Byzantine Empire | Bubonic plague | Unknown |
| Plague of Sheroe (1st plague pandemic) | 627–628 CE | Bilad al-Sham | Bubonic plague | 25,000+ |
| Plague of Amwas (1st plague pandemic) | 638–639 CE | Byzantine Empire, West Asia, Africa | Bubonic plague | 25,000+ |
| Plague of 664 (1st plague pandemic)  | 664–689 CE | British Isles | Bubonic plague | Unknown |
| Plague of 698–701 (1st plague pandemic) | 698–701 CE | Byzantine Empire, West Asia, Syria, Mesopotamia | Bubonic plague |Unknown |
| 735–737 Japanese smallpox epidemic | 735–737 CE | Japan | Smallpox | 2 million (approx. 1/3 of Japanese population) | 
| Plague of 746–747 (1st plague pandemic) | 746–747 CE | Byzantine Empire, West Asia, Africa | Bubonic plague |Unknown |

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/trade_routes_1212AD.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/epidemio/population-moyen-age-grande-peste-carte.png)

---

# Human epidemics have evolved..

- because human mobility has changed a lot:
	- Range has vastly increased
	- Time to range has diminished
	- Duration of travel has decreased (on average)
	- Fraction of population able to undertake travel has increased

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/MapOfFranceWithHenriIV-noBG.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/LiverpoolToWinnipeg.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/duration_Paris_Bordeaux.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/world_graph-degree.png)

---

![bg contain](https://www.cmaj.ca/content/cmaj/182/6/579/F2.large.jpg)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/transportation/passengers_transported_worldwide.png)

---

# The human world is fragmented

- Political divisions: nation groups (e.g., EU), nations, provinces/states, regions, counties, cities..
- With increasing administration, movement between jurisdictions might become more complicated
- Data is also integrated at the jurisdicional level
- Long range mobility is a bottom$\to$top$\to$top$\to$bottom process ("moving between cones")
- Mobility in bottom layer is on a more continuous support than higher levels
- Situation is highly variable even at the country level

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/FRA_and_MB_to_scale.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/cities_roads_CAN-MB_detail.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/metapopulations/movie_good_2p.gif)

---

<!--Left hand side -->
# Cones of resolution

= various levels or scales of the functional or spatial aspects of a diffusion process. Scale (cone of resolution) takes on two dimensions: *functional* (decisions made by different groups of individuals) and *spatial* (manifestations of these decisions as observed in a spatial context)

<!--Right hand side -->
![bg right 100%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/cones_of_resolution_Angulo1979.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/spatial/cones_of_resolution_functional_Angulo1979.png)


---

# Modelling heterogeneity using metapopulations

<div style = "position: relative; bottom: -50%; font-size:24px;">J. Arino. Spatio-temporal spread of infectious pathogens of humans. Infectious Disease Modelling, 2017</div>

---

# <!--- fit ---> Movement for compartment $c$ in patch 1

![bg 100% left:30%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/metapopulations/figure_metapop_evol_1patch.png)

$$
N_{c1}' = \textcolor{red}{\sum_{\mathclap{p\in\mathcal{L}\setminus\{1\}}}m_{c1p}N_{cp}}
\textcolor{blue}{-N_{c1}\sum_{\mathclap{p\in\mathcal{L}\setminus\{1\}}}m_{cp1}}
$$

or

$$
N_{c1}' = \sum_{p\in\mathcal{L}} m_{c1p}N_{cp}
\textrm{ assuming }
m_{c11}=-\sum_{\mathclap{p\in\mathcal{L}\setminus\{1\}}} m_{cp1}
$$

---

In each patch, put a system describing the evolution of the number of individuals in each compartment present

$\gdef\I{\mathcal{I}}$ $\gdef\U{\mathcal{U}}$ Assume  **uninfected** ($s$) and **infected** ($i$) compartments $\U$ and $\I$. For all $j\in\U$, $k\in\I$ and $\ell\in\mathcal{L}$

$$
\begin{align*}
s_{j\ell}' &= f_{j\ell}(S_\ell,I_\ell)
\textcolor{red}{\;+\;\sum_{\mathclap{q\in\mathcal{L}}} m_{j\ell q}s_{jq}} \\
i_{k \ell}' &= g_{k\ell}(S_\ell,I_\ell)
\textcolor{red}{\;+\;\sum_{\mathclap{q\in\mathcal{L}}} m_{k\ell q}i_{kq}}
\end{align*}
$$

$f$ and $g$ describe interactions between compartments in a given location. Might involve more than $S_\ell,I_\ell$, but always local ($\ell$)

<span style = "color: red">Sums</span> describe movement of (individuals from) compartments between locations

---

# Describing movement - The movement matrix

Movement from location $q\in\mathcal{L}$ to location $p\in\mathcal{L}$ occurs at rate $m_{Xpq}$ for individuals in compartment $X$

$\gdef\M{\mathcal{M}}$ **Movement matrix** for compartment $X$:
$$
\M^X = 
\begin{pmatrix}
-\sum\limits_{\mathclap{q\in\mathcal{L},q\neq p}} m_{Xq1} & m_{X12} & \cdots & m_{X1|\mathcal{L}|} \\
m_{X21} & -\sum\limits_{\mathclap{q\in\mathcal{L},q\neq p}} m_{Xq2} & & m_{X2|\mathcal{L}|} \\
& & & \\
m_{X|\mathcal{L}|1} & m_{X|\mathcal{L}|2} & & -\sum\limits_{\mathclap{q\in\mathcal{L},q\neq p}} m_{Xq|\mathcal{L}|}
\end{pmatrix}
$$ 

<div style = "position: relative; bottom: -10%; font-size:24px;">J. Arino, N. Bajeux & S. Kirkland. Number of source patches required for population persistence in a source-sink metapopulation with explicit movement. Bulletin of Mathematical Biology, 2019</div>

---

# <!-- fit -->The initial spread of COVID-19

---

# First detections outside China

<style scoped>
table {
    height: 100%;
    width: 100%;
    font-size: 20px;
}
</style>

| Date | Location | Note |
|------|----------|------|
| 13 Jan. | Thailand | Arrived 8 Jan. |
| 16 Jan. | Japan | Arrived 6 Jan. |
| 20 Jan. | Republic of Korea | Airport detected on 19 Jan. |
| 20 Jan. | USA | Arrived Jan. 15 |
| 23 Jan. | Nepal | Arrived 13 Jan. |
| 23 Jan. | Singapore | Arrived 20 Jan. |
| 24 Jan. | France | Arrived 22 Jan. |
| 24 Jan. | Vietnam | Arrived 13 Jan. |
| 25 Jan. | Australia | Arrived 19 Jan. |
| 25 Jan. | Malaysia | Arrived 24 Jan. |

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/sars-cov-2/CT_extent_2020-07-30.png)

---

<video controls autoplay loop width="100%">
<source src="https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/sars-cov-2/USA_incidence.mp4" type="video/mp4">
</video>

---

# <!-- fit --> Case importations


<div style = "position: relative; bottom: -40%; font-size:18px;">
J. Arino & S. Portet. A simple model for COVID-19. Infectious Disease Modelling, 2020

J. Arino, N. Bajeux, S. Portet & J. Watmough. Quarantine and the risk of COVID-19 importation. Epidemiology & Infection, 2020</div>

---

# Importations

- In Ecology, importations are called *introductions* and have been studied for a while, because they are one of the drivers of evolution and, more recently, because of *invasive species*

- An importation occurs when an individual who acquired the infection in a jurisdiction makes their way to another jurisdiction while still infected with the disease

- Geographies greatly influence reasoning
	- At the country level, importations quickly become less relevant
	- Consider an isolated location of 500 people.. disease may become extinct then be reimported

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/sars-cov-2/CT_extent_2020-07-30.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/sars-cov-2/pct_active_21days.png)

---

![bg 95%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/importation_process3.png)

---

<video controls autoplay loop width="100%">
<source src="https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/sars-cov-2/USA_incidence.mp4" type="video/mp4">
</video>

---

# Our base model for considering COVID-19 uses detection-based compartments

Modify the usual $S$ (*susceptible*), $L$ (*latent*), $I$ (*infectious with symptoms*), $A$ (*infectious without symptoms*) and $R$ (*recovered*)
- $D$ (instead of $I$) are **detected** (positive tests)
- $U$ (instead of $A$) are **undetected** (even with symptoms)

$p$ fraction of cases detected *a posteriori* (stricto sensu)

<div style = "position: relative; bottom: -15%; font-size:24px;">J. Arino & S. Portet. A simple model for COVID-19. Infectious Disease Modelling, 2020</div>

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/figure_variant_importation_base_model.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/figure_variant_importation_base_model_with_stimulations.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/successful_attack_rate.png)

---

# <!-- fit --> Understanding variant dynamics and how to control it

- Suppose a *resident variant* is propagating in a population, say, the original wild type or, now, B.1.1.7
- A *novel variant* comes along, say B.1.617.2 (SARS-CoV-2 Delta) that is more transmissible

**Q:**

- How long until novel replaces resident variant in terms of propagation?
- What role do importations play in this?
- How does one diminish role of importations and how useful are measures used to do so?

<div style = "position: relative; bottom: -5%; font-size:18px;">
J. Arino, P.-Y. Boëlle, E.M. Milliken & S. Portet. Risk of COVID-19 variant importation - How useful are travel control measures? Infectious Disease Modelling, 2021

S.P Otto, T. Day, J. Arino, C. Colijn *et al*. The origins and potential future of SARS-CoV-2 variants of concern in the evolving COVID-19 pandemic. Current Biology, 2021
</div>

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/figure_variant_importation_1patch_simplified.png)

---

![bg 98%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/variant_noImport_increasingImport.png)

--- 

# <!-- fit -->Travel interruptions

---

<div style = "position: relative; bottom: -55%; left: 15%; font-size:38px; color: black;">Mur de la Peste in Cabrières-d’Avignon</div>

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/epidemio/Cabrières-d'Avignon_902.jpg)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/epidemio/peste_Provence.png)

---

![bg 98%](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/importation_vs_community_new_variant_means_withInset.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/exporter_importer_panel_zoom.png)

---

# Interruption of travel during first wave

<style scoped>
table {
    height: 100%;
    width: 100%;
    font-size: 23px;
}
</style>

|Country          |Travel suspension |First_case |
|:----------------|:-----------------|:----------|
|Seychelles       |2020-03-03        |2020-03-14 |
|El Salvador      |2020-03-17        |2020-03-18 |
|Cape Verde       |2020-03-17        |2020-03-20 |
|Sudan            |2020-03-17        |2020-04-05 |
|Marshall Islands |2020-04-22        |2020-10-29 |
|Vanuatu          |2020-03-20        |2020-11-11 |
|North Korea      |2020-01-21        |Unreported |
|Turkmenistan     |2020-03-20        |Unreported |
|Tuvalu           |2020-03-26        |           |

---

# <!-- fit --> Quarantine

# (Quarantaine)

---

# Quarantine $\neq$ Isolation

- *Quarantine* is indiscriminate and applies to all incoming flux
- *Isolation* is imposed to known or suspected cases and known contacts
- First used in (the lazzarettos of) Dubrovnik in 1377
- Name comes from Venitian *quarantena*

---

<div style = "position: relative; bottom: -55%; left: 5%; font-size:38px; color: black;">Lazzaretto vecchio</div>

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/epidemio/Lazzaretto_Vecchio-good_view.jpg)

---

<div style = "position: relative; bottom: 55%; font-size:38px;">Lazzaretto nuovo</div>

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/epidemio/Lazzareto-nuovo-01-1000.jpg)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/figure_SLDURM_importation_base_withQcompartments.png)

---

![bg contain](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/importations/end_of_quarantine_tq7_tq14.png)

--- 

# Effect of quarantine on importation rates

$1/\lambda$ the mean time between case importations, $1/\lambda_q$ the mean quarantine-regulated time between case importations, $c$ the efficacy of quarantine (in \%). Then
$$
\lambda_q = 
(100-c)\times
\lambda
$$
Suppose $1/\lambda=$ 5 days and efficacy of quarantine is 90\% at 7 days and 98\% at 14 days, respectively

Then $1/\lambda_q=$ 50 and 250 days, respectively

---

# Conclusion

- Case importations **will** occur no matter what
- Success of an importation depends on transmissibility of novel vs resident variant
- Travel interruptions are not efficacious at all on average
	- Need to be put in place very early on
- Quarantine is an efficacious tool to control case importations
	- It does not stop spread, but helps slow it down
	- Less stigmatising than travel interruptions
- Problem very quickly switches from input to local control

---

# Emergency response during public health crises

- Get in there to help .. and for the adrenalin 
- Get out of there burned out (19-20 hours a day 7 days a week the first two months, down to 80-100 hours/week now)
- Interesting and frustrating at the same time
- You are one of many being consulted. Don't expect anything you say to be used
- Expect wild goose chases, many aborted publications (*it's not relevant anymore!*)
- You sometimes get *insider* information and data but are often sworn to secrecy
	
---

# <!-- fit --> Merci / Miigwech / Thank you / Xièxie