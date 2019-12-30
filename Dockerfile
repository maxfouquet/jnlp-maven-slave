FROM maxfouquet/jnlp-slave:latest
LABEL maintainer="Max Fouquet <fouquet.max@gmail.com>"

ENV MAVEN_VERSION=3.3.9

# Install maven 
RUN wget https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.3.9/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar -zxf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    mv apache-maven-${MAVEN_VERSION} /usr/local && \
    rm -f apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    ln -s /usr/local/apache-maven-${MAVEN_VERSION}/bin/mvn /usr/bin/mvn
