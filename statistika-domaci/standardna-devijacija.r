standardnaDevijacija <- function(kol) {
	sr <- srednjaVr(kol)

	stdDev <- 0
	for (val in kol) {
		stdDev = stdDev + (val - sr) ^ 2
	}
	stdDev = sqrt((1 / length(kol)) * stdDev)

	return(stdDev)
}
