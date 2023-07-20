########################################################################################################
## ISHE 2023 - Using phylogenetic comparative methods to study evolution of human behavior (workshop) ##


setwd("C:/R_folder/ISHE_workshop") # set working directory


## load the packages
library(rethinking)
library(ape)


data <- read.csv("data_ISHE_2023.csv",header=TRUE) # read the data
str(data) # see the data
soc <- data$society # society
MP <- data$marriage_patterns # marriage patterns
PI <- data$political_integration # political integration
TR <- data$trade # trade

tree <- read.tree("tree_ISHE_2023.tre") # read the tree
D <- cophenetic(tree) # convert the tree into distance matrix
D <- D[soc,soc]/max(D) # align the matrix with the data and normalize the distances to scale from 0 to 1
N <- length(soc) # number of observations
society <- 1:N # index societies

## put the variables in a list
d <- list(TR=TR,
          MP=MP,
          PI=PI,
          D=D,
          N=N,
          society=society
)


## fit the model for the effect of marriage patterns on trade
m_list <- alist(
  # model for trade
  TR ~ ordered_logistic(phi,alpha),
  logit(phi) <- bMP*MP,
  
  # priors
  bMP ~ normal(0,0.5),
  alpha ~ normal(0,1.5)
)

tr1 <- ulam(m_list,data=d,chains=4,cores=4,iter=500) # fit the model with ulam

precis(tr1,2,pars=c("alpha","bMP")) # get the model parameters
tr1_post <- extract.samples(tr1) # get posterior samples

# plot the posterior distribution of the estimated coefficient
plot(density(tr1_post$bMP),
     xlim=c(-1.5,1.5),ylim=c(0,1.5),
     xlab="posterior of bMP",ylab="",main="",
     cex.lab=2.5,cex.axis=2.5,lwd=15,
     col=col.alpha("#440154FF",0.5)) 
abline(v=0,lty=2,lwd=2,col="gray50") # draw a vertical line at zero


## re-fit the model but condition on political integration
m_list <- alist(
  # model for trade
  TR ~ ordered_logistic(phi,alpha),
  logit(phi) <- bMP*MP + bPI*PI,
  
  # priors
  bMP ~ normal(0,0.5),
  bPI ~ normal(0,0.5),
  alpha ~ normal(0,1.5)
)

tr2 <- ulam(m_list,data=d,chains=4,cores=4,iter=500)

precis(tr2,2,pars=c("alpha","bMP")) 
tr2_post <- extract.samples(tr2) 
lines(density(tr2_post$bMP),lwd=15,col=col.alpha("#009C95",0.5)) # overlay the posterior on the plot


## finally, re-fit the model but condition also on phylogeny
m_list <- alist(
  # model for trade
  TR ~ ordered_logistic(phi,alpha),
  logit(phi) <- bMP*MP + bPI*PI + phy[society],
  
  # model for the phylogenetic covariance
  vector[society]:phy ~ multi_normal("rep_vector(0,N)",S),
  matrix[N,N]:S <- cov_GPL1(D,eta,rho,0.01),
  
  # priors
  bMP ~ normal(0,0.5),
  bPI ~ normal(0,0.5),
  alpha ~ normal(0,1.5),
  eta ~ exponential(0.5),
  rho ~ exponential(0.5)
)

tr3 <- ulam(m_list,data=d,chains=4,cores=4,iter=500) 

precis(tr3,2,pars=c("alpha","bMP"))
tr3_post <- extract.samples(tr3) 
lines(density(tr3_post$bMP),lwd=15,col=col.alpha("yellow2",0.5)) 

# add legend
legend(0.75,1.5,
       legend=c("MP","MP + PI","MP + PI + phylo"),
       col=c("#440154FF","#009C95","yellow2"),
       lwd=15,cex=2,box.col=NA)


########################################################################################################