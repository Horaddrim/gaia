FROM nginx:1.14.1

COPY ./install_gaia.sh ./install_gaia.sh

RUN apt-get update
RUN apt-get install git -y

ARG GITHUB_USERNAME

ARG GITHUB_PASSWORD

RUN sh install_gaia.sh ${GITHUB_USERNAME} ${GITHUB_PASSWORD}
ENTRYPOINT ["/bin/gaia"]
