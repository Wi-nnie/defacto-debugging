FROM circleci/python:3.9-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update --fix-missing
RUN apt -qq install tmate -y
COPY . .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]
