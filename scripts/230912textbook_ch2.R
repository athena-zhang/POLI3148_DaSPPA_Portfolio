2+2
log(100)
log
?log
log(100,base=10)
ex_obj <- c(34, 12, 58, 70, 73, 96)
ex_obj
ex_obj[5]
ex_obj_val5 <- ex_obj[5]
ex_obj_val5
ex_obj[c(1,5,6)]
ex_obj[2:6]
ex_obj[ex_obj>2]
ex_obj[ex_obj>35]
ex_obj>35
ex_obj[c(FALSE, FALSE,  TRUE,  TRUE,  TRUE,  TRUE)]
ex_obj[c(TRUE, TRUE,  FALSE,  FALSE,  FALSE,  FALSE)]
ex_obj[ex_obj >= 35]
ex_obj[ex_obj >= 34]
ex_obj[ex_obj < 34]
ex_obj[ex_obj <= 34]
ex_obj[ex_obj == 34]
ex_obj[ex_obj != 34]
ex_obj[ex_obj == 35]
ex_obj[ex_obj < 72 & ex_obj > 15]
ex_obj[ex_obj < 50 | ex_obj > 75]
ex_obj[3] <- 60
ex_obj
ex_obj[c(4,5)] <- 82
ex_obj
ex_obj[4,5]
ex_obj[ex_obj != 82] <- 40
ex_obj
ex_obj_sort <- sort(ex_obj)
ex_obj_sort
ex_obj_sort2 <- sort(ex_obj, decreasing = TRUE)
ex_obj_sort2
ex_obj_sort3 <- rev(sort(ex_obj))
ex_obj_sort3
ex_vec <- c(4, 8, 12, 3, 9, 32)
ex_vec * 3
ex_vec2 <- c(4, 10, 13, 17, 8)
ex_vec + ex_vec2
ex_vec2 <- c(4, 10, 13, 17, 8, 7)
ex_vec + ex_vec2
ex_vec * ex_vec2
ex_vec3 <- c(3, 4)
ex_vec2 + ex_vec3
?mean
rating <- c(1, 5, 9, 7, NA, 2, 8, 3, NA, 6)
rating
mean_rating <- mean(rating)
mean_rating
mean_rating <- mean(rating, na.rm =)
mean_rating
mean_rating <- mean(rating, na.rm = FALSE)
mean_rating
mean_rating <- mean(rating, na.rm = TRUE)
mean_rating
example("sd")
save(ex_vec, file = "230913ex_vec.RData")
save.image(file = "230913objects.RData")
