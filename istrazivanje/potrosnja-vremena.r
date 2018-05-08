showPotrosnjaVremena <- function () {
	koef <- linearnaRegresija(1:length(data$'potrosnjaVremena'), data$'potrosnjaVremena')
	png(file = 'potrosnja-vremena.png')
	plot(x = 1:length(data$'potrosnjaVremena'), y = data$'potrosnjaVremena', xlab = 'Broj uzorka', ylab = 'Vreme', col = 'red', pch = 16, main = 'Potrosnja vremena na drustvenim mrezama')
	lm_data <- lm(data$'potrosnjaVremena' ~ seq(1, length(data$'potrosnjaVremena')))
	abline(coef(lm_data), lwd=2, col='darkgreen')
	dev.off()
}
