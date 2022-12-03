---
marp: true
title: Backward bifurcation in an SLIARS model with vaccination
description: Studying the occurrence of a backward bifurcation in an SLIARS model, in deterministic and stochastic contexts.
theme: default
paginate: false
size: 16:9
math: mathjax
---

<style>
  .theorem { 
    text-align:justify;
    background-color:#16a085;
    border-radius:20px;
    padding:10px 20px 10px 20px;
    box-shadow: 0px 1px 5px #999;
    /*outline-style: solid;
    outline-color: white;*/
    margin-bottom: 10px;
    /*outline-width: 20px;
    border: 1px solid silver;*/
  }
  .definition {
    text-align:justify;
    background-color:#ededde;
    border-radius:20px;
    padding:10px 20px 10px 20px;
    box-shadow: 0px 1px 5px #999;
    margin-bottom: 10px;
  }
  img[alt~="center"] {
    display: block;
    margin: 0 auto;
  }
</style>

# <!-- fit -->Backward bifurcation in an SLIARS model with vaccination

CMS - Toronto - 3 December 2022

Julien Arino ([julien.arino@umanitoba.ca](mailto:julien.arino@umanitoba.ca))

Department of Mathematics & Data Science Nexus
University of Manitoba*

<div style = "font-size:18px; margin-top:-10px; padding-bottom:30px;"></div>

Canadian Centre for Disease Modelling
NSERC-PHAC EID Modelling Consortium (CANMOD, MfPH, OMNI/RÉUNIS)

<div style = "text-align: justify; position: relative; bottom: -5%; font-size:28px;">
* The University of Manitoba campuses are located on original lands of Anishinaabeg, Cree, Oji-Cree, Dakota and Dene peoples, and on the homeland of the Métis Nation.

---

# Disclaimer - R(BB,me)... it's complicated

