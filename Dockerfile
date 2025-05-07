FROM httpd:2.4

# Verwijder standaard HTML
RUN rm -rf /usr/local/apache2/htdocs/*

# Kopieer eigen HTML van de buildcontext
COPY html/ /usr/local/apache2/htdocs/

EXPOSE 80
