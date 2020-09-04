FROM centos

RUN  yum update -y && \
     yum install -y epel-release && \
     yum install -y ansible python3-pip python3-pycurl libxml2-devel python3-devel gcc openssh-clients vim git

RUN python3 -m pip install --upgrade pyvmomi requests setuptools virtualenv wheel
#RUN python3 -m pip install --upgrade git+https://github.com/vmware/vsphere-automation-sdk-python.git