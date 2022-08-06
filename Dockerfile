FROM ubuntu:20.04

COPY requirements.txt /requirements.txt

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends\
    build-essential cmake git \
    tzdata \
    clang-tidy-6.0 \
    clang-tidy-7 \
    clang-tidy-8 \
    clang-tidy-9 \
    clang-tidy-10 \
    clang-tidy-11 \
    clang-tidy-12 \
    python3 python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

COPY review.py /review.py

# Include the entirety of the post_comments directory for simplicity's sake
# Technically we only need the clang_tidy_review directory but this keeps things consistent for running the command locally during development and in the docker image
COPY post_comments /post_comments

ENTRYPOINT ["/review.py"]
