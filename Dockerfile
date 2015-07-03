FROM buildkite/agent:ubuntu

RUN apt-get update -qq && apt-get install -qqy \
    docker.io

ENTRYPOINT ["buildkite-agent"]
CMD ["start"]
