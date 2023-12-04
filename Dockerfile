FROM ubuntu
RUN apt-get update && apt-get -y install wget
COPY wget.sh /app/
RUN chmod +x /app/wget.sh
ENTRYPOINT ["/app/wget.sh"]