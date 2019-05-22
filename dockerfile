FROM centos
ENV work_dir=/var/www/index
RUN yum install httpd httpd-tools -y
COPY index.html ${work_dir}
EXPOSE 80 443
cmd [ "/usr/sbin/httpd","-D","FORF"]