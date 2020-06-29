FROM adoptopenjdk:11-jre-hotspot

WORKDIR /flyway

ENV FLYWAY_VERSION 6.5.0

RUN curl -L https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}.tar.gz -o flyway-commandline-${FLYWAY_VERSION}.tar.gz \
  && tar -xzf flyway-commandline-${FLYWAY_VERSION}.tar.gz --strip-components=1 \
  && rm flyway-commandline-${FLYWAY_VERSION}.tar.gz
  
ENV PATH="/flyway:${PATH}"

COPY sql/. sql/
COPY conf/. conf/
