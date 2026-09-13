# R Euler-Venn Diagram — Mariana Trench Factor Sets

R script drawing logical Euler-Venn (rose / petal) diagrams of the factor sets affecting the Mariana Trench morphology - tectonic plates, sediment thickness, slope, aspect and morphology classes - showing all their intersections and overlaps.

## Related publication

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- ISSN: 2029-6991 (Scopus)

This script produced Figure 21 (right), the logical Euler-Venn diagram.

## Script

- Euler-Venn-Diagram.R: reads Morphology.csv and draws Euler-Venn diagrams with the venn package (ilabels, ellipse, zcolor) for 4-, 6- and 7-set combinations of the factors, rendered as overlapping petals (rose).

## Methods

- Set-membership (Euler-Venn) visualisation of logical intersections among categorical factor sets.

## Data

- Morphology.csv: per-profile factor sets of the Mariana Trench.

## Requirements

- R (>= 3.5); package: venn

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84. https://doi.org/10.3846/gac.2019.3785

## License

MIT — see LICENSE (Copyright Polina Lemenkova).
