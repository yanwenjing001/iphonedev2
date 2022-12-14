% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{interact_threshold}
\alias{interact_threshold}
\title{找出基因表达值高于某阈值的细胞互作}
\usage{
interact_threshold(
  mtx_lr,
  cell.named.types,
  LR,
  sender_celltypes,
  receiver_celltypes,
  threshold
)
}
\arguments{
\item{mtx_lr}{各细胞类型的基因表达值}

\item{cell.named.types}{由细胞类型组成的向量，向量名为细胞名}

\item{LR}{先验的配体受体对}

\item{sender_celltypes}{character,发送ligand的细胞类型}

\item{receiver_celltypes}{character,发送receptor的细胞类型}

\item{threshold}{a number,基因表达值应高于的阈值}
}
\value{
interact_threshold 基因表达值高于某阈值的细胞互作
}
\description{
sender_celltypes和receiver_celltypes的基因表达值均高于设定阈值的细胞互作
}
\examples{
mean_lr = matrix(abs(rnorm(60)), 20, 3)
colnames(mean_lr) = c("Bcell","CAF","Tcell")
rownames(mean_lr) = paste("Gene", 1:20, sep = "")
LR = data.frame(ligand=paste("Gene", 1:10, sep = ""),receptor=paste("Gene", 11:20, sep = ""))
sender_celltypes = c("Bcell","Tcell")
receiver_celltypes = c("CAF","Tcell")
threshold = 0.2
interact_threshold(mean_lr,LR,threshold,sender_celltypes,receiver_celltypes)

}
