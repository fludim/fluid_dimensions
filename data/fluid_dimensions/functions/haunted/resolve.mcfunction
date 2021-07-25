# From: replace

# Probability Tree

##                               P:0.4       +----------+
##                         +---------------->+   Iron   |  =  0.4
##                         |                 +----------+
##                         |
##   +----------+          |
##   | Skeleton +----------+
##   +----------+          |               0.6r    +----------+
##                         |           +---------->+  Golden  |  =  0.4
##                         |           |           +----------+
##                         |           |
##                         |    0.6    |
##                         +-----------+
##                                     |
##                                     |
##                                     |  P:0.3r   +----------+
##                                     +---------->+ Netherite|  =  0.2
##                                                 +----------+


function fluid_dimensions:haunted/iron

#smh they have to run in series
