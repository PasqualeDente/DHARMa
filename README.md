# DHARMa - Residual Diagnostics for HierARchical Models

The 'DHARMa' package uses a simulation-based approach to create readily interpretable scaled (quantile) residuals for fitted generalized linear mixed models. Currently supported are generalized linear mixed models from 'lme4' (classes 'lmerMod', 'glmerMod'), generalized additive models ('gam' from 'mgcv'), 'glm' (including 'negbin' from 'MASS', but excluding quasi-distributions) and 'lm' model classes. Alternatively, externally created simulations, e.g. posterior predictive simulations from Bayesian software such as 'JAGS', 'STAN', or 'BUGS' can be processed as well.   The resulting residuals are standardized to values between 0 and 1 and can be interpreted as intuitively as residuals from a linear regression. The package also provides a number of plot and test functions for typical model misspecification problems, such as over/underdispersion, zero-inflation, and residual spatial and temporal autocorrelation.

## Getting DHARMa

### From CRAN 

DHARMa is on [CRAN](https://cran.r-project.org/web/packages/DHARMa/index.html). So, to install the latest CRAN release, just run 

```{r}
install.packages("DHARMa")
```

To get an overview about its functionality once the package is installed, run

```{r}
library(DHARMa)
?DHARMa
vignette("DHARMa", package="DHARMa")
```

to cite the package, run 

```{r}
citation("DHARMa")
```

### Development release 

If you want to install the current (development) version from this repository, run

```{r}
devtools::install_github(repo = "DHARMa", username = "florianhartig", subdir = "DHARMa", dependencies = T, build_vignettes = T)
```
Below the status of the automatic Travis CI tests on the master branch (if this doesn load see [here](https://travis-ci.org/florianhartig/DHARMa))

[![Build Status](https://travis-ci.org/florianhartig/DHARMa.svg?branch=master)](https://travis-ci.org/florianhartig/DHARMa)

### Older releases

To install a specific (older) release, decide for the version number that you want to install in [https://github.com/florianhartig/DHARMa/releases](https://github.com/florianhartig/DHARMa/releases) (version numbering corresponds to CRAN, but there may be smaller releases that were not pushed to CRAN) and run 

```{r}
devtools::install_github(repo = "DHARMa", username = "florianhartig", subdir = "DHARMa", ref = "v0.0.2.1", dependencies = T, build_vignettes = T)
```
with the appropriate version number. 
