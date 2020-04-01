FROM koji/image-build
MAINTAINER Red Hat, Inc.
LABEL com.redhat.component="rhel7-atomic-container" \
      name="rhel7-atomic" \
      version="7.8"
LABEL com.redhat.license_terms="https://www.redhat.com/licenses/eulas"
#labels for container catalog
LABEL summary="Provides the latest release of Red Hat Enterprise Linux 7 in a minimal, fully supported base image where several of the traditional operating system components such as python an systemd have been removed."
LABEL description="The Red Hat Enterprise Linux Base image is designed to be a minimal, fully supported base image where several of the traditional operating system components such as python an systemd have been removed. The Atomic Image also includes a simple package manager called microdnf which can add/update packages as needed."
LABEL io.k8s.display-name="Red Hat Enterprise Linux 7"
LABEL io.openshift.tags="minimal rhel7"
ENV container oci
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
CMD ["/bin/bash"]
RUN rm -rf /var/log/*
