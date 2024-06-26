From prom/prometheus:latest

WORKDIR /prometheus

COPY ./prometheus.yml /etc/prometheus/

ENTRYPOINT ["/bin/prometheus"]

CMD ["--config.file=/etc/prometheus/prometheus.yml", \
     "--storage.tsdb.path=/prometheus", \
     "--web.console.libraries=/usr/share/prometheus/console_libraries", \
     "--web.console.templates=/usr/share/prometheus/consoles"]