setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
source("../../scripts/h2o-r-test-setup.R")



test.rdoc_download_all_logs.golden <- function() {

h2o.downloadAllLogs(dirname = sandbox(), filename = "h2o_logs.log")

}

doTest("R Doc Download Logs", test.rdoc_download_all_logs.golden)

