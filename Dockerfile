FROM google/cloud-sdk:latest

RUN curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash

RUN curl -L https://github.com/Praqma/helmsman/releases/download/v1.3.0-rc/helmsman_1.3.0-rc_linux_amd64.tar.gz | tar zx && \
       mv helmsman /usr/local/bin/helmsman

RUN pip install --no-cache-dir easygoogle \
      ruamel.yaml \
      google-cloud \
      PyYAML \
      arrow && \
      python -m easygoogle.config
