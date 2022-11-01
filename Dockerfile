FROM ubuntu:20.04
LABEL authors="Thomas Fulton" \
      description="Docker image containing all software requirements for the mendelian-filter pipeline"
RUN echo 'is this working?'
RUN echo $PWD
#RUN mkdir ./modules/
#RUN mkdir ./bin/
RUN apt-get update && apt-get install -y curl cowsay
#RUN apt install -y python3/focal  # can't respond to prompts when executed so -y automatically responds "y"
#RUN pip install nf-core
