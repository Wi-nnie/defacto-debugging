FROM circleci/python:3.9-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN sudo su
RUN sudo apt -qq update --fix-missing
RUN sudo apt -qq install tmate -y
COPY . .
RUN sudo chmod +x run.sh
ENTRYPOINT ["./run.sh"]
