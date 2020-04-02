TL;DR;
------

```bash

~> ./test.sh | tee 2>&1 test.out

Sending build context to Docker daemon  10.75kB
Step 1/10 : FROM debian:buster
 ---> 58075fe9ecce
Step 2/10 : ENV DEBIAN_FRONTEND noninteractive
 ---> Using cache
 ---> 44b3ce3bbc98
Step 3/10 : ENV TAR_OPTIONS --no-same-owner
 ---> Using cache
 ---> b6d17bda4ab3
Step 4/10 : RUN     apt-get update       &&     apt-get install -y --no-install-recommends       openjdk-11-jdk cgroup-bin       &&     useradd -ms /bin/bash app       &&     usermod -aG sudo app
 ---> Using cache
 ---> bb90219675be
Step 5/10 : USER app
 ---> Using cache
 ---> b701dd281e9b
Step 6/10 : ENV USER app
 ---> Using cache
 ---> c104c0351fba
Step 7/10 : WORKDIR /home/app
 ---> Using cache
 ---> bcb2937efd1f
Step 8/10 : COPY . /home/app
 ---> 1dbd72ea8bed
Step 9/10 : CMD [ "./mjava", "a.java" ]
 ---> Running in 02cccf28e220
Removing intermediate container 02cccf28e220
 ---> 597e721cd4f0
Step 10/10 : STOPSIGNAL SIGINT
 ---> Running in f8a6dea41771
Removing intermediate container f8a6dea41771
 ---> 210821017ef0
Successfully built 210821017ef0
Successfully tagged jvm-mem:latest


gb=8
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=8589934592
cpu: 4
mem: 2.0


gb=16
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=17179869184
cpu: 4
mem: 4.0


gb=32
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=34359738368
cpu: 4
mem: 8.0


gb=64
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=68719476736
cpu: 4
mem: 16.0


gb=128
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=137438953472
cpu: 4
mem: 29.96875


gb=256
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=274877906944
cpu: 4
mem: 29.96875


gb=512
JAVA_OPTS=-XX:-UseCompressedOops XX:InitialRAMPercentage=50 XX:MaxRAMPercentage=80 -XX:MaxRAM=549755813888
cpu: 4
mem: 29.96875



```


worth mentioning is that, even if i comment out the JAVA_OPTS in ./mjava i get the *same results*


eg

```text

gb=8
cpu: 4
mem: 2.0


gb=16
cpu: 4
mem: 4.0


gb=32
cpu: 4
mem: 8.0


gb=64
cpu: 4
mem: 16.0


gb=128
cpu: 4
mem: 29.96875


gb=256
cpu: 4
mem: 29.96875


gb=512
cpu: 4
mem: 29.96875

```
