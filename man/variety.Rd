% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/variety.r
\name{variety}
\alias{variety}
\title{Compute a Variety}
\usage{
variety(mpolyList, varOrder, ...)
}
\arguments{
\item{mpolyList}{Bertini code as either a character string or
function; see examples}

\item{varOrder}{variable order (see examples)}

\item{...}{stuff to pass to bertini}
}
\value{
an object of class bertini
}
\description{
The variety of a collection of multivariate polynomials is the
collection of points at which those polynomials are
(simultaneously) equal to 0.  \code{variety} uses Bertini to find
this set.
}
\examples{
\dontrun{


polys <- mp(c(
  "x^2 - y^2 - z^2 - .5", 
  "x^2 + y^2 + z^2 - 9", 
  ".25 x^2 + .25 y^2 - z^2"
))
variety(polys)

# algebraic solution :
c(sqrt(19)/2, 7/(2*sqrt(5)), 3/sqrt(5)) # +/- each ordinate



# character vectors can be taken in; they're passed to mp
variety(c("y - x^2", "y - x - 2"))



# an example of how varieties are invariant to the 
# the generators of the ideal
variety(c("2 x^2 + 3 y^2 - 11", "x^2 - y^2 - 3"))

# the following takes a few seconds to initialize, feel free to them
# gb <- grobner(mp(c("2 x^2 + 3 y^2 - 11", "x^2 - y^2 - 3")))
# variety(gb)

m2("
R = QQ[x,y]
gens gb ideal(2*x^2 + 3*y^2 - 11, x^2 - y^2 - 3)
")
variety(c("y^2 - 1", "x^2 - 4"))
variety(c("x^2 - 4", "y^2 - 1"))



# variable order is by default equal to vars(mpolyList)
# (this finds the zeros of y = x^2 - 1)
variety(c("y", "y - x^2 + 1")) # y, x
vars(mp(c("y", "y - x^2 + 1")))
variety(c("y", "y - x^2 + 1"), c("x", "y")) # x, y



# complex solutions
variety("x^2 + 1")
variety(c("x^2 + 1 + y", "y"))


# multiplicities
variety("x^2")
variety(c("2 x^2 + 1 + y", "y + 1"))
variety(c("x^3 - x^2 y", "y + 2"))


#
p <- mp(c("2 x  -  2  -  3 x^2 l  -  2 x l", 
  "2 y  -  2  +  2 l y", 
  "y^2  -  x^3  -  x^2"))
variety(p)

}

}

