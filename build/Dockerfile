FROM phusion/baseimage:0.9.15
MAINTAINER Goffert van Gool "goffert@phusion.nl"

# Force non-interactive installs
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y 

# Install mysql server
RUN apt-get install -y --no-install-recommends mysql-server-5.5

# Clean-up apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*.5

# Add our services
ADD service /etc/service

# Link to the mounted config file
RUN ln -sf /mount/config/my.cnf /etc/mysql/my.cnf

# Add our init scripts
ADD scripts /rook/scripts

# Use the init wrapper. This will start the init process once all init scripts are completed
CMD ["/rook/scripts/rook_init"]
