readData <- function() {
	library('xlsx')
	data <- read.xlsx('path to file', sheetIndex = 1)
	return(data)
}
