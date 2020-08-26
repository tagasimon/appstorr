#' "Quick Report"
#'
#' This is a function named 'quick_report' will run a report on the data
#'
#' @param appname "A string name for the name e.g safeboda"
#'
#' @author "My Name is Simon Kazooba"
#'
#' @importFrom utils browseURL
#' @import rmarkdown
#'
#' @return "This function returns a quick report of an \code{App}"
#' @export
#'
#' @examples
#' quick_report(df)
#'
#' @note Developing


quick_report <- function(data,
                         output_format = rmarkdown::html_document(toc = TRUE, toc_depth = 6, theme = "yeti"),
                         output_file = "report.html",
                         output_dir = getwd(),
                         # config = configure_report(),
                         report_title = "Text Analysis Report"
                         ){

        if(is.null(data)){  ## if appname if provided
                stop("Please pass in a dataframe of ratings")
        }

        if(!is.data.frame(data)){ ## if its a characeter or not
                stop("Please pass a dataframe of ratingss")
        }

        if(is.data.frame(data)){
                ## Get directory of report markdown template
                report_dir <- system.file("rmd/report.rmd", package = "appstorr")
                ## Render report into html
                suppressWarnings(rmarkdown::render(
                        input = report_dir,
                        output_format = output_format,
                        output_file = output_file,
                        output_dir = output_dir,
                        intermediates_dir = output_dir,
                        params = list(data = data,
                                      # report_config = config,
                                      set_title = report_title)
                ))
                ## Open report
                report_path <- path.expand(file.path(output_dir, output_file))
                browseURL(report_path)
        }


}
