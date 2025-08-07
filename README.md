# Clique width and well-quasi-orderings


This paper continues the work of <https://doi.org/10.4230/LIPIcs.MFCS.2025.70>
(<https://arxiv.org/abs/2405.10894>) that studied classes of graphs having
*bounded linear clique width* that were *well-quasi-ordered* by the induced
subgraph relation.


There are two main results of the new paper are as follows:

**Theorem 1:** For every class of graphs with bounded clique width, the
following are equivalent:
    a. The class is $2$-wqo 
    b. The class is $X$-wqo for all well-quasi-orderings $X$
    c. Every subclass of bounded linear clique width is $2$-wqo
    d. Every subclass of bounded linear clique width is $X$-wqo for all
       wqos $X$.

**Theorem 2:** For every **hereditary** class of graphs with bounded clique width, the
following are equivalent:
    a. The class is $2$-wqo 
    b. The class does not existentially interpret all finite paths.


As a byproduct of our proof scheme, we also obtain an algorithm that
inputs a class $\mathcal{C}$ of graphs with bounded clique width
(given as an MSO transduction from trees to graphs) and outputs 
whether the class is $2$-wqo or not.

These theorems solve longstanding open problems in the area of
well-quasi-orderings on graph classes, in the case of classes having bounded
clique width.
