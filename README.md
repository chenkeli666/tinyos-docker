# Ubuntu-14.04 TinyOS

1. Install docker && add your user to docker group

    [Get Docker](https://docs.docker.com/get-docker/)

2. clone this repo

```
git clone https://gitee.com/osennyaya/tinyos-docker.git
```

3. build the docker image

```
cd tinyos-docker && docker build . -t tinyos
```

Step 1-3 **should only be done ONCE**

4. run the image.

```
docker run -it --rm tinyos
```

If you want to restart the container after exiting, repeat 
**only step4** and DON'T do step1-3 again. unless you know 
what you're doing.

5. build the app

```
# run the following commands in the docker container
# that you have entered in step 4.
cd tinyos/app/Blink
make micaz sim
```
