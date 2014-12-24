\name{availableCategories}
\alias{availableCategories}
\title{
  Pre-defined ontology categories  


}
\description{
  Pre-defined ontology categories  


}
\usage{
availableCategories(job)
}
\arguments{
  \item{job}{job object which is returned by \code{\link{submitGreatJob}}}

}
\details{
  For human (hg19 and hg18):  

\describe{
  \item{GO}{"GO_Molecular_Function", "GO_Biological_Process", "GO_Cellular_Component"}
  \item{Phenotype_data_and_human_desease}{"Mouse_Phenotype", "Human_Phenotype", "Disease_Ontology", "MSigDB_Cancer_Neighborhood", "Placenta_Disorders"}
  \item{Pathway_Data}{"PANTHER_Pathway", "Pathway_Commons", "BioCyc_Pathway", "MSigDB_Pathway"}
  \item{Gene_Expression}{"MGI_Expression_Detected", "MSigDB_Perturbation"}
  \item{Regulatory_Motifs}{"Transcription_Factor_Targets", "MSigDB_Predicted_Promoter_Motifs", "MSigDB_miRNA_Motifs", "miRNA_Targets"}
  \item{Gene_Families"}{"InterPro", "TreeFam", "HGNC_Gene_Families"}
}
  For mouse (mm9):  

\describe{
  \item{GO}{"GO_Molecular_Function", "GO_Biological_Process", "GO_Cellular_Component"}
  \item{Phenotype_data}{"Mouse_Phenotype", "Human_Phenotype", "Disease_Ontology"}
  \item{Pathway_Data}{"PANTHER_Pathway", "Pathway_Commons", "BioCyc_Pathway", "MSigDB_Pathway"}
  \item{Gene_Expression}{"MGI_Expression_Detected", "MSigDB_Perturbation"}
  \item{Regulatory_Motifs}{"Transcription_Factor_Targets", "MSigDB_Predicted_Promoter_Motifs", "MSigDB_miRNA_Motifs", "miRNA_Targets"}
  \item{Gene_Families"}{"InterPro", "TreeFam"}
}
  For zebrafish (danRer7):  

\describe{
  \item{GO}{"GO_Molecular_Function", "GO_Biological_Process", "GO_Cellular_Component"}
  \item{Phenotype_data}{"Zebrafish_Phenotype"}
  \item{Pathway_Data}{"Wiki_Pathway"}
  \item{Gene_Expression}{"Zebrafish_Wildtype_Expression"}
  \item{Gene_Families"}{"InterPro", "TreeFam"}
}

}
\value{
  A vector 


}
\examples{
set.seed(123)
bed = circlize:::generateRandomBed(nr = 1000, nc = 0)
	
#job = submitGreatJob(bed)
load(paste0(system.file(package = "rGREAT"), "/extdata/job.RData"))

availableOntologies(job)
availableOntologies(job, category = "Pathway_Data")
}
