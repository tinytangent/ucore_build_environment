FROM ubuntu:17.10

RUN buildDeps='g++ gcc libc6-dev make wget python python-argparse curl libmpc-dev libmpfr-dev libgmp-dev' \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && wget https://raw.githubusercontent.com/tansinan/ucore_plus/master/ucore/misc/create_build_env.py \
    && python create_build_env.py /opt/ucore_build_environment --build_threads=4
