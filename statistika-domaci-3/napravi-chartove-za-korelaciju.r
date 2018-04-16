napraviChartZaKorel <- function (data) {
	niz <- c('X1', 'X2', 'X3', 'X4', 'X5')

	for (trn1 in niz) {
		for (trn2 in niz) {
			if (trn1 < trn2) {
				svg(paste('korelacija-', trn1, '-', trn2, '.svg', sep = ''))
				plot(data[[trn2]] ~ data[[trn1]], xlab = 'X', ylab = 'Y', col = 'blueviolet', pch = 16, main = paste('Linearna regresija ', trn1, ' & ', trn2, sep = ''))
				dev.off()
			}
		}
	}
}
