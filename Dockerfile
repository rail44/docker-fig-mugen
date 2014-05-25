FROM dockerfile/python

RUN apt-get update
RUN apt-get upgrade -y

RUN pip install fig

RUN mkdir /docker-fig-mugen
WORKDIR /docker-fig-mugen
ADD . /docker-fig-mugen

CMD ./run.sh
