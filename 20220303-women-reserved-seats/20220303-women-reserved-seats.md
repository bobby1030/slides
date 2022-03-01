---
title: "Reserving Female Status — Women Reserved Seats and Gender Empowerment in Taiwan"
header-includes:
  - \usepackage{tikz}
  - \usepackage{pgfplots}
  - \usepackage{adjustbox}
  - \usepackage{booktabs}
author: "Yu-Hsin Ho"
institute: "Department of Economics, National Taiwan University"
topic: "Pandoc how-to"
theme: "Frankfurt"
colortheme: "beaver"
mainfont: "Charter"
CJKmainfont: "GenRyuMin TW"
CJKoptions:
  - ItalicFont=AR PL UKai TW
fontsize: 10pt
urlcolor: red
linkstyle: bold
aspectratio: 43
date: 20220303
section-titles: false
toc: true
---

# Background

## A Progressive Gender Perspective of *ROC Consitution*

> 中華民國憲法第 134 條
>
> 各種選舉，應規定婦女當選名額，其辦法以法律定之。

- Mandatory women reserved seats in *any* election codified in *ROC Constitution* since 1946
	- Established long before new left feminism movement in 1960s Western world 
	- Mainly Influenced by May Fourth Movement（新文化運動）and KMT-CCP Alliance（聯俄容共）（黃長玲，2012）

---

- Past researches on effects of women political representation utilized **a similar natural experiment in India**
	- 1993 Constitution Amendment in India: 
		- 1/3 seats reserved for women in local council elections
		- Higher female political representation due to this policy
		- **Identification**: States adopting this policy was designated randomly, causing random treatment and time variation
	- Outcomes: son preference, crime against women, educational attainment/investment, gender attitudes, etc.

---

- In practice, most elections in Taiwan reserved 1 women seat per 4 elected member in the electoral district
	- That is, guaranteeing 14% ~ 25% female members at least
- The case in Taiwan provides neater identification than India
	- Number of elected members determined by population size

---

- Question we’re asking: 
	- Effects of women reserved seats on **female political representation**
	- And its corresponding effects on **female social status**

# Data and Identification Strategy

## Treatment

$\text{Elected Female Ratio } E_{tT} = \frac{\text{Female Member Size 女性當選人數}}{\text{Member Size 應選人數}}$, gathered from:

1. City Council Elections

	- from 1998 to 2018 (6 periods in total)
	- Electoral district level

2. Legislator Elections

	- from 1998 to 2004 (3 periods in total)
	- Electoral district level

Endogeneity: Higher female elected rate might be correlated with positive gender attitudes towards women.

- We use 2SLS to estimate the treatment effect of female political representation, instrumented by the ratio of reserved seats for women.

## Instrumenting $E_{tT}$ by Reserved Seats Ratio $R_{tT}$

$\text{Reserved Seats Ratio } R_{tT} = \frac{\text{Reserved Seats 保留名額數}}{\text{Member Size 應選人數}}$

\begin{figure}[htb]
\centering
\scalebox{0.5}{
\begin{tikzpicture}
\begin{axis}
[
    xlabel={Elected Members}, 
    ylabel={Reserved Seats Ratio ($R_{tT}$)}, 
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

We capture this discontinuous shock as instrument of treatment.

Exclusion Restriction: Reserved seats could only be “displayed” if candidates were actually elected.
- $E_{tT}$ is the only channel that $R_{tT}$ might affect outcomes.

## Outcomes

1. Political Performance (1st Stage of 2SLS): Elected Female Ratio $E_{tT}$

2. Female Status: Son Preference
	
	> Newborns Birth Data from MOI between 1998 to 2018
	
	1. Third Child
	2. Sex Ratio of the Third Child

# Estimations

## First Stage

## Outcome: Third Child & Sex Ratio

\include{birth.tex}

---

\include{birth_sexgroup.tex}

## Conclusion

- Less willingness to  when higher female political representation
	- Potential role-model effects
- 

# Future
