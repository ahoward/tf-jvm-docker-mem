

cat > a.java <<-____
  hai
____

$ java -XX:InitialRAMPercentage=50 -XX:MaxRAMPercentage=80 -XX:+PrintFlagsFinal -version | grep -iE 'Initialheapsize|maxheapsize'
   size_t InitialHeapSize                          = 1044381696                                {product} {ergonomic}
   size_t MaxHeapSize                              = 1669332992                                {product} {ergonomic}
openjdk version "11.0.6" 2020-01-14
OpenJDK Runtime Environment (build 11.0.6+10-post-Debian-1deb10u1)
OpenJDK 64-Bit Server VM (build 11.0.6+10-post-Debian-1deb10u1, mixed mode, sharing)



# docker run -m 128GB openjdk:11 java \
#   -XX:+PrintFlagsFinal \
#   -XX:MinRAMPercentage=50 \
#   -XX:MaxRAMPercentage=100 \
#   -XshowSettings:vm \
#   -version | egrep -A 42 'VM Settings'
#
# echo '---'
#
# free --human
