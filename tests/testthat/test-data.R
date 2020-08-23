# context("data tests")
# options(tibble.print_min = 20)
# # It is expected that all data has been stored sorted in the same way as the source data.
# # For babynames: year, sex, and desc(n)
# # For applicants: year, sex
# # For lifetables: year, sex, x; note that sex is a factor, M is 1, F is 2
# # For births: year
#
# # convenience function for getting first and last 10 rows
# first_last <- function(x) {
#         n <- nrow(x)
#         if(n >= 20) {
#                 x[c(1:10, (n - 9):n),]
#         } else {
#                 return(x)
#         }
# }
#
# test_that("safeboda head and tail", {
#         expect_known_output(
#                 first_last(df_safeboda),
#                 "test-safeboda_first_last.txt",
#                 print = TRUE
#         )
# })
