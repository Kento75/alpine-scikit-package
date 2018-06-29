FROM alpine:3.7

RUN apk --update-cache \
    add musl \
    linux-headers \
    gcc \
    g++ \
    make \
    gfortran \
    openblas-dev \
    python3 \
    python3-dev

RUN pip3 install --upgrade pip 
RUN pip3 install numpy \
    scipy  \
    scikit-learn \ 
    'pandas<0.21.0'
