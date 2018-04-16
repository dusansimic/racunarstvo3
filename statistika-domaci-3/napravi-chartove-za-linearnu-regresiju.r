eq <- function (x, k, n) {x*k+n}

napraviChartoveLinReg <- function (data) {
	niz <- c('X1', 'X2', 'X3', 'X4', 'X5')

	for (trn1 in niz) {
		for (trn2 in niz) {
			if (trn1 < trn2) {
				svg(paste('linearna-regresija-', trn1, '-', trn2, '.svg', sep = ''))
				plot(data[[trn2]] ~ data[[trn1]], xlab = 'X', ylab = 'Y', col = 'red', pch = 16, main = paste('Linearna regresija ', trn1, ' & ', trn2, sep = ''))
				lm_data <- lm(data[[trn2]] ~ data[[trn1]])
				#kn <- linearnaRegresija(data[[trn1]], data[[trn2]])
				#plot(eq(data[[trn1]], kn[1], kn[2]), type = 'o')
				abline(coef(lm_data), lwd=2, col='darkgreen')
				dev.off()
			}
		}
	}
}
