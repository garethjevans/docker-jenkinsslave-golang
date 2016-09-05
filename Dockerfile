FROM garethjevans/jenkinsslave:v1.1.5

RUN apt-get install -y bzr tree

RUN wget -q https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.6.3.linux-amd64.tar.gz 
ENV PATH /usr/local/go/bin:$PATH
