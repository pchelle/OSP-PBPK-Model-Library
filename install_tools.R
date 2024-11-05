#' @title install_tools.R
#' @description
#' This script installs the necessary tools for Automated Evaluation Reports and Projects
#' @param tools.csv csv file describing the versions of software tools used to generate the reports
#' @author [Open Systems Pharmacology](https://github.com/Open-Systems-Pharmacology)

#' @description Install CRAN R packages
install.packages(c("dplyr", "purrr", "covr", "readr", "tidyr", "webshot", "spelling", "readxl", "data.table", "gridtext", "ggtext", "tidyselect", "testthat", "rmarkdown", "rsvg", "svglite", "cowplot"), repos = "http://cran.us.r-project.org", type = "win.binary")

toolsData <- read.csv("tools.csv", stringsAsFactors = FALSE, colClasses = "character")

#' @title getToolPath
getToolPath <- function(toolName) {
  toolVersion <- toolsData$Version[toolsData$Tool %in% toolName]
  toolPath <- switch(toolName,
    "OSP Suite" = paste0(
      "https://github.com/Open-Systems-Pharmacology/OSPSuite-R/releases/download/v",
      toolVersion, "/ospsuite_", toolVersion, ".zip"
    ),
    "Qualification Runner" = paste0(
      "https://github.com/Open-Systems-Pharmacology/QualificationRunner/releases/download/v",
      toolVersion, "/qualificationrunner-portable-setup_", toolVersion, ".zip"
    ),
    "Reporting Engine" = paste0(
      "https://github.com/Open-Systems-Pharmacology/OSPSuite.ReportingEngine/releases/download/v",
      toolVersion, "/ospsuite.reportingengine_", toolVersion, ".zip"
    ),
    "PK Sim" = paste0(
      "https://github.com/Open-Systems-Pharmacology/PK-Sim/releases/download/v",
      toolVersion, "/pk-sim-portable-setup.zip"
    )
  )
  return(toolPath)
}

#' @description Install CRAN R packages from binaries
#' TODO: this may be changed later on because newer versions of OSPSuite may rely on `{remotes}` package directly
download.file("https://github.com/Open-Systems-Pharmacology/rSharp/releases/download/v1.0.0/rSharp-v1.0.0-Windows-r_4.4.0.zip", destfile = "rsharp.zip", mode = "wb")
download.file("https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/ospsuite-rutils/artifacts/ospsuite.utils.zip?pr=false", destfile = "ospsuite.utils.zip", mode = "wb")
download.file("https://ci.appveyor.com/api/projects/open-systems-pharmacology-ci/tlf-library/artifacts/tlf.zip?pr=false", destfile = "tlf.zip", mode = "wb")
download.file(getToolPath("OSP Suite"), destfile = "ospsuite.zip", mode = "wb")
download.file(getToolPath("Reporting Engine"), destfile = "ospsuite.reportingengine.zip", mode = "wb")
unzip("rsharp.zip")
rSharp_archive <- list.files(pattern = "rSharp.*\\.zip")
install.packages(rSharp_archive, repos = NULL, type = "binary")
install.packages("ospsuite.utils.zip", repos = NULL, type = "binary")
install.packages("tlf.zip", repos = NULL, type = "binary")
install.packages("ospsuite.zip", repos = NULL, type = "binary")
install.packages("ospsuite.reportingengine.zip", repos = NULL, type = "binary")
unlink("rsharp.zip")
unlink("ospsuite-utils.zip")
unlink("tlf.zip")
unlink("ospsuite.zip")
unlink("ospsuite.reportingengine.zip")

#' @description Setup PK-Sim portable and Qualification Runner released versions
download.file(getToolPath("Qualification Runner"), destfile = "qualificationrunner.zip")
unzip("qualificationrunner.zip", exdir = "QualificationRunner")
unlink("qualificationrunner.zip")
file.rename(from = list.files("QualificationRunner", full.names = TRUE), to = "QualificationRunner/QualificationRunner")

download.file(getToolPath("PK Sim"), destfile = "pk-sim.zip")
unzip("pk-sim.zip", exdir = "PK-Sim")
unlink("pk-sim.zip")
file.rename(from = list.files("PK-Sim", full.names = TRUE), to = "PK-Sim/PK-Sim")
