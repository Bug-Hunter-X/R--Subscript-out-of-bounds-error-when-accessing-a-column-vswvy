# R Bug: Non-Existent Column Access

This repository demonstrates a common yet easily overlooked error in R: attempting to access a column in a data frame that doesn't exist.  The bug is subtle because R doesn't always throw an immediate error, instead it sometimes returns `NA` values which can lead to harder to debug downstream issues. 

## Bug Description
The bug occurs when referencing a column name that isn't present in the data frame. This can happen due to typos, changes in data structure, or incorrect assumptions about data column names.  While R usually throws an error, it is easily missed in larger code bases and can lead to incorrect results.

## Solution
The solution involves robust error handling and checking for the existence of columns before access. The updated code includes explicit checks using `exists()` to ensure the columns exist before performing calculations.