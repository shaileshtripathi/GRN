\name{breastGS}
\alias{breastGS}
\docType{data}
\title{
Breast cancer pre-processed gene expression data set using gene symbols (GS).
}

\description{

The dataset is processed from a subset of the GEO NCBI repository accession
GSE2109 from the Expression Project for Oncology (expO)
(https://expo.intgen.org/geo/ ) maintained by the International Genomics
Consortium (IGC). For our study, we use gene expression data in CEL
format from breast cancer tissue samples consisting of a total of 351
Affymetrix colon cancer samples from the platform hgu133plus2.

}
\usage{data(breastGS)}
\format{
  The format is:
  num [1:19738, 1:351] 9.84 6.55 5.87 4.99 4.38 ...
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:19738] "DDR1" "RFC2" "HSPA6" "PAX8" ...
  ..$ : chr [1:351] "GSM38051.CEL" "GSM38054.CEL" "GSM38057.CEL" "GSM38059.CEL" ...

}
\details{

We normalize the microarray samples for the selected tissue types using
RMA and quantile normalization using log2 expression intensities for
each probe set. Because a gene can be represented by more than one probe
sets, we use the median expression value as summary statistic for
different probe sets. Entrez gene ID to Affymetrix probe set annotation
is obtained from the "hgu133plus2.db" R package. If a probe sets is
unmapped, we exclude it from our analysis. After these preprocessing steps, we have 19,738 genes and 351 samples we use for our analysis. The data set is provided matching to gene symbols and entrez identifiers (https://www.ncbi.nlm.nih.gov/gene/).

}

\source{  
  The raw expression dataset in CEL format is available in the ncbi GEO
  with accession GSE2109 (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE2109)   
}

\references{

 Frank Emmert-Streib, Ricardo de Matos Simoes, Paul Mullan, Benjamin
Haibe-Kains and Matthias Dehmer, The gene regulatory network for breast
cancer from ductual carcinoma: Integrated regulatory landscape of cancer
hallmarks, Frontiers in Genetics (2014) (accepted)

Carlson, M. (2013) org.Hs.eg.db: Genome wide annotation for Human. R package version 2.9.0.

}

\examples{
data(breastEN)
}

\keyword{microarray}
