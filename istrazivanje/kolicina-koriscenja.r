showKolicinaKoriscenja <- function () {
	labels <- c('Svaki dan', '4-7 puta nedeljno', '1-3 puta nedeljno', '1-3 puta u dve nedelje', 'Par puta mesecno')
	count <- c()
	for (i in 1:5) {
		currCount <- 0
		for (j in 1:length(data$'kolicinaKoriscenja')) {
			if (data$'kolicinaKoriscenja'[j] == labels[i]) {
				currCount = currCount + 1
			}
		}
		count = c(count, currCount)
	}

	pieprecent <- round(100*count/sum(count), 1)

	png(file = 'kolicina-koriscenja.png')

	pie(count, labels = pieprecent, col = rainbow(length(count)))
	legend('topright', labels, cex = 0.8, fill = rainbow(length(count)))

	dev.off()
}
