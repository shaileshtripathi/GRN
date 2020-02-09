\name{net.breast}
\alias{net.breast}
\docType{data}
\title{
 igraph object of a breast cancer GRN inferred using bc3net
}
\description{
  An undirected weighted gene regulatory network inferred from a
  large-scale breast cancer expression dataset. The network
  comprises a total of 181,171 interactions for 19,738 genes.
}
\usage{data(net.breast)}

\format{
  The format is:
 IGRAPH UNW- 19738 180171 -- 
+ attr: name (v/c), weight (e/n)

}

\details{
The GRN was inferred using bc3net from the dataset data(breastEN).
The BC3Net (de Matos Simoes 2012) algorithm is a bagging approach for
C3Net (Altay 2010, Altay 2011). Briefly, BC3Net consists of 3
major steps. In the first step, a bootstrap ensemble of 100 data sets
is generated. For each data set in the ensemble a gene regulatory
network is inferred using C3Net. For the network inference, we use a
Pearson estimator for mutual information. We apply a multiple
testing correction on the inferred edges using Bonferroni. In step two,
the resulting ensemble of networks is aggregated into a weighted
network, where the weights describe the ensemble consensus rate for an
edge. In step three, we apply a binomial test whether or not an edge
should be included in the resulting network. We retain only edges for a
significance level of alpha = 0.05 that pass a Bonferroni multiple
testing correction.
}
\source{
  
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
  de Matos Simoes, R. and Emmert-Streib, F. (2012) Bagging statistical
  network inference from large-scale gene expression data. PLoS ONE 7 e33624.
 
}
\examples{

data(net.breast) # igraph bc3net GRN

# symmetric adjacency matrix
mat=as.matrix(get.adjacency(net.breast))


# symmetric weighted matrix
mat=as.matrix(get.adjacency(net.breast, attr="weight"))

# degree of top 10 hubgenes
sort(degree(net.breast), decreasing=TRUE)[1:10]

# data.frame of edges and weight vector
bc3.edges=get.edgelist(net.breast)

# edge weght of the bc3net GRN
# ensemble consenus rate (ecr)
weight=E(net.breast)$weight


# igraph to graphNEL format
bc3.graphNEL=igraph.to.graphNEL(net.breast)

}
\keyword{datasets}
