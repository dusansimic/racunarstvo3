showVremenaPocetkaKoriscenja <- function () {
	vremenaOtvaranja <- c('Pre godinu dana', 'Pre 2 godine', 'Pre 3 godine', 'Pre 4 godine', 'Pre 5 godina', 'Pre 6 godina', 'Pre 7 godina', 'Pre 8 godina', 'Pre 9 godina', 'Pre od 10 godina ili više')
	vremenaOtvaranjaLabele <- c('1', '2', '3', '4', '5', '6', '7', '8', '9', '10+')
	count <- c()
	for (i in 1:10) {
		currCount <- 0
		for (j in 1:length(data$'vremePocetkaKoriscenja')) {
			if (data$'vremePocetkaKoriscenja'[j] == vremenaOtvaranja[i]) {
				currCount = currCount + 1
			}
		}
		count = c(count, currCount)
	}

	png(file = 'vreme-pocetka-koriscenja.png')
	barplot(count, names.arg = vremenaOtvaranjaLabele, xlab = 'Vremena otvaranja naloga', ylab = 'Broj ljudi te godine', col = rainbow(length(count)))
	dev.off()
}
