---
title: "The Fall of the Labor Share and the Rise of Superstar Firms"
subtitle: "Autor, David, Dorn, David, Katz, Lawrence F, Patterson, Christina, and Van Reenen, John, The Quarterly Journal of Economics, 135 (2020), 645–709."
header-includes:
  - \usepackage{adjustbox}
  - \usepackage{booktabs}
  - \linespread{1.2}
  - \usepackage[font={footnotesize}]{caption}
author: "Yu-Hsin Ho"
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
date: May 16, 2022
section-titles: false
toc: false
---

# Introduction

![International Comparison: Labor Share by Country](./images/Pasted%20image%2020220516142524.png){width=50%}

---

Decline of labor share is a global phenomenon, why?

- Relative low price of capital
- International trade
- **Rise of superstar firms**
  - High monopoly profit (markup)
  - Winner takes most / Network effects
  - High initial investment (sunk cost)

---

## 7 Empirical Facts

1. Sales concentration

2. More concentration, larger decline in labor share.

3. Main force: Reallocation of sales between firms

4. More concentration, higher reallocation effect

5. Growth of productivity and innovation leads to concentration

6. Larger firms, higher markup

7. Decline in labor share is an international phenomenon


# Conceptual Model

Consider a Cobb-Douglas Production Function:
$$
Y_i = z_i L_i^{\alpha^L} K_i^{1 - \alpha^L}
$$

And define labor share for each industry $i$:
$$
S_i \equiv \frac{w L_i}{P_i Y_i} = \frac{\alpha^L}{m_i}
$$

where markup $m_i = \frac{P_i}{c_i}$, and economy-wide parameters $\{\alpha^L, w\}$

Empirically, we look at payroll over total sales.

## Toughness in the market competition

Tough competition leads to...

1. Overall reduction in markup: With-in firm effect

2. Reallocation of market share to large firms: Between-firm effect

   With increased weight for firms with lower labor share, weighted average labor share will decline.

For observed declining labor share, (2) must dominate (1).

# Data

1. U.S. Economic Census: 1982-2012
   1. annual payroll; output (sales); employment;
   2. per-establishment micro data
2. EU KLEMS: industry-level OECD data set, 1980~
3. UN Comtrade Database: 1992-2012
   1. Import time series from six country groups for each industry.
4. CompNet: Industry-level data from 14 EU countries, 2000-2012
5. BVD Orbis: Firm-level panel data from 6 EU countries.

## Index Definitions

### Labor Share

$$
S = \frac{\text{Payroll}}{\text{Total Sales or Value Added}}
$$

### Concentration (Industry-level)

1. CR4: $\frac{\text{top 4 firms sale}}{\text{total sales}}$
2. CR20: $\frac{\text{top 20 firms sale}}{\text{total sales}}$
3. Herfindahl-Hirschman Index (HHI): Sum of square of top-50 market share

# Empirical Findings

![Average Payroll-to-Sales Ratio](./images/Pasted%20image%2020220516203135.png){width=60%}

## Finding 1: Concentration

![Average Concentration across Four-Digit Industries by Major Sector](./images/Pasted%20image%2020220516204018.png){width=65%}

## Finding 2: Concentration $\leftrightarrow$ Falling Labor Shares

Firm-level regression: labor share on market share

![The Relationship between Firm Size and Labor Share](./images/Pasted%20image%2020220516204633.png){width=80%}

---

Industry-level regression: labor share on concentration index

![The Relationship between the Change in Labor Share and the Change in Concentration across Six Sectors](./images/Pasted%20image%2020220516205909.png){width=80%}

---

Robust for all model settings; Notice impacts of import, initial-capital. 

![](./images/Pasted%20image%2020220516205229.png)\

---

![](./images/Pasted%20image%2020220516205438.png)\

## Finding 3: Between-firm Reallocation Dominates

### Decomposition of labor share change

$$
\begin{aligned}
\Delta S=& \underbrace{\Delta \bar{S}_{S}}_{\text{Within firm }} + \underbrace{\Delta\left[\sum\left(\omega_{i}-\bar{\omega}\right)\left(S_{i}-\bar{S}\right)\right]_{S}}_{\text{Between firm}} + \underbrace{\omega_{X, 0}\left(S_{S, 0}-S_{X, 0}\right)}_{\text{Exiters}} \\
&+ \underbrace{\omega_{E, 1}\left(S_{E, 1}-S_{S, 1}\right)}_{\text{Entrants}}
\end{aligned}
$$

---

![Melitz-Polanec Decomposition of the Change in Labor Share in All Six Sectors](./images/Pasted%20image%2020220516210943.png)

## Finding 4: Between-Firm Reallocation Is Strongest in Concentrating Industries

![Regressions of the Components of $\Delta S$ on $\Delta\text{Concentration}$ ](./images/Pasted%20image%2020220516211934.png){width=70%}

## Finding 5: Concentration $\leftrightarrow$ Innovation & Productivity Growth

![](./images/Pasted%20image%2020220516212926.png){width=90%}\

# Conclusion
### Conceptual Mechanism

Capital Intensive Competition $\rightarrow$ Innovative and High Productivity $\rightarrow$ Concentration $\rightarrow$ Superstar firms $\rightarrow$ High Markup $\rightarrow$ Low Labor Share



- Superstar firms might enact barriers to entry to protect their positions
- Prevalent labor outsourcing practices
- Future research
	- Inequality, outsourcing, part-time job, rank-and-file workers, etc.