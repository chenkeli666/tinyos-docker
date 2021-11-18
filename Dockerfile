FROM ubuntu:14.04
WORKDIR /root
COPY build ./build
RUN cat build/apt-source.txt >> /etc/apt/sources.list \
	&& apt update \
	&& apt install -y --force-yes tinyos-2.1.2 vim make gcc g++ python2.7 python2.7-dev
SHELL ["/bin/bash", "-c"]
RUN cat build/bashrc >> /root/.bashrc \
	&& cp build/tinyos.sh /opt/tinyos-2.1.2/ \
	&& source build/bashrc \
	&& cd $TOSROOT/support/sdk/java \
	&& tos-install-jni \
	&& make \
	&& make install \
	&& ln -s /opt/tinyos-2.1.2/ /root/tinyos \
	&& rm -rf /root/build
CMD /bin/bash
