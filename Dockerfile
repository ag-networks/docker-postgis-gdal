FROM mdillon/postgis:9.5

RUN echo "deb http://ftp.au.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.au.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update --fix-missing && apt-get install -y \
  gdal-bin \
  --no-install-recommends



