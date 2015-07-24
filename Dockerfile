    FROM busybox:ubuntu-14.04
    MAINTAINER João Antonio Ferreira "joao.parana@gmail.com"
    ENV REFRESHED_AT 2015-07-24
    RUN mkdir /www
    ADD https://github.com/joao-parana/static-web-builder/raw/master/www/martini-debian-64 /www/martini-debian-64
    RUN chmod a+rx /www/martini-debian-64 && ls -lAt /www
    VOLUME ["/www/public"]
    EXPOSE 3000
    WORKDIR /www 
    ENTRYPOINT ["/www/martini-debian-64"]

