FROM python:3

COPY requirements.txt /requirements.txt

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

COPY post_comments.py /post_comments.py
COPY clang_tidy_review /clang_tidy_review

ENTRYPOINT ["/post_comments.py"]
