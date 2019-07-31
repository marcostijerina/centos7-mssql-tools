FROM centos:7
ENV container docker

RUN yum -y install systemd systemd-libs deltarpm

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN yum update -y && \
  yum install -y make wget gcc e2fsprogs openssl && \
  yum clean all

RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo -so /etc/yum.repos.d/mssql-release.repo && \
ACCEPT_EULA=Y yum install -y msodbcsql17  && \
ACCEPT_EULA=Y yum install -y mssql-tools  && \ 
yum install -y unixODBC-devel


RUN  ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/sbin/sqlcmd && \
     ln -s /opt/mssql-tools/bin/bcp /usr/local/sbin/bcp

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
