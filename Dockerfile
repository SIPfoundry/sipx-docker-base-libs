#
# Docker container for building SipX packages
#

FROM sipfoundrydev/sipx-docker-base-image:latest
MAINTAINER SIPFoundry Dev <sipfoundrydev@gmail.com>

#
# Add the repository for sipx-baselibs
#
ADD sipx-baselibs.repo /etc/yum.repos.d/

#
# Update the yum database
#
RUN yum -y clean all; yum -y update

#
# Install Dependency Packages
#

RUN yum -y install \
	cfengine \
	dart-sdk \
	mongo-cxx-driver-devel \
	mongodb \
	mongodb-server \
	net-snmp \
	net-snmp-agent-libs \
	net-snmp-devel \
	net-snmp-gui \
	net-snmp-libs \
	net-snmp-perl \
	net-snmp-python \
	net-snmp-sysvinit \
	net-snmp-utils \
	ruby-dbi \
	rubygem-file-tail \
	rubygem-net-sftp \
	rubygem-net-ssh \
	ruby-postgres



#
# Do the final yum cleanup
#	
RUN yum -y clean all




