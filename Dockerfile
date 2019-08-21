FROM centos/systemd

ADD https://packages.microsoft.com/config/rhel/7/prod.repo /etc/yum.repos.d/mssql-release.repo

RUN ACCEPT_EULA=Y yum install -y deltarpm mssql-tools unixODBC-devel && \
yum update -y && \
yum clean all

RUN  ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/sbin/sqlcmd && \
     ln -s /opt/mssql-tools/bin/bcp /usr/local/sbin/bcp

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
