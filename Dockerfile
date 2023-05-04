FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get -y install python3

WORKDIR /root

RUN mkdir 'A'
RUN mkdir 'B'
RUN mkdir 'C'
RUN mkdir 'files'

WORKDIR /root/files
RUN touch 'a.txt'
RUN touch 'b.txt'
RUN touch 'c.txt'

RUN git clone https://github.com/schan6927/OSSP_week4.git
