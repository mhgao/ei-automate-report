# ei-automate-report

A script for generating simple reports on EI & ER analysis, from simple user inputs. Written for Metric Geometry and Gerrymandering Group.

Uses the ei.MD.bayes function in the eiPack package to achieve Ecological Inference in 2x2 tables.

Can be used in conjunction with shapefiles from mggg-states to show voting patterns within a certain demographic (or coalition of multiple demographics).

Sourcing EI_automate.R runs a loop over the EI_parameterized.Rmd and generates multiples reports (one for each election input).


## Instructions

Open EI_automate.R in R studio. Fill out the user inputs at the top of the file. Source the file, resulting in reports in the same directory.
