# rnorm = generates random variables in a normal distribution with a given mean and standard deviation

# dnorm = evaluates normal probability density at the given point

# pnorm = evaluates cumulative distribution function for a normal distribution

# rpois = generates random variables in poisson's distribution at given rate


rnorm(10,2,2)
# [1] 1.8676671 0.3419517 1.0264271 2.5065496 1.2020244
# [6] 3.8977526 3.9686014 1.7153239 3.5746654 1.6779565y

# this generates 10 numbers in a normal distrubution with mean 2 and sd 2

# if we keep running rnorm(10) , we will get different set of numbers each time.
# in order to ensure reproducibility, we use set.seed

set.seed(1)
rnorm(5)
rnorm(5)
# [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
# [1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884

set.seed(1)
rnorm(5)
rnorm(5)
# [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
# [1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884

# if set.seed was not set to 1, we wouldve gotten diff numbers each cycle
# by setting it 1, printing 2 sets of random numbers and again setting it to 1,
# we tell R to start agin from position 1

random <- rnorm(5)
prob_dens <- dnorm(random)
# [1] 0.1272401 0.3697503 0.3289306 0.0343420 0.2118931
prob_func <- pnorm(random)
# [1] 0.93470523 0.65167376 0.26722067 0.01339034 0.86969085