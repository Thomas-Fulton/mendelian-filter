FROM ubuntu:20.04
LABEL authors="Thomas Fulton" \
      description="Docker image containing all software requirements for the mendelian-filter pipeline"
CMD ["echo", "'is this working?'"]
#RUN mkdir ./modules/
RUN mkdir /opt/mendelian-filter/
WORKDIR /opt/mendelian-filter/
COPY .
RUN pwd
RUN apt-get update && apt-get install -y curl openjdk-11-jdk openjdk-11-jre 
RUN curl -s https://get.nextflow.io | bash && mv nextflow /usr/local/bin/
ENV PATH=$PATH:opt/mendelian-filter/
RUN echo $pwd
CMD ["echo", "$PATH"]
CMD ["nextflow", "-version"]
ENTRYPOINT test.sh
#CMD ["--help"]
#RUN apt install -y python3/focal  # can't respond to prompts when executed so -y automatically responds "y"
#RUN pip install nf-core
