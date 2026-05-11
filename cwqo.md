---
draft: false 
camera-ready: false 
anonymous: false 
acmart:
  format: sigconf
bibliography:
  - papers.bib
libraries:
  - lib/aliaume.tex
  - lib/maths.tex
  - lib/knowledges.kl
header-includes: |
  \usepackage{ensps-colorscheme}
  \usepackage{todonotes}
  \newcommand{\mael}[1]{\todo[color=violet!40]{#1}}
  \newcommand{\maelup}[1]{\emph #1}
  \newcommand{\maelin}[1]{\todo[inline,size=\normalsize,color=violet!40,caption={}]{Mael: #1}}
lipics:
  editor-macros: |
    \EventEditors{Claudia Faggian and Joost-Pieter Katoen}
    \EventNoEds{2}
    \EventLongTitle{41st Annual Symposium on Logic in Computer Science (LICS 2026)}
    \EventShortTitle{LICS 2026}
    \EventAcronym{LICS}
    \EventYear{2026}
    \EventDate{July 20--23, 2026}
    \EventLocation{Lisbon, Portugal}
    \EventLogo{}
    \SeriesVolume{380}
    \ArticleNo{32}
---

\input{src/introduction}
\input{src/prelims}
\input{src/ramseyan}
\input{src/badpaths}
\input{src/maintheorems}
\input{src/interpreting}
\input{src/conclusion}
