FROM circleci/node:9 

RUN cd ~ && curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-223.0.0-linux-x86_64.tar.gz | tar zxv
ENV PATH="/home/circleci/google-cloud-sdk/bin:${PATH}"
RUN echo $PATH
RUN gcloud components install kubectl
RUN gcloud components install docker-credential-gcr

