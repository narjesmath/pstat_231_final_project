# Classification of Vessel Geartype

Machine learning class final project

![](<images/GFW-fishingmap-6\_10\_2022, 10\_52\_12 PM.png>)

Fig 1.Map of Apparent Fishing Effort _“Copyright \[2022], Global Fishing Watch, Inc., www.globalfishingwatch.org.”_

## Table of Contents

1. [Overview](./#Overview)
2. [Models used](./#Modelsused)
3. [Folders](./#Folders)
4. [References](./#References)

## Overview

This dataset contains the [Global Fishing Watch](https://globalfishingwatch.org/datasets-and-code/) AIS-based fishing effort and vessel presence datasets .Data is based on fishing detections of >114,000 unique AIS devices on fishing vessels, of which \~70,000 are active each year. Fishing vessels are identified via a neural network classifier, vessel registry databases, and manual review by GFW and regional experts. Data are binned into grid cells 0.01 (or 0.1) degrees on a side and measured in units of hours. The time is calculated by assigning an amount of time to each AIS detection (which is the time to the previous position), and then summing all positions in each grid cell.

Using Global Fishing Watch fishing effort vessel data, I use several machine learning classification models to predict geartype of fishing vessels. From the 16 available classes of geartype my outcome variable will be based on these five classes:

"set\_longlines", "set\_gillnets", "tuna\_purse\_seines", "fishing", "other\_purse\_seines"," drifting\_longlines"

## Models used

![](images/3d.png)

Fig2.Visual representation of three principal components from the vessel data

1. PCA
2. Lasso and Elastic-Net Regularized Generalized Linear
3. Decision Tree
4. Random Forest
5. Boosted Tree
6. KNN
7. Neural Network

## Folders

1. data
2. images
3. metadata (i.e. contains codebook)
4. model\_results

## References

“Copyright \[2022], Global Fishing Watch, Inc., www.globalfishingwatch.org.”

_“Global Fishing Watch has made every attempt to ensure the completeness, accuracy and reliability of the information provided on this Site. However, due to the nature and inherent limitations in source materials for information provided, Global Fishing Watch qualifies all designations of vessel fishing activity, including synonyms of the term “fishing activity,” such as “fishing” or “fishing effort,” as “apparent,” rather than certain. And accordingly, the information is provided “as is” without warranty of any kind.”_

Clavelle, Tyler. “Working with Our Downloadable Public Data in R.” Global Fishing Watch, 29 May 2019, https://globalfishingwatch.org/data/working-with-our-downloadable-public-data-in-r/.

Flanders Marine Institute (2019). Maritime Boundaries Geodatabase: Maritime Boundaries and Exclusive Economic Zones (200NM), version 11. Available online at https://www.marineregions.org/. https://doi.org/10.14284/386
