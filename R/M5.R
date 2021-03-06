#' M5 Competition data
#'
#' The time series from the M5 competition. 
#' Calendar information can be seen in \code{\link{calendar}}.
#'
#' @rdname M5
#' 
#' @docType data
#' 
#' @usage data(M5)
#' 
#' @format M5 is a list of 42840 series, 
#' including 30490 bottom-level time series and 12350 aggregated time series.
#' 
#' 1. Each series of bottom-level within \code{M5} is an object with the following structure:
#' \describe{
#'   \item{id}{The id of the product of the store. 
#'   For example "HOBBIES_1_001_CA_1" denotes the product "HOBBIES_1_001" in the store "CA_1".}
#'   \item{level}{The level id of the series. The M5 dataset consists of 12 levels.}
#'   \item{item.id}{The id of the product.
#'   The dataset involves the unit sales of 3049 products.}
#'   \item{dept.id}{The id of the department the product belongs to.
#'   The products are classified to 7 product departments.}
#'   \item{cat.id}{The id of the category the product belongs to.
#'   Possible values are "HOBBIES", "FOODS", & "HOUSEHOLD".}
#'   \item{store.id}{The id of the store where the product is sold.
#'   The products are sold across 10 stores.}
#'   \item{state.id}{The State where the store is located.
#'   Possible values are "CA", "TX", & "WI".}
#'   \item{n}{The number of observations in the training time series.}
#'   \item{h}{The number of required forecasts.}
#'   \item{x}{An integer vector specifying the number of units sold at every day, 
#'   starting from 2011-01-29 (the training data).}
#'   \item{x.price}{A daily price vector of the products for the given store in the training periods (from 2011-01-29). 
#'   \code{NA} means no price provided.}
#'   \item{xx.price}{A daily price vector of the products for the given store in the validation periods (from 2016-04-25).
#'   \code{NA} means no price provided.}
#'   \item{xxx.price}{A daily price vector of the products for the given store in the testing periods (from 2016-05-23).
#'   \code{NA} means no price provided.}
#' }
#' 
#' 2. Each series of aggregated level within \code{M5} does not include \code{id} and price elements. 
#' \code{item.id}, \code{dept.id}, \code{cat.id}, \code{store.id}, and \code{state.id} are included 
#' if the aggregate series contains these information. Besides, Each series of aggregated level contains 
#' the following element:
#' \describe{
#'   \item{agg.by}{A named character vector. 
#'   It reflects what the data is aggregated on.}
#' }
#'
#' @note The training data ranges from 2011-01-29 to 2016-04-24. 
#' Both validation and test datasets contain 28-day sales data. 
#' The prices are constant at weekly basis. Besides, the \code{level} 
#' information is introduced in 
#' \href{https://mk0mcompetitiont8ake.kinstacdn.com/wp-content/uploads/2020/02/M5-Competitors-Guide_Final-1.pdf}{M5 Competitors’ Guide}.
#' 
#' @keywords datasets
#'
#' @references
#' \href{https://mofc.unic.ac.cy/m5-competition/}{M5 Competition Web}
#' \href{https://mk0mcompetitiont8ake.kinstacdn.com/wp-content/uploads/2020/02/M5-Competitors-Guide_Final-1.pdf}{M5 Competitors’ Guide}  
#' 
#' @source \href{https://www.kaggle.com/c/m5-forecasting-accuracy}{M5 Competition Dataset}
#'
#' @examples
#' data(M5)
#' names(M5[[1]])
#' #extract bottom series
#' M5_bottom <- Filter(function(l) l$level == 12, M5)
#' #extract level 9 series
#' M5_l9 <- Filter(function(l) l$level == 9, M5)
"M5"