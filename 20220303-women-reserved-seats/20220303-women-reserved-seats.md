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
mainfont: "Fira Sans"
CJKmainfont: "AR UDJingXiHeiPU30"
CJKoptions:
  - ItalicFont=AR PL UKai TW
fontsize: 9pt
urlcolor: red
linkstyle: bold
aspectratio: 43
date: 20220303
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
	- That is, guaranteeing 14% ~ 25% female representatives
- The rule of reserving seats in Taiwan provides neat identification of policy effect than India

---

## Main Question

- Effects of women reserved seats on **female political representation**
- And its corresponding effects on **female social status**

# Data and Identification Strategy

## Treatment

$\text{Elected Female Ratio } E_{tCT} = \frac{\text{Female Member Size 女性當選人數}}{\text{Member Size 應選人數}}$,

gathered from City Council Elections:

- from 1998 to 2018 (6 periods in total)
- Electoral district level

We use IV to deal with endogeneity of $E_{tCT}$, instrumented by the ratio of reserved seats for women $R_{tCT}$.

## Instrumenting $E_{tCT}$ by Reserved Seats Ratio $R_{tCT}$

$\text{Reserved Seats Ratio } R_{tCT} = \frac{\text{Reserved Seats 保留名額數}}{\text{Member Size 應選人數}}$, in period $t$, county $C$, and township $T$

\begin{figure}[htb]
\centering
\scalebox{0.5}{
\begin{tikzpicture}
\begin{axis}
[
    xlabel={Elected Members}, 
    ylabel={Reserved Seats Ratio ($R_{tCT}$)}, 
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

#### Exclusion Restriction

Since reserved seats could only be “displayed” if candidates were actually elected, i.e. $E_{tCT}$ is the only channel that $R_{tCT}$ might affect outcomes.

## Outcomes

- **1st Stage**: Effects of women reserved seats $R_{tCT}$ on **female political representation** $E_{tCT}$

- **2nd Stage**: its corresponding effects on **female social status**, including:
	1. Female Leadership in Labor Market
	
		(Family Income Expenditure Survey 家庭收支調查 between 1998 to 2018)
	
	2. Son Preference
	
		(Newborns Birth Data 出生人口檔 between 1998 to 2006)

# Estimations

## 2SLS Specification

- Treatment: county/township level
- Outcome: individual level

$$
Y_{itCT} = \alpha + \beta_1 \hat{E_{tCT}} + (\delta_t + \delta_{C}) + (\gamma_1 \operatorname{population}_{C} + \gamma_2' \mathbf{X}_i) + \epsilon_i
$$
$$
\hat{E_{tCT}} = \alpha + \beta_1 R_{tCT}  + (\delta_t + \delta_{C}) + (\gamma_1 \operatorname{population}_{C} + \gamma_2' \mathbf{X}_i)
$$

## First Stage

\include{1ststage.tex}

## Outcome: Female Leadership

\include{iv_isSupervisor.tex}

## Outcome: Third Child & Sex Ratio

\include{birth.tex}

## Outcome: Third Child & Sex Ratio

Interacted with subgroup: Whether first two child are both daughter.

\include{birth_sexgroup.tex}

---

## Discussion

Increased female seats might reduce people’s willingness to pay for sons.

### Model (1), (2)

- Gave up fertilizing 3rd child for those who already had 2 daughters
- Son preference weaken

### Model (3), (4)

- Indicating behaviors of those who had conservative gender attitudes
	- *“insist to give a shot at third child”*
- Sex selection existed, and higher female representation didn’t abolish it.

# Future Development

### Outcomes on Gender Attitudes

- Taiwan Social Change Survey 

### Other Influencing Channels

- Elected or Candidacy?

### Potential Mechanisms

- Role-model effect
- Policy effect
	- Labor market outcomes
	- Pro-female policies
