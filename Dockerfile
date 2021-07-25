FROM monica:latest
MAINTAINER Vikram Chauhan <me@vkrm.ch>

# Override UID and GID
ENV MONICA_UID=5555
ENV MONICA_GID=5555

RUN usermod -u $MONICA_UID www-data; groupmod -g $MONICA_GID www-data;

# Change ownership of this directory
RUN chown -R www-data:www-data /var/www/html