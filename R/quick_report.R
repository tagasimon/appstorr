#' "Quick Report"
#'
#' This is a function named 'quick_report' will run a report on the data
#'
#' @param appname "A string name for the name e.g safeboda"
#'
#' @author "My Name is Simon Kazooba"
#'
#' @importFrom dplyr select
#'
#' @return "This function returns a quick report of ratings for an \code{App}"
#' @export
#'
#' @examples
#' quick_report("safeboda")
#'
#' @note Experimental


quick_report <- function(appname){
        # if(!is.numeric(x)){
        #         stop("please pass a name of an app e.g safeboda")
        # }
        if(is.null(appname)){
                stop("Please pass a name of an app")
        }
        if(appname == "safeboda"){
                sb <- system.file("rmd", "quick_report_safeboda.Rmd", package = "appstorr")
                rmarkdown::render(sb)
        }

        if(appname == "xente"){
                system.file("rmd", "quick_report_xente.Rmd", package = "appstorr")
        }
}
