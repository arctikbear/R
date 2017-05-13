#6 edition (git)
# devel -02

df <- data.frame(x = 1:4, y = LETTERS[1:4], z = c(T, F),
                 row.names = c("Alpha", "Bravo",
                               "Charlie", "Delta"))


#2.2.5
#step 1
sub_attitude <- subset(attitude,learning >
                         sort(attitude$learning)
                       [length(attitude$learning) - 5],
                  c("complaints", "raises", "advance"))
#step 2
names(which.max(rowSums(subset(attitude,learning >
         sort(attitude$learning)
       [length(attitude$learning) - 5],
       c("complaints", "raises", "advance")))))

#other solution in 1 line
names(which.max(rowSums(attitude[order(
  -attitude$learning),][1:5,][c("complaints",
                                "raises","advance")])))
