#' Xente Google Play Store Ratings
#'
#' A dataset containing google play store ratings
#'
#' @format A data frame of 6418 rows and 12 columns
#' \describe{
#'  \item{reviewId}{a Unique hashed value for each review}
#'  \item{userName}{Character values for a reviewer}
#'  \item{userImage}{A link to user Profile Image on Google}
#'  \item{content}{Review text sent by a reviewer}
#'  \item{score}{Numeric Values of of stars by the reviewer with Levels 1, 2, 3, 4, 5}
#'  \item{thumbsUpCount}{Numeric Value showing the thumbs up count for each review}
#'  \item{reviewCreatedVersion}{Version number of the App}
#'  \item{at}{Time and Date for the submission of the review}
#'  \item{replyContent}{Reply text to the review}
#'  \item{repliedAt}{Time and Date of the Reply}
#'  \item{sortOrder}{Character Values of the sort order with Levels most_relevant, newest}
#'  \item{appId}{A unique app Identity on the store}
#' }
#' @source Google Play Store \url{https://play.google.com/}
"df_nssf"
