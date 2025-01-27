```r
# This R code attempts to use a non-existent column name.
df <- data.frame(a = 1:5, b = 6:10)
result <- df$c + 1
```