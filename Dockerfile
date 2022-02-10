FROM brock5555/recovery
RUN apt update --fix-missing
RUN apt install openssh-server -y
RUN apt install tmate -y
COPY . .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
