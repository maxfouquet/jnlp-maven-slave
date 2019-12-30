## Jenkins maven slave

A docker image of Jenkins `JNLP` based agent equipped with Maven.

***

**Running**

```sh
$ docker run -d \
    --net host \
    -e JENKINS_URL=http://jenkins.internal.domain:8080 \
    -e JENKINS_AUTH=registrator:1234567890123456789012  \
    -v /path/to:/var/jenkins_home \
    maxfouquet/jnpl-maven-slave
```

***