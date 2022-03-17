---
title: "Reserving Female Status — Women Reserved Seats and Gender Empowerment in Taiwan"
header-includes:
  - \usepackage{tikz}
  - \usepackage{pgfplots}
  - \usepackage{adjustbox}
  - \usepackage{booktabs}
  - \linespread{1.3}
author: "Yu-Hsin Ho"
institute: "Department of Economics, National Taiwan University"
theme: "metropolis"
colortheme: "default"
mainfont: "Myriad Pro"
CJKmainfont: "AR UDJingXiHeiPU30"
CJKoptions:
  - ItalicFont=AR PL UKai TW
fontsize: 9pt
urlcolor: red
linkstyle: bold
aspectratio: 43
date: March 18, 2022
section-titles: false
toc: true
---

# Background

## A Progressive Gender Perspective of *ROC Consitution*

> *中華民國憲法第 134 條*
>
> 各種選舉，應規定婦女當選名額，其辦法以法律定之。

- Mandatory women reserved seats in *any* election codified in *ROC Constitution* since 1946
	- Established long before new left feminism movement in 1960s Western world 
	- Mainly Influenced by May Fourth Movement（新文化運動）and KMT-CCP Alliance（聯俄容共）（黃長玲，2012）

---

Past researches on effects of women political representation utilized a natural experiment in India

### 1993 Constitution Amendment in India

- 1/3 seats reserved for women in local council elections
- Higher female political representation due to this policy
- **Identification**: States adopting this policy was designated randomly, causing random treatment and time variation

Outcomes: son preference, crime against women, educational attainment/investment, gender attitudes, etc.

---

- Local council elections in Taiwan reserved 1 woman seat per 4 elected member
  - Guaranteeing 14% ~ 25% female representatives for electoral districts having $\geq$ 4 members
- If the number of female elected doesn’t meet the requirement, then the lowest voted male winner will be replaced by highest voted female candidate.
- This provides neater identification of policy effect than India

---

## Main Question

- Effects of women reserved seats on **female political representation**
- And its corresponding effects on **female social status**

# Data and Identification Strategy

## Treatment

$\text{Elected Female \% } E_{tde} = \frac{\text{Female Member Size 女性當選人數}}{\text{Member Size 應選人數}}$ in year $t$, period $e$, and electoral district $d$.

Data gathered from the City Council Elections:

- from 1998 to 2018 (6 periods in total)
- electoral district level

We use IV to deal with endogeneity of $E_{tde}$, instrumented by the % of reserved seats for women $R_{tde}$.

## Instrumenting $E_{tde}$ by Reserved Seats Proportion $R_{tde}$

$\text{Reserved Seats \% } R_{tde} = \frac{\text{Reserved Seats 保留名額數}}{\text{Member Size 應選人數}}$ in year $t$, period $e$, and electoral district $d$.

\begin{figure}[htb]
\centering
\scalebox{0.7}{
\begin{tikzpicture}
\begin{axis}
[
    xlabel={Elected Members}, 
    ylabel={Reserved Seats Ratio ($R_{tde}$)}, 
    xmin=0, 
    xmax=20, 
    ymin=0, 
    ymax=0.3
]
\addplot[no marks, domain=0:20, samples=50] {floor(x/4)/x};
\end{axis}
\end{tikzpicture}
}
\end{figure}

We capture this discontinuous “ticks” as instrument of treatment.

## Outcomes

### 1st Stage

Effects of women reserved seats on **female political representativeness**

### 2nd Stage

Treatment effects on couple’s **son preference**

- Variables:
  1. **Third Child**: Dummy of having 3rd child or not
  2. **Third Child is Son**: Dummy of 3rd child being male
- Data: Newborns Birth Data 出生人口檔 between 1998 to 2006
- Observation: couple level

## 2SLS Specification

2nd Stage:
$$
Y_{itde} = \alpha + \beta_1 \hat{E_{tde}} + \gamma_1 \ln \operatorname{population}_{\text{county}} + \delta_t + \delta_{d} + \epsilon_i
$$

1st Stage:
$$
\hat{E_{itde}} = \alpha + \beta_1 R_{tde}  + \gamma_1 \ln \operatorname{population}_{\text{county}} + \delta_t + \delta_{d}
$$

Controlling $\ln \operatorname{population}$ to resolve omitted variable bias.

# Estimations

## First Stage

Elasticity of reserved seats on female elected and female candidates are high.

\include{1ststage.tex}

## Summary of Newborn Data

\include{birth_summaryStats.tex}

## Outcome: Son Preference

\include{birth.tex}

## Outcome: Subgroup Son Preference

\include{birth_sexgroup.tex}

## Discussion

### Outcome: 3rd Child

1. Increase Female **Bargaining Power**
	- Only couples with extreme sex composition consider to have 3rd child
	- Decreased willingness to pay additional son/daughter
	- No effects on college graduates (high bargaining power already)
2. Weaken **Son Preference**
	- Larger effect on couples without son

### Outcome: Sex ratio of 3rd parity

- Indicating behaviors of those who had conservative gender attitudes
	- Higher willingness to pay for a son
- Sex selection existed, and higher female representation didn’t abolish it.

# Potential Issues

### Outcomes on Gender Attitudes

- Taiwan Social Change Survey 

### Other Influencing Channels

- Elected or Candidacy?

### Mechanisms

- Role-model effect
- Policy effect
	- Labor market outcomes
	- Pro-female policies
