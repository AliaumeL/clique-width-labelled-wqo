---
draft: true
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
  \newcommand{\maelin}[1]{\todo[inline,size=\normalsize,color=violet!40,caption={}]{Mael: #1}}
---


\input{src/introduction}
\input{src/prelims}
\input{src/ramseyan}
\input{src/badpaths}
\input{src/maintheorems}
\input{src/interpreting}
\input{src/conclusion}
