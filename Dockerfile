FROM ubuntu:20.04
LABEL authors="Thomas Fulton" \
      description="Docker image containing all software requirements for the mendelian-filter pipeline"
RUN apt-get install -y python3  # can't respond to prompts when executed so -y automatically responds "y"
