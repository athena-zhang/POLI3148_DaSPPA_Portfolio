my_mat <- matrix(1:16, nrow = 4, byrow = TRUE) 
my_mat
my_array <- array(1:16, dim = c(2, 4, 2))
my_array
my_array
rownames(my_mat) <- c("A", "B", "C", "D")
colnames(my_mat) <- c("a", "b", "c", "d")
my_mat
my_mat_t <- t(my_mat)
my_mat_t
?t
my_mat_diag <- diag(my_mat)
my_mat_diag
list_1 <- list(c("black", "yellow", "orange"),c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE),matrix(1:6, nrow = 3))
list_1
list_2 <- list(colours = c("black", "yellow", "orange"),
               evaluation = c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE),
               time = matrix(1:6, nrow = 3))
list_2
names(list_1) <- c("colours", "evaluation", "time")
list_1
p.height <- c(180, 155, 160, 167, 181)
p.weight <- c(65, 50, 52, 58, 70)
p.names <- c("Joanna", "Charlotte", "Helen", "Karen", "Amy")
dataf <- data.frame(height = p.height, weight = p.weight, names = p.names)
dataf
dim(dataf)
?str
str(dataf)
dataf <- data.frame(height = p.height, weight = p.weight, names = p.names, 
                    stringsAsFactors = TRUE)
dataf
str(dataf)
?Factor
??factor
?factor
