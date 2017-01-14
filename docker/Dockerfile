FROM centos
MAINTAINER = Jacob DeGlopper <jacob@mhem.net>
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install sipp 
COPY sipp /sipp
EXPOSE 5060 5060/udp
EXPOSE 6000-6500/udp
ENTRYPOINT ["sipp"]

