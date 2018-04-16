chartsForKlas <- function (data) {
	niz <- c('X1', 'X2', 'X3', 'X4', 'X5')
	labeleX <- c('1-20', '21-40', '41-60', '61-80', '81-100')

	for (trn1 in niz) {
		for (trn2 in niz) {
			if (trn1 < trn2) {
				svg(paste('klasifikacija-', trn1, '-', trn2, '.svg', sep = ''))
				newData <- klasifikacija(data[[trn1]], data[[trn2]])
				barplot(newData, names.arg = labeleX, xlab = 'Grupe', ylab = 'Srednje vrednosti', col = 'yellow', main = paste('Klasifikacija ', trn1, ' & ', trn2, sep = ''))
				lines(newData, type = 'o', col = 'blue')
				dev.off()
			}
		}
	}
}
