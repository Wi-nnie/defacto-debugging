FROM brock5555/recovery
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update --fix-missing
RUN apt install tmate -y
COPY . .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
