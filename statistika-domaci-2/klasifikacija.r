klasifikacija <- function(x, y) {
	data <- data.frame(X = x, Y = y)
	data = data[order(data$X),]

	sum <- 0
	srednje <- c()

	for (i in seq(1, 100, 20)) {
		srednje = c(srednje, srednjaVr(data$Y[i:i + 19]))
	}

	# if (srednje[1] < srednje[2] && srednje[2] < srednje[3] && srednje[3] < srednje[4] && srednje[4] < srednje[5]) {
	# 	return ("rastuca")
	# }
	# if (srednje[1] > srednje[2] && srednje[2] > srednje[3] && srednje[3] > srednje[4] && srednje[4] > srednje[5]) {
	# 	return ("opadajuca")
	# }

	# return ("neodredjena")

	return (srednje)
}
