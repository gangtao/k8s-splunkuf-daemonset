FROM splunk/universalforwarder:7.0.0
MAINTAINER Gang Tao <gang.tao@outlook.com>

COPY ./conf/inputs.conf /opt/splunk/etc/system/local/inputs.conf