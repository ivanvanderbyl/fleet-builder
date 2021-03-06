FROM buildkite/agent:ubuntu

RUN echo deb http://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

RUN apt-get update -qq && apt-get install -qqy \
    lxc-docker-1.6.2

ENTRYPOINT ["buildkite-agent"]
CMD ["start"]
