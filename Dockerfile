FROM google/cloud-sdk:latest

RUN pip install --no-cache-dir easygoogle \
      ruamel.yaml \
      google-cloud \
      PyYAML \
      arrow && \
      python -m easygoogle.config
