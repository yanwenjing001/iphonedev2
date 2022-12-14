% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sig.R
\name{sig}
\alias{sig}
\title{利用permutation计算配体受体对的pval,找出有显著意义的配体受体对}
\usage{
sig(object, interaction, pval = 0.05, method = "product")
}
\arguments{
\item{object}{Seurat object}

\item{interaction}{data.frame,必须包含ligand,receptor,from,to}

\item{pval}{number,默认值为0.05}

\item{method}{"product" or "sum"}
}
\value{
list,pvalue,有显著意义的配体受体对;
significant,data.frame,行是ligand基因名,列是receptor基因名;
receptor_logfc,receptor基因在特定细胞类型中的logfc值;
ligand_logfc,ligand基因在特定细胞类型中的logfc值
}
\description{
利用permutation计算配体受体对的pval,找出有显著意义的配体受体对
}
\examples{
load(url("https://figshare.com/ndownloader/files/37663929"))
interaction <- data.frame(ligand = c("MDK","LAMB3","ADM"),
                          receptor = c("NCL","CD44","CALCRL"),
                          from = "primary",to = "Macrophage")
sig(object=hnscc_primary,interaction,pval=0.05)

}
