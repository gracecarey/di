FROM circleci/node:10-browsers

USER root

# install python-dev
RUN apt-get install -y python-dev

# install sendmail
RUN apt-get install sendmail

# install pip & awscli
RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py && \
    pip install awscli pydash

# install static-server for deployments
RUN yarn global add static-server

USER circleci
