FROM postgres

RUN apt-get update && apt-get install -y pgbackrest

RUN mkdir -p -m 770 /var/log/pgbackrest \
    && chown postgres:postgres /var/log/pgbackrest \
    && mkdir -p /etc/pgbackrest \
    && mkdir -p /etc/pgbackrest/conf.d \
    && touch /etc/pgbackrest/pgbackrest.conf \
    && chmod 640 /etc/pgbackrest/pgbackrest.conf \
    && chown postgres:postgres /etc/pgbackrest/pgbackrest.conf \
    && mkdir -p /var/lib/pgbackrest \
    && chmod 750 /var/lib/pgbackrest \
    && chown postgres:postgres /var/lib/pgbackrest