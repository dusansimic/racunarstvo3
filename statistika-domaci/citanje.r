readData <- function() {
	library('xlsx')
	data <- read.xlsx('path to file')
	return(data)
}
