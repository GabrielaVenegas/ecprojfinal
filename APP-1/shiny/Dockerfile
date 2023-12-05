# Instalar servidor de shiny con rocker
FROM rocker/shiny-verse:latest

RUN apt-get update && apt-get install libcurl4-openssl-dev -y &&\
  mkdir -p /var/lib/shiny-server/bookmarks/shiny

# Bajar e instalar las librerías de R
RUN R -e "install.packages(c('shinythemes', 'DT', 'shinydashboard', 'shinyjs', 'V8', 'ggrepel'))"

RUN mkdir -p /srv/shiny-server

RUN mkdir -p /usr/bin/

RUN mkdir -p /etc/shiny-server

# Copiar la app a la imagen
COPY app /srv/shiny-server/

# Copiar configuración del servidor shiny
COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf

# Hacer todas las apps leíbles (solves issue when dev in Windows, but building in Ubuntu)
RUN chmod -R 755 /srv/shiny-server/

# Indicar el puerto disponible para shiny
EXPOSE 3838

# Copiar donde poner los logfiles
COPY shiny-server.sh /usr/bin/shiny-server.sh
#COPY /app /usr/bin/shiny-server/

#RUN chmod -R 755 /usr/bin/
RUN apt-get update && apt-get install -y dos2unix

RUN dos2unix /usr/bin/shiny-server.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

# Correr la aplicación
CMD ["/usr/bin/shiny-server.sh"] 
