# Ubuntu-14.04 TinyOS

1. Install docker && add your user to docker group

    [Get Docker](https://docs.docker.com/get-docker/)

2. clone this repo

    git clone https://gitee.com/osennyaya/tinyos-docker.git

3. build the docker image

    cd tinyos-docker && docker build . -t tinyos

4. run the image.

    docker run -it --rm tinyos

5. build the app

    # run the following commands in the docker container
    # that you have entered in step 4.
    cd tinyos/app/Blink
    make micaz sim
