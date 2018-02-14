srednjaVr <- function(kol) {
	sr <- 0
	for (val in kol) {
		sr = sr + val
	}
	sr = sr / length(kol)
	return(sr)
}
