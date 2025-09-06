# SLFOC
Code for Strömbom et al. 2025. Effective resource allocation to combat invasions of the spotted lanternfly and similar pests. Mathematics XXXX.

INSTRUCTIONS

Download all three m-files and make sure they are accessible by MATLAB.

To re-create Figure 1 in the paper use the plotFig1.m function. The specific command plotFig1(0.1,0.15,0.35,0.5,10) will produce the four-panel figure. The curves are identical, only some formatting details will differ.

To regenerate the statistics for Random application of controls use the labRAND.m function. The specific command labRAND(1000000) will return the values specified under Result 5. This function calls the function aRAND.m which calculates the final growth rate for each randomized application of controls. Note that this can take some time depending on your system.

All code has been tested using MATLAB 2025a.
