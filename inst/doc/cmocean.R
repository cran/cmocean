## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ------------------------------------------------------------------------
library(cmocean)
plot_cm <- function(name, n=256) {
    z <- matrix(seq(0, 1, length.out=n))
    image(z, col=cmocean(name)(n), axes=FALSE)
    mtext(name, 3, adj=0)
}

## ----echo=FALSE----------------------------------------------------------
pal <- c('algae', 'amp', 'balance', 'diff',
         'gray', 'curl', 'deep', 'delta',
         'dense', 'haline', 'ice', 'matter',
         'oxy', 'phase', 'rain', 'solar',
         'speed', 'tarn', 'tempo', 'thermal',
         'topo', 'turbid')
opar <- par(no.readonly=TRUE)
par(mfrow=c(6, 1), mar=c(0.5, 0.5, 1.5, 0.5))
for (i in seq_along(pal)) {
    plot_cm(pal[i])
}
par(mfrow=c(1, 1))
par(opar)

## ------------------------------------------------------------------------
par(mar=c(2, 2, 1, 1), cex=0.5)
image(volcano, col=cmocean('thermal')(256))

## ------------------------------------------------------------------------
par(mar=c(2, 2, 1, 1), cex=0.5)
x <- y <- seq(-4*pi, 4*pi, len = 27)
r <- sqrt(outer(x^2, y^2, "+"))
image(z = z <- cos(r^2)*exp(-r/6), col  = cmocean('haline')(256))

