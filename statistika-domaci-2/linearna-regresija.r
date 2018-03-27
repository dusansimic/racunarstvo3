linearnaRegresija <- function(x, y) {
	x_ <- srednjaVr(x)
	y_ <- srednjaVr(y)

	sum1 <- 0
	sum2 <- 0
	for (i in 1:length(x)) {
		sum1 = sum1 + (x[i] - x_) * (y[i] - y_)
		sum2 = sum2 + (x[i] - x_) ^ 2
	}
	beta <- sum1 / sum2
	alpha <- y_ - beta * x_
	print(alpha)
	print(beta)
}
