FROM python:3.9-alpine3.15

RUN apk add --no-cache bash cppcheck && \
    pip install cppcheck_codequality --no-cache-dir
COPY cppcheck-gitlab-ci /bin/cppcheck-gitlab-ci

WORKDIR /builds

CMD [ "/bin/cppcheck-gitlab-ci" ]
