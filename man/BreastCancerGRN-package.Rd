\name{BreastCancerGRN-package}
\alias{BreastCancerGRN-package}
\alias{breast}
\docType{package}
\title{
  The gene regulatory network for breast cancer from ductual carcinoma:
  Integrated regulatory landscape of cancer hallmarks
}
\description{
  The package contains a preprocessed breast cancer gene expression
  dataset and a gene regulatory networks (GRN) that was inferred using
  bc3net. The gene expression dataset is available in two versions. The
  first using gene symbols and the second version with entrez gene
  identifiers. The data of the BClymphomaGRN package is a supplementary of de Matos Simoes (2014).  
}
\details{
\tabular{ll}{
Package: \tab breast\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-10-11\cr
License: \tab What license is it under?\cr
}



}
\author{ Frank Emmert-Streib, Ricardo de Matos Simoes, Paul Mullan, Benjamin
Haibe-Kains and Matthias Dehmer
Maintainer: Ricardo de Matos Simoes <r.dematossimoes@qub.ac.uk>
}
\references{
  
 Frank Emmert-Streib, Ricardo de Matos Simoes, Paul Mullan, Benjamin
Haibe-Kains and Matthias Dehmer, The gene regulatory network for breast
cancer from ductual carcinoma: Integrated regulatory landscape of cancer
hallmarks, Frontiers in Genetics (2014) (accepted)


}

\keyword{ breast cancer, bc3net, microarray }
%\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}

\examples{

data(breastEN) # expression dataset using entrez gene identifiers

data(breastGS) # expression dataset using gene symbols

data(net.breast) ## inferred gene regulatory network

}
