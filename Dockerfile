FROM koetjen/rstudio:4.0.3

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  libxml2-dev libcurl4-openssl-dev libssl-dev  git && \
  apt-get clean
RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('collections')"
RUN R -e "devtools::install_github('ctlab/linseed')"
RUN R -e "install.packages('plotly')"
RUN R -e "install.packages('matlib')"
RUN R -e "install.packages('matrixcalc')"
RUN R -e "install.packages('optparse')"
RUN R -e "install.packages('yaml')"
RUN R -e "install.packages('nnls')"
RUN R -e "install.packages('Rcpp')"
RUN R -e "install.packages('RcppArmadillo')"
