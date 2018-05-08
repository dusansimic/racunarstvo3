showSvrhaKoriscenja <- function () {
	labels <- c('Jedini vid komunikacije', 'Osnovni vid komunikacije', 'Zanimljivo je zbog fičera društvene mreže', 'Osnovni vid druženja', 'Jedini vid druženja')
	count <- c()
	for (i in 1:5) {
		currCount <- 0
		for (j in 1:length(data$'svrhaKoriscenja')) {
			if (data$'svrhaKoriscenja'[j] == labels[i]) {
				currCount = currCount + 1
			}
		}
		count = c(count, currCount)
	}

	pieprecent <- round(100*count/sum(count), 1)

	png(file = 'svrha-koriscenja.png')

	pie(count, labels = pieprecent, col = rainbow(length(count)))
	legend('topright', labels, cex = 0.8, fill = rainbow(length(count)))

	dev.off()
}
