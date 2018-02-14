korelacija <- function(xData, yData) {
	srX <- srednjaVr(xData)
	srY <- srednjaVr(yData)

	i <- 1
	sumaBrojilac <- 0
	sumaImenilacX <- 0
	sumaImenilacY <- 0
	while (i <= length(xData)) {
		sumaBrojilac = sumaBrojilac + (xData[i] - srVrX) * (yData[i] - srVrY)
		sumaImenilacX = sumaImenilacX + (xData[i] - srVrX) * (xData[i] - srVrX)
		sumaImenilacY = sumaImenilacY + (yData[i] - srVrY) * (yData[i] - srVrY)
		i = i + 1
	}
	r <- sumaBrojilac / sqrt(sumaImenilacX * sumaImenilacY)
	return (r)
}
