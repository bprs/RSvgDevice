#' A SVG Graphics Driver
#'
#' This function produces graphics suitable the current w3 svg XML standard.
#' It currently does not have any font metric information, so the use of
#' \code{\link{plotmath}} is not supported. The driver output is currently NOT
#' specifying a DOCTYPE DTD
#'
#' @param file the file where output will appear.
#' @param height,width Height and width in inches.
#' @param bg Default background color for the plot (defaults to "white").
#' @param pointsize default point size.
#' @param standalone Produce a stand alone svg file? If \code{FALSE}, omits
#'   xml header and default namespace.
#' @references \emph{W3C Scalable Vector Graphics (SVG)}:
#'   \url{http://www.w3.org/Graphics/SVG/Overview.htm8}
#' @author This driver was written by T Jake Luciani
#'   \email{jakeluciani@@yahoo.com} 2012: updated by Matthieu Decorde
#'   \email{matthieu.decorde@@ens-lyon.fr}
#' @seealso \code{\link{pictex}}, \code{\link{postscript}}, \code{\link{Devices}}
#' @examples
#' devSVG()
#' plot(1:11,(-5:5)^2, type='b', main="Simple Example")
#' dev.off()
#' @keywords device
#' @useDynLib RSvgDevice
#' @importFrom Rcpp sourceCpp
#' @importFrom gdtools raster_view
#' @export
devSVG <- function(file = "Rplots.svg", width = 10, height = 8, bg = "white",
                   pointsize = 12, standalone = TRUE) {

  invisible(devSVG_(file, bg, width, height, pointsize, standalone))
}
