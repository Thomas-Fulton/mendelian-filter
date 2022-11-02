FROM ubuntu:20.04
LABEL authors="Thomas Fulton" \
      description="Docker image containing all software requirements for the mendelian-filter pipeline"

# Update and install packages:
RUN apt-get update && apt-get install -y curl \
  #openjdk-11-jdk \
  #openjdk-11-jre \
  && rm -rf /var/lib/apt/lists/* 

RUN mkdir /opt/mendelian-filter/
WORKDIR /opt/mendelian-filter/
RUN mkdir ./modules
COPY ./test.sh .
COPY ./test_nf.nf .
RUN curl -s https://get.nextflow.io | bash && mv nextflow /usr/local/bin/
ENV PATH=$PATH:opt/mendelian-filter/
RUN echo $pwd
CMD ["/bin/sh", "$PATH"]
CMD ["/bin/sh", "nextflow", "-version"]
#ENTRYPOINT ["/bin/sh", "test.sh"]
#CMD ["--help"]
#RUN pip install nf-core
