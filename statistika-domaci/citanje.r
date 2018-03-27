readData <- function(pathToFile) {
	library('xlsx')
	data <- read.xlsx(pathToFile, sheetIndex = 1)
	return(data)
}
