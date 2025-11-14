# ################################################################################
# RAODB: customized version of postgres db built from posggres source code on Amazon Linux 2023 as base OS
FROM amazonlinux:2023

# Set environment variables
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV MYDIR=/raodb
ENV OWNER=postgres
ENV HOME=/home/${OWNER}

EXPOSE 5432

RUN dnf update -y 
RUN dnf install -y vim wget tar gzip unzip less git cmake perl systemd lsof iproute net-tools procps-ng
RUN dnf install -y -q -e 0 bison-devel readline-devel zlib-devel openssl-devel shadow-utils glibc-langpack-en
RUN dnf groups install 'Development Tools' -y
RUN dnf clean all

RUN adduser --home ${HOME} ${OWNER}

COPY profile.sh ${HOME}/.bash_profile
COPY boot.sh ${HOME}/.boot.sh
RUN chown ${OWNER}:${OWNER} ${HOME}/.bash_profile ${HOME}/.boot.sh
RUN chmod +700 ${HOME}/.bash_profile ${HOME}/.boot.sh
RUN mkdir -p ${MYDIR}
RUN chown ${OWNER}:${OWNER} ${MYDIR}

WORKDIR ${MYDIR}

CMD ["/bin/bash"]

USER ${OWNER}
RUN source ${HOME}/.bash_profile
RUN ${HOME}/.boot.sh

VOLUME ["${MYDIR}"]

USER root

# ################################################################################
