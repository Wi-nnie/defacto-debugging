FROM brock5555/recovery
RUN apt update --fix-missing
RUN apt install openssh-server -y
RUN apt install tmate
CMD ["tmate","-F"]
