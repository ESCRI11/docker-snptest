FROM obiba/ssh:latest

RUN 	apt-get update && apt-get install -y wget
RUN	wget http://www.well.ox.ac.uk/~gav/resources/snptest_v2.5.2_linux_x86_64_dynamic.tgz
RUN	tar zxvf snptest_v2.5.2_linux_x86_64_dynamic.tgz
RUN	cp snptest_v2.5.2_linux_x86_64_dynamic/snptest_v2.5.2 /usr/local/bin
RUN	cp -R snptest_v2.5.2_linux_x86_64_dynamic/example /home/master/data
RUN	rm -rf snptest_v2.5.2_linux_x86_64_dynamic
RUN	rm -rf snptest_v2.5.2_linux_x86_64_dynamic.tgz
RUN	cd /root && apt-get remove -y wget unzip
RUN	chmod a+x usr/local/bin/snptest_v2.5.2
RUN	chmod -R 777 home/master/data/

EXPOSE 22
