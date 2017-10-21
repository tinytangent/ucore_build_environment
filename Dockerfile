FROM ubuntu:17.10

RUN buildDeps='gcc libc6-dev make wget python python-argparse curl' \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && wget https://raw.githubusercontent.com/tansinan/ucore_plus/master/ucore/misc/create_build_env.py \
    && python create_build_env.py /opt/ucore_build_environment
