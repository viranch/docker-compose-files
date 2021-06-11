FROM wordpress

RUN apt-get update; \
    apt-get install -y msmtp msmtp-mta; \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*
