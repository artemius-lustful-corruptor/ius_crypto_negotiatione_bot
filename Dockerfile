FROM ubuntu:20.04
ENV LANG=en_US.UTF-8
ENV TZ=Europe/Moscow
ENV DEBIAN_FRONTEND noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install -y wget gnupg2 inotify-tools locales && \
  locale-gen en_US.UTF-8

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && dpkg -i erlang-solutions_2.0_all.deb
RUN apt-get update -y && \
    apt-get install -y esl-erlang && \ 
    apt-get install -y elixir

COPY ./_build/prod/rel ./rel
COPY ./start ./bin
CMD ["./bin/start"]
