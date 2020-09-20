#' Minimizando el error
#' 
#' @param n numero de oxcilaciones.
#' @param deltaT tiempo de respuesta (Error).
#'
#' @exports
#' 
#' @return Error minimo
#' 
DeltaTime <- function(deltaT, n) {
  deltaT / n
}

#' Formula para el calculo de la aceleracion de la gravedad
#' 
#'
#' @param l Longuitud de la cuerda.
#' @param p periodos P de péndulos simples .
#' @param n numero de oxcilaciones.
#' @param deltaT tiempo de respuesta (Error).
#' @param pi Valor de pi
#' 
#'
#' @return Gravedad.
#' 
#' @export
#'

Gravedad_cal <- function(l, p,n) {
  (4*(pi^2)) * (l)/((p)/n)^2
}


require(tibble)
#' Calculo de la aceleracion de la gravedad
#' 
#'
#' @param l Longuitud de la cuerda.
#' @param p periodos P de péndulos simples .
#' @param n numero de oxcilaciones.
#' @param deltaT tiempo de respuesta (Error).
#' @param pi Valor del pi
#' 
#'
#' @return Gravedad.
#' 
#' @export
#'

Densidad.as.tibble <- function(l, p, n) {
  tibble(L= l,
         P= p,
         N=n,
         Den= gravedad_cal(l = l, p = p, n = n))
}

resultado <- densidad.as.tibble(l=mediciones$`L(cm)`,
                                p=mediciones$`P(s)`,
                                n=mediciones$`N(oxi)`)

resultado$Den
