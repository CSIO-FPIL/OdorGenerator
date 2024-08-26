# Odor Analysis
-------------------------------------------------------------------------------------------------------------------------------------------------------
This repo contains the code for molecular analysis of possible odorants for OR51-like receptors. 
Data for MD Simulations can be found here : https://zenodo.org/records/13376823

1) We obtained a list of 62 known odorants to 3 OR51-like receptors, namely OR51E1, OR51E2, and OR51D1.
2) Using computational methods, it can be predicted if any of these molecules would have an affinity to other OR51-like receptors, 
   such as OR51G2 in this case. 
3) The original dataset was compared with a dataset of about 250 known odorants, their Molecular fingerprints are calculated,
   and Molecular descriptors have been calculated as well, we filtered out most similar receptors to the original dataset of 62 molecules, and 
   then performed PCA Analysis and KNN on the dataset.
4) AIC (Akaike Information Criterion) and BIC( Bayesian Information Criterion) measures were
   taken to select the best nClusters and the centroids of the clusters.
5) Finally, we take 6 most relevant descriptors, according to ADMET properties of drugs and odorants, and plot them against each other for a Co-relational Analysis.