- JA, CC McCluskey & PvdD. [Global results for an epidemic model with vaccination that exhibits backward bifurcation](https://doi.org/10.1137/S0036139902413829). SIAM Applied Math **64**(1):260-276 (2003)
- On 2022-02-03, Google Scholar says cited 389 times

I did some more:

- JA, Cooke, PvdD & Velasco-Hernández. [An epidemiology model that includes a leaky vaccine with a general waning function](https://doi.org/10.3934/dcdsb.2004.4.479). DCDS-B (2004)
- JA, Ducrot & Zongo. [A metapopulation model for malaria with transmission-blocking partial immunity in hosts](https://doi.org/10.1007/s00285-011-0418-4). JMB (2012)

But **I don't like backward bifurcations**! (More on this later)  

---

# Joke aside

- Thanks to [Evan Milliken](http://www.math.louisville.edu/~milliken/) (U of Louisville) for coming with an interesting twist on the backward bifurcation question that rekindled my interest in the issue
- $\Rightarrow$ JA & Milliken. [Bistability in deterministic and stochastic SLIAR-type models with imperfect and waning vaccine protection](https://doi.org/10.1007/s00285-022-01765-9). JMB (2022)

# And while I am thanking people...

- Funding support from NSERC DG, NSERC-PHAC EIDM MfPH and OMNI/RÉUNIS, U of M Faculty of Science Research Chairs in Fundamental Science program

---

# The (basic) reproduction number $\mathcal{R}_0$

In an **endemic** epidemiological model, reproduction number $\mathcal{R}_0$ is determined by looking for manifold in parameter space separating regions such that
- DFE LAS if $\mathcal{R}_0<1$
- DFE unstable if $\mathcal{R}_0>1$

(In an **epidemic** epidemiological model, $\mathcal{R}_0$ distinguishes between regions where $I(t)\searrow 0$ and regions where $I(t)$ initially increases before going to 0)

---

# Backward bifurcations TL;DR

- In a classic *forward* bifurcation, as $\mathcal{R}_0$ increases, at $\mathcal{R}_0=1$, a LAS endemic equilibrium *enters* the positive orthant through a transcritical bifurcation
- In a *backward* bifurcation (BB), as $\mathcal{R}_0$ increases
  - at $\mathcal{R}_0=1$, an unstable endemic equilibrium *exits* the positive orthant through a transcritical bifurcation
  - this endemic EP and another EP (LAS) were "born" at some $\mathcal{R}_c<1$ through a saddle-node bifurcation
  - $\implies$ for $\mathcal{R}_0>1$, there is a unique LAS endemic EP (as in the *forward* case)

---

![width:550px](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/vaccination/SIRV_bif_forward.png) ![width:550px](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/vaccination/SIRV_bif_backward.png)

---

# Some "historical" remarks

- [Backward bifurcation in epidemic control](https://doi.org/10.1016/S0025-5564(97)00027-8). PvdD & Hadeler, MBS (1997)
- [A simple vaccination model with multiple endemic states](https://doi.org/10.1016/S0025-5564(00)00003-1). Kribs-Zaletaa & Velasco-Hernández, MBS (2000)
- [A Model for Tuberculosis with Exogenous Reinfection](https://doi.org/10.1006/tpbi.2000.1451). Feng, C$^3$ & Capurro. Theoretical Population Biology (2000)
- [Reproduction numbers and sub-threshold endemic equilibria for compartmental models of disease transmission](https://doi.org/10.1016/S0025-5564(02)00108-6). PvdD & Watmough, MBS (2002)

In the $\infty$-dim case: 
- [A simple SIS epidemic model with a backward bifurcation](https://doi.org/10.1007/s002850000032). PvdD & Watmough, JMB (2000)
- [Vaccination strategies and backward bifurcation in an age-since-infection structured model](https://doi.org/10.1016/S0025-5564(01)00099-2). Kribs-Zaletaa & Martcheva, MBS (2002)

---

# A prototype model for a BB

![90% center](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/SIRVS_BB.png)

---

# Why I don't like BB

- Mathematically easy: EEP equation has degree $\geq 2$
- No satisfactory mechanistic interpretation that I know of

![width:550px](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/SIRVS_BB_nowaning.png) ![width:550px](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/SIRVS_BB_perfectvaccine.png)

- By analogy, think of the bistability that occurs with an Allee effect: here, we have a nice, pleasant and easy to understand reason for the bistability

---

# Why I don't like BB (continued)

- They hinder global stability work: our 2003 paper with McCluskey and PvdD is the only one to my knowledge that considers global behaviour in the BB region
- From a public health perspective, how to detect a BB?
- Are we in an endemic situation stemming from a FB or a BB?
- How likely are BB in general? Often small region in parameter space

---

# Where things become interesting

- Stochastic aspects throw in a wrench: in a stochastic system, we may switch from one basin of attraction to another
- Allen & PvdD. [Stochastic epidemic models with a backward bifurcation](https://doi.org/10.3934/mbe.2006.3.445) MBE (2006)

---

# A SLIARVS model

![90% center](https://raw.githubusercontent.com/julien-arino/presentations/main/FIGS/flow-diagrams/SLIARVS_BB.png)

---

# Questions 

1. Existence of BB in this model?
2. Link between the bistable behaviour of deterministic SVLIARS and its CTMC analogue, and capacity to detect bistability in the SVLIARS CTMC?
3. Are CTMC and BP approximation equally able to detect a backward bifurcation?

---

$$
\label{sys:SVLIARS}
\begin{align}
S' & = (1-p)B + \omega_vV + \omega_rR - \beta S (I+\eta A) - (e + d) S \tag{1a}\label{sys:SVLIARS_dS}\\
V' & = pB + e S - (1-\sigma )\beta V (I+\eta A) - (\omega_v + d) V \tag{1b}\label{sys:SVLIARS_dV}\\
L' & = \beta (S+(1-\sigma)V) (I+\eta A) - (\varepsilon + d) L \tag{1c}\label{sys:SVLIARS_dL}\\
I' & = (1 - \pi)\varepsilon L - (\gamma+ \mu + d) I \tag{1d}\label{sys:SVLIARS_dI}\\
A' & = \pi\varepsilon L - (\gamma+ d) A \tag{1e}\label{sys:SVLIARS_dA}\\
R' & = \gamma (A + I) - (\omega_r + d) R \tag{1f}\label{sys:SVLIARS_dR}
\end{align}
$$

---

If vaccination is absent, i.e., $V'$ equation is absent and $p=e=\omega_v=0$, the system has DFE $E_0$ with $\bar S_0=B/d$
$$
\begin{equation}\label{eq:R0_SLIARS_v1}\tag{2}
\mathcal{R}_0 = \beta\frac{\varepsilon}{\varepsilon+d}
\left(
\frac{1-\pi}{\gamma+\mu+d} + \frac{\eta\pi}{\gamma+d}
\right) \bar S_0.
\end{equation}
$$

---

<div class="theorem">

The disease-free equilibrium of system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ is 
$$
E_0 = (S_0,V_0,0,0,0,0)
$$
where $S_0$ and $V_0$ are given by
$$
\begin{equation}\label{eq:DFE_SVLIARS_v1}
\tag{3}
S_0 = \frac{(1-p)d+\omega_v}{e+\omega_v+d}\; \frac Bd 
\quad\textrm{and}\quad
V_0 = \frac{pd+e}{e+\omega_v+d}\;\frac Bd
\end{equation}
$$
The basic vaccination reproduction number for system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ is given by 
$$
\begin{equation}\label{eq:Rv_SVLIARS_v1}\tag{4}
\mathcal{R}_v=\frac{\lambda}{\varepsilon+d}(S_0+(1-\sigma)V_0),
\end{equation}
$$
where $S_0$ and $V_0$ are given by $\eqref{eq:DFE_SVLIARS_v1}$. If $\mathcal{R}_v<1$, then $E_0$ $\eqref{eq:DFE_SVLIARS_v1}$ of $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ is locally asymptotically stable, while it is unstable if $\mathcal{R}_v>1$
</div>

---

# Proportion vaccinated (vaccine coverage)

Vaccine coverage is the fraction (typically expressed as a percentage) of the population vaccinated, i.e., 
$$
v_c=\frac{V(t)}{N}
$$ 
Can be evaluated at any point in state space, for instance at endemic equilibria, although a closed-form solution is rarely obtained


At the DFE
$$
\begin{equation}\label{eq:v_c_DFE}\tag{5}
v_c(E_0) := \frac{V_0}{S_0+V_0}=\frac{pd+e}{e+\omega_v+d}
\end{equation}
$$

---

In terms of $\bar S_0$ for the SLIARS system without $\eqref{sys:SVLIARS_dV}$, the DFE for system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ thus takes the form
$$
\begin{equation}\label{eq:S0_V0_fct_vcE0}\tag{6}
S_0 = (1-v_c(E_0))\bar S_0
\quad\text{and}\quad
V_0=v_c(E_0)\bar S_0.
\end{equation}
$$
To continue the analysis, it is useful to define the combination parameter
$$
\begin{equation}\label{eq:lambda}\tag{7}
\lambda = \beta\varepsilon
\frac{(\gamma+\mu+d)\eta\pi + (1-\pi)(\gamma + d)}
{(\gamma + d)(\gamma+\mu+d)}>0
\end{equation}
$$
Using $\lambda$, $\eqref{eq:R0_SLIARS_v1}$ takes the form
$$
\mathcal{R}_0 = \frac{\lambda}{\varepsilon+d}\bar S_0
$$

---

<div class="theorem">

The basic vaccination reproduction number for system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ is given by 
$$
\begin{equation}\label{eq:Rv_SVLIARS}\tag{8}
\mathcal{R}_v=\frac{\lambda}{\varepsilon+d}(S_0+(1-\sigma)V_0)
\end{equation}
$$
where $S_0$ and $V_0$ are given by $\eqref{eq:S0_V0_fct_vcE0}$.

If $\mathcal{R}_v<1$, then DFE $E_0$ of $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ is locally asymptotically stable, while it is unstable if $\mathcal{R}_v>1$
</div>

$S_0+(1-\sigma)V_0\leq S_0+V_0=\bar S_0$, with equality when $\sigma=0$ $\implies$ $\mathcal{R}_v\leq\mathcal{R}_0$, the inequality being strict unless $\sigma=0$

Actually, 
$$
\mathcal{R}_v = \mathcal{R}_0\frac{(1-\sigma)e+\omega_v+d-dp\sigma}{e+\omega_v+d}
$$

---

# Seeking endemic equilibria

Let 
$$
\begin{equation}\label{eq:Lquad}\tag{9}
P(L)=a_0 + a_1 L + a_2 L^2 
\end{equation}
$$
where 
$$
\label{eq:coeffs_P}
\begin{align}
a_0 &=d(\varepsilon+d)(e+\omega_v+d)(\mathcal{R}_v-1) \\
a_1 &= \lambda^2(1-\sigma)B \nonumber\\
&\quad\quad+ \lambda((1-\sigma)e + \omega_v+d)\left(\frac{\omega_r\gamma\varepsilon   (\gamma+\pi\mu+d)}{(\omega_r+d)(\gamma+d)(\gamma+\mu+d)}-(\varepsilon+d)\right)\\\nonumber
&\quad\quad-\lambda(1-\sigma)d(\varepsilon+d),\\
a_2 &= \lambda^2(1-\sigma)\left(\frac{\omega_r\gamma\varepsilon   (\gamma+\pi\mu+d)}{(\omega_r+d)(\gamma+d)(\gamma+\mu+d)}-(\varepsilon+d)\right)\leq 0
\label{eq:coeffs_P_a2}
\end{align}
$$

---

# Yippee-ki-yay, habemus BB ... probably

<div class="theorem">

System $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ admits endemic equilibria according to the following cases:

1. A unique positive endemic equilibrium if $\mathcal{R}_v>1$ or $\mathcal{R}_v<1$, $a_1>0$ and $a_1^2-4a_0a_2=0$
2. Two positive endemic equilibria if $\mathcal{R}_v<1$, $a_1>0$ and $a_1^2-4a_0a_2>0$
4. Zero positive equilibria otherwise, and in particular when $\mathcal{R}_0<1$
</div>

When the root of $\eqref{eq:Lquad}$ is unique, denote it $L^*$, whereas when there are two distinct positive roots, denote $L^*$ and $L_*$ these values, with the convention that $L_*<L^*$

The resulting EEP are denoted $E_*$ and $E^*$; all components of $E^*$ are larger than those of $E_*$, except for $V_*>V^*$

---

# Yup, we do

Consider the condition
$$
\label{eq:C2}\small
\sigma v_c(E_0)\frac{(1-\sigma)d(\varepsilon+d)}{(1-\sigma)e+\omega_v+d}\mathcal{R}_0 > \\
\varepsilon+d - \frac{\varepsilon\gamma\omega_r(\gamma+\pi\mu+d)}{(\gamma+d)(\gamma+\mu+d)(\omega_r+d)}\tag{$\mathbf{H1}$}
$$
<div class="theorem">

System $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$ undergoes a backward bifurcation at $E_0$ and $\mathcal{R}_v=1$ whenever condition $\eqref{eq:C2}$ holds
</div>

---

# CTMC analogue of $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$

Construct the CTMC
$$
\mathbf{X}_t = (S(t), V(t), L(t), I(t), A(t), R(t))
$$ 
with infinitesimal transition probability to state $j$ from state $i$
$$
\begin{equation}\label{eq:CTMCtrans}\tag{10}
p_{i,j}(\Delta t) = \mathbb{P}\{\mathbf{X}(t+\Delta t) = j|\mathbf{X}(t)=i\}=\rho(i,j)\Delta t + o(\Delta t)
\end{equation}
$$
where $\rho(i,j)$ is the transition rate associated with transition to $j$ from $i$

I spare you the rates of transition, they are direct replicates of the ODE rates for the different arrows (transitions)

---

# Multitype branching process approximation

Common to formulate a branching process to approximate the probability of extinction in a CTMC

One of our objectives is to investigate whether CTMC and BP approximation to CTMC detect a change in the dynamics associated to the presence of a BB in the mean field system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$

BPA is a linearization technique. In the context of epidemiological modelling, the BPA to a CTMC model captures birth and death probabilities of each infectious type at the disease-free equilibrium

As a result, BPA are not appropriate to approximate behaviour far away from the DFE and do not capture behaviour driven by non-linear dynamics

---

Assume $S(t)$ and $V(t)$ are fixed at DFE levels; construct the MTBP $Z_n=(L_n,I_n,A_n)$ with offspring probability generating function (p.g.f.)
$$
\begin{equation}\label{eq:Fn}\tag{11}
\mathbf{F}(\mathbf{u})=(f_L(\mathbf{u}),f_I(\mathbf{u}),f_A(\mathbf{u}))
\end{equation}
$$
where $f_i$ is the offspring p.g.f. for $i=L,\,I,\,A$, respectively. Then $f_i$ has the form
$$
\begin{equation}\label{eq:offspringpgf}\tag{12}
f_i=\sum_{n=0}^\infty p(r_L,r_I,r_A)u_L^{r_L}u_I^{r_I}u_A^{r_A}
\end{equation}
$$
where $p(r_L,r_I,r_A)$ is the probability that an individual of type $i$ gives birth to $r_j$ individuals of type $j=L,\,I,\,A$

---

Specifically,
$$
\begin{align}
    f_L(u_L,u_I,u_A)&=\frac{(1-\pi)\varepsilon u_I+\pi\varepsilon u_A + d}{\varepsilon + d}\\
    f_I(u_l,u_I,u_A)&=\frac{\beta(S_0+(1-\sigma)V_0)u_Lu_I + \gamma + \mu + d}{\beta(S_0 + (1-\sigma)V_0)+\gamma+\mu+d} \\
    f_A(u_l,u_I,u_A)&=\frac{\beta\eta(S_0+(1-\sigma)V_0)u_Lu_A + \gamma + d}{\beta(S_0 + (1-\sigma)V_0)+\gamma+d}
\end{align}
$$

---

The probability of a minor epidemic relative to the CTMC $\mathbf{X}_t$ with infinitesimal transition probabilities $\eqref{eq:CTMCtrans}$ can be approximated by the extinction probability of the multitype branching process with generating function $\eqref{eq:Fn}$

Suppose that $k_L, k_I, k_A$ individuals of types $L$, $I$, $A$, respectively, are introduced at the disease free quasi-stationary distribution

Suppose also that the MTbp satisfies the conditions of Theorem 7.1 in Harris (1963)

Then the probability of a minor epidemic is 
$$
\begin{equation}\label{eq:P0}\tag{13}
\mathbb{P}_0=q_L^{k_L}q_I^{k_I}q_A^{k_A}
\end{equation}
$$
where $\mathbf{0}\leq \mathbf{q}=(q_L,q_I,q_L)\leq\mathbf{1}$ is the fixed point of 
$$
\begin{equation}\label{eq:q}
\mathbf{F}(\mathbf{q})=\mathbf{q}
\end{equation}
$$
with $\leq$ the standard partial order in $\mathbb{R}^3$

---

<div class="theorem">

The probability of extinction in the multitype branching process with generating function $\eqref{eq:Fn}$ is given by $\eqref{eq:P0}$. If $\mathcal{R_v}\leq 1$, then $\mathbf{q}=\mathbf{1}$. If $\mathcal{R}_v>1$, then $\mathbf{q}$ is the unique vector $\mathbf{0}\leq\mathbf{q}<\mathbf{1}$ such that
$$
\mathbf{F}(\mathbf{q})=\mathbf{q}
$$
</div>

This illustrates an important implication of a Threshold Theorem of Allen & PvdD (2013). Since the mean field system is a kind of limit of the CTMC, the presence of a backward bifurcation there suggests we should be able to detect a backward bifurcation in the CTMC. However, the BPA provides the same approximation of a.s. extinction throughout the region of bistability 

---

# Numerical experiments

To determine whether the CTMC detects the dynamical change suggested by the backward bifurcation in system $\eqref{sys:SVLIARS_dS}$-$\eqref{sys:SVLIARS_dR}$, we estimate the probability of a minor epidemic as the frequency of minor epidemics in an ensemble of one thousand sample paths

The results are compared to the branching process approximation for the same choice of parameters

---

<style>
    .heatMap {
        overflow:scroll;
    }
    .heatMap th {
        background: lightgrey;
    }
    .heatMap tr:nth-child(4) { background: #FFCCCB;}
    .heatMap tr:nth-child(5) { background: #FFCCCB;}
    .heatMap tr:nth-child(6) { background: #FFCCCB;}
</style>

<div class="heatMap">

$(L_0,I_0,A_0)$| # of $>0$ EP | $\mathcal{R}_v$ | BP Approx | Gillespie  | 
|---|---|---|---|---|
(1,0,0) | 0 | 0.92 | 1.000 | 1.000 | 
(0,1,0) | 0 | 0.92 | 1.000 | 1.000 |
(0,0,1) | 0 | 0.92 | 1.000 | 1.000 | 
(1,0,0) | 2 | 0.99 | 1.000 | 0.999 | 
(0,1,0) | 2 | 0.99 | 1.000 | 0.999 |
(0,0,1) | 2 | 0.99 | 1.000 | 0.999 | 
(1,0,0) | 1 | 1.10 | 0.990 | 0.989 | 
(0,1,0) | 1 | 1.10 | 0.990 | 0.982 | 
(0,0,1) | 1 | 1.10 | 0.990 | 0.989 | 

---

![center](https://cmpd6.github.io/assets/images/SkylineWinnipgeLong.png)

# CMPD 6 - Winnipeg 23 to 27 May 2023

**Computational and Mathematical Population Dynamics**

(Fort Lauderdale 2019, Taiyuan 2013, Bordeaux 2010, Campinas 2007, Trento 2004)

Follows MPD: University of Mississippi 1986, Rutgers University 1989, Pau 1992, Rice University 1995, Zakopane 1998, Trento 2004

And DeStoBio: Sofia 1997, Purdue 2000, Trento 2004

See information on [https://cmpd6.github.io/](https://cmpd6.github.io/)

---

# <!-- fit --> Merci / Miigwech / Thank you

