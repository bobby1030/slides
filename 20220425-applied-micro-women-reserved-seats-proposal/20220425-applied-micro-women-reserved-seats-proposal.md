---
title: "Reserving Female Status — Women Reserved Seats and Gender Empowerment in Taiwan"
subtitle: "Applied Microeconomics, 2022 Spring"
header-includes:
  - \usepackage{tikz}
  - \usepackage{pgfplots}
  - \usepackage{adjustbox}
  - \usepackage{booktabs}
  - \linespread{1.3}
  - \usepackage[font={footnotesize}]{caption}
author: "何雨忻"
institute: "Department of Economics, National Taiwan University"
theme: "metropolis"
colortheme: "default"
mainfont: "Myriad Pro"
CJKmainfont: "AR UDJingXiHeiPU30"
CJKoptions:
  - ItalicFont=AR PL UKai TW
fontsize: 10pt
urlcolor: red
linkstyle: bold
aspectratio: 43
date: Apr 25, 2022
section-titles: false
toc: false
---

## Policy Background

Mandatory women reserved seats was codified in *ROC Constitution* since 1946

- Long before western feminism movement in 1960s
- Mainly Influenced by May Fourth Movement（新文化運動）and KMT-CCP Alliance（聯俄容共）（黃長玲，2012）

### Women in politics

Women parliamentarians (from CEC, OECD database)

| Taiwan | Korea | Japan | Singapore | Denmark | Sweden |
| :----: | :---: | :---: | :-------: | :-----: | :----: |
| 41.6%  |  19%  | 9.9%  |    23%    |  39.7%  |  47%   |

## Empirical Literatures in India

-   1993 Constitutional Amendment
-   1/3 villages chief councilor reserved, *picked randomly*
-   Outcomes:
    -   Increased female political representation
    -   Female entrepreneurship \footnotesize (Ghani, Kerr, and O’Connell 2014) \normalsize
    -   Report of crimes against women \footnotesize (Iyer et al. 2012) \normalsize
    -   Neonatal mortality of female \footnotesize (Kalsi 2017) \normalsize
    -   Female educational attainment \footnotesize (Beaman et al. 2012) \normalsize

## Data & Empirical Strategy

### Outcomes

-   Son preference
    -   Willingness to have 3rd parity (MOI birth data, 1999 — 2006)
    -   Gender difference of neonatal mortality rate
-   Gender role attitude (Taiwan Social Change Survey, 2006, 2011, 2016)

![Newborn Sex Ratio by Parity](20220425-applied-micro-women-reserved-seats-proposal.assets/sexratioByParity.png){width=60%} 

---

### Treatment 

Council member elections, 1998 — 2006

-   Endogenous treatment $X$: **Proportion of female council member**
-   Instrument $Z$: **Proportion of reserved seats**
-   Control for population to prevent OVB in the first stage.

\begin{figure}[htb]
\centering
\scalebox{0.6}{
\begin{tikzpicture}
\begin{axis}
[
    xlabel={Members in Electoral District}, 
    ylabel={Proportion of Reserved Seats}, 
    xmin=0, 
    xmax=20, 
    ymin=0, 
    ymax=0.3
]
\addplot[no marks, domain=0:20, samples=50] {floor(x/4)/x};
\end{axis}
\end{tikzpicture}
}
\caption{Discontinuity of Reserved Seats by Policy Design}
\end{figure}

## Contribution

-   Casual effect of political participation on gender empowerment, with neater identification.
-   Potential channels of changing gender attitudes.
