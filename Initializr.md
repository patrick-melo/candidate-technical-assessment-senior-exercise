  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
:: Spring Initializr ::  https://start.spring.io

This service generates quickstart projects that can be easily customized.
Possible customizations include a project's dependencies, Java version, and
build system or build structure. See below for further details.

The services uses a HAL based hypermedia format to expose a set of resources
to interact with. If you access this root resource requesting application/json
as media type the response will contain the following links:
+-----------------------+--------------------------------------------------------------+
| Rel                   | Description                                                  |
+-----------------------+--------------------------------------------------------------+
| gradle-build          | Generate a Gradle build file.                                |
|                       |                                                              |
| gradle-project *      | Generate a Gradle based project archive using the Groovy     |
|                       | DSL.                                                         |
|                       |                                                              |
| gradle-project-kotlin | Generate a Gradle based project archive using the Kotlin     |
|                       | DSL.                                                         |
|                       |                                                              |
| maven-build           | Generate a Maven pom.xml.                                    |
|                       |                                                              |
| maven-project         | Generate a Maven based project archive.                      |
+-----------------------+--------------------------------------------------------------+


The URI templates take a set of parameters to customize the result of a request
to the linked resource.
+-----------------+------------------------------------------+------------------------------+
| Parameter       | Description                              | Default value                |
+-----------------+------------------------------------------+------------------------------+
| applicationName | application name                         | DemoApplication              |
| artifactId      | project coordinates (infer archive name) | demo                         |
| baseDir         | base directory to create in the archive  | no base dir                  |
| bootVersion     | spring boot version                      | 3.0.2                        |
| dependencies    | dependency identifiers (comma-separated) | none                         |
| description     | project description                      | Demo project for Spring Boot |
| groupId         | project coordinates                      | com.example                  |
| javaVersion     | language level                           | 17                           |
| language        | programming language                     | java                         |
| name            | project name (infer application name)    | demo                         |
| packageName     | root package                             | com.example.demo             |
| packaging       | project packaging                        | jar                          |
| type            | project type                             | gradle-project               |
| version         | project version                          | 0.0.1-SNAPSHOT               |
+-----------------+------------------------------------------+------------------------------+


The following section has a list of supported identifiers for the comma-separated
list of "dependencies".
+--------------------------------------+--------------------------------------------------------------+-------------------------------+
| Id                                   | Description                                                  | Required version              |
+--------------------------------------+--------------------------------------------------------------+-------------------------------+
| activemq                             | Spring JMS support with Apache ActiveMQ 'Classic'.           | >=2.0.0.RELEASE and <3.0.0-M1 |
|                                      |                                                              |                               |
| actuator                             | Supports built in (or custom) endpoints that let you monitor |                               |
|                                      | and manage your application - such as application health,    |                               |
|                                      | metrics, sessions, etc.                                      |                               |
|                                      |                                                              |                               |
| amqp                                 | Gives your applications a common platform to send and        |                               |
|                                      | receive messages, and your messages a safe place to live     |                               |
|                                      | until received.                                              |                               |
|                                      |                                                              |                               |
| artemis                              | Spring JMS support with Apache ActiveMQ Artemis.             |                               |
|                                      |                                                              |                               |
| azure-active-directory               | Spring Security integration with Azure Active Directory for  | >=2.5.0-M1 and <3.1.0-M1      |
|                                      | authentication.                                              |                               |
|                                      |                                                              |                               |
| azure-cosmos-db                      | Fully managed NoSQL database service for modern app          | >=2.5.0-M1 and <3.0.0-M1      |
|                                      | development, including Spring Data support.                  |                               |
|                                      |                                                              |                               |
| azure-keyvault                       | All key vault features are supported, e.g. manage            | >=2.5.0-M1 and <3.1.0-M1      |
|                                      | application secrets and certificates.                        |                               |
|                                      |                                                              |                               |
| azure-storage                        | All Storage features are supported, e.g. blob, fileshare and | >=2.5.0-M1 and <3.1.0-M1      |
|                                      | queue.                                                       |                               |
|                                      |                                                              |                               |
| azure-support                        | Auto-configuration for Azure Services (Service Bus, Storage, | >=2.5.0-M1 and <3.1.0-M1      |
|                                      | Active Directory, Key Vault, and more).                      |                               |
|                                      |                                                              |                               |
| batch                                | Batch applications with transactions, retry/skip and chunk   |                               |
|                                      | based processing.                                            |                               |
|                                      |                                                              |                               |
| cache                                | Provides cache-related operations, such as the ability to    |                               |
|                                      | update the content of the cache, but does not provide the    |                               |
|                                      | actual data store.                                           |                               |
|                                      |                                                              |                               |
| camel                                | Apache Camel is an open source integration framework that    | >=2.0.0.M1 and <3.0.0-M1      |
|                                      | empowers you to quickly and easily integrate various systems |                               |
|                                      | consuming or producing data.                                 |                               |
|                                      |                                                              |                               |
| cloud-bus                            | Links nodes of a distributed system with a lightweight       | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | message broker which can used to broadcast state changes or  |                               |
|                                      | other management instructions (requires a binder, e.g.       |                               |
|                                      | Apache Kafka or RabbitMQ).                                   |                               |
|                                      |                                                              |                               |
| cloud-cloudfoundry-discovery         | Service discovery with Cloud Foundry.                        | >=2.3.0.M1 and <3.0.0-M1      |
|                                      |                                                              |                               |
| cloud-config-client                  | Client that connects to a Spring Cloud Config Server to      | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | fetch the application's configuration.                       |                               |
|                                      |                                                              |                               |
| cloud-config-server                  | Central management for configuration via Git, SVN, or        | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | HashiCorp Vault.                                             |                               |
|                                      |                                                              |                               |
| cloud-contract-stub-runner           | Stub Runner for HTTP/Messaging based communication. Allows   | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | creating WireMock stubs from RestDocs tests.                 |                               |
|                                      |                                                              |                               |
| cloud-contract-verifier              | Moves TDD to the level of software architecture by enabling  |                               |
|                                      | Consumer Driven Contract (CDC) development.                  |                               |
|                                      |                                                              |                               |
| cloud-eureka                         | A REST based service for locating services for the purpose   | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | of load balancing and failover of middle-tier servers.       |                               |
|                                      |                                                              |                               |
| cloud-eureka-server                  | spring-cloud-netflix Eureka Server.                          | >=2.3.0.M1 and <3.1.0-M1      |
|                                      |                                                              |                               |
| cloud-feign                          | Declarative REST Client. OpenFeign creates a dynamic         | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | implementation of an interface decorated with JAX-RS or      |                               |
|                                      | Spring MVC annotations.                                      |                               |
|                                      |                                                              |                               |
| cloud-function                       | Promotes the implementation of business logic via functions  | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | and supports a uniform programming model across serverless   |                               |
|                                      | providers, as well as the ability to run standalone (locally |                               |
|                                      | or in a PaaS).                                               |                               |
|                                      |                                                              |                               |
| cloud-gateway                        | Provides a simple, yet effective way to route to APIs and    | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | provide cross cutting concerns to them such as security,     |                               |
|                                      | monitoring/metrics, and resiliency.                          |                               |
|                                      |                                                              |                               |
| cloud-gcp                            | Contains auto-configuration support for every Spring Cloud   | >=2.4.0-M1 and <3.0.0-M1      |
|                                      | GCP integration. Most of the auto-configuration code is only |                               |
|                                      | enabled if other dependencies are added to the classpath.    |                               |
|                                      |                                                              |                               |
| cloud-gcp-pubsub                     | Adds the GCP Support entry and all the required dependencies | >=2.4.0-M1 and <3.0.0-M1      |
|                                      | so that the Google Cloud Pub/Sub integration work out of the |                               |
|                                      | box.                                                         |                               |
|                                      |                                                              |                               |
| cloud-gcp-storage                    | Adds the GCP Support entry and all the required dependencies | >=2.4.0-M1 and <3.0.0-M1      |
|                                      | so that the Google Cloud Storage integration work out of the |                               |
|                                      | box.                                                         |                               |
|                                      |                                                              |                               |
| cloud-loadbalancer                   | Client-side load-balancing with Spring Cloud LoadBalancer.   | >=2.3.0.M1 and <3.1.0-M1      |
|                                      |                                                              |                               |
| cloud-resilience4j                   | Spring Cloud Circuit breaker with Resilience4j as the        | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | underlying implementation.                                   |                               |
|                                      |                                                              |                               |
| cloud-starter                        | Non-specific Spring Cloud features, unrelated to external    | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | libraries or integrations (e.g. Bootstrap context and        |                               |
|                                      | @RefreshScope).                                              |                               |
|                                      |                                                              |                               |
| cloud-starter-consul-config          | Enable and configure the common patterns inside your         | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | application and build large distributed systems with         |                               |
|                                      | Hashicorp’s Consul. The patterns provided include Service    |                               |
|                                      | Discovery, Distributed Configuration and Control Bus.        |                               |
|                                      |                                                              |                               |
| cloud-starter-consul-discovery       | Service discovery with Hashicorp Consul.                     | >=2.3.0.M1 and <3.1.0-M1      |
|                                      |                                                              |                               |
| cloud-starter-vault-config           | Provides client-side support for externalized configuration  | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | in a distributed system. Using HashiCorp's Vault you have a  |                               |
|                                      | central place to manage external secret properties for       |                               |
|                                      | applications across all environments.                        |                               |
|                                      |                                                              |                               |
| cloud-starter-zookeeper-config       | Enable and configure common patterns inside your application | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | and build large distributed systems with Apache Zookeeper    |                               |
|                                      | based components. The provided patterns include Service      |                               |
|                                      | Discovery and Configuration.                                 |                               |
|                                      |                                                              |                               |
| cloud-starter-zookeeper-discovery    | Service discovery with Apache Zookeeper.                     | >=2.3.0.M1 and <3.1.0-M1      |
|                                      |                                                              |                               |
| cloud-stream                         | Framework for building highly scalable event-driven          | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | microservices connected with shared messaging systems        |                               |
|                                      | (requires a binder, e.g. Apache Kafka, RabbitMQ or Solace    |                               |
|                                      | PubSub+).                                                    |                               |
|                                      |                                                              |                               |
| cloud-task                           | Allows a user to develop and run short lived microservices   | >=2.3.0.M1 and <3.1.0-M1      |
|                                      | using Spring Cloud. Run them locally, in the cloud, and on   |                               |
|                                      | Spring Cloud Data Flow.                                      |                               |
|                                      |                                                              |                               |
| codecentric-spring-boot-admin-client | Required for your application to register with a             | >=2.0.0.RELEASE and <3.1.0-M1 |
|                                      | Codecentric's Spring Boot Admin Server instance.             |                               |
|                                      |                                                              |                               |
| codecentric-spring-boot-admin-server | A community project to manage and monitor your Spring Boot   | >=2.0.0.RELEASE and <3.1.0-M1 |
|                                      | applications. Provides a UI on top of the Spring Boot        |                               |
|                                      | Actuator endpoints.                                          |                               |
|                                      |                                                              |                               |
| configuration-processor              | Generate metadata for developers to offer contextual help    |                               |
|                                      | and "code completion" when working with custom configuration |                               |
|                                      | keys (ex.application.properties/.yml files).                 |                               |
|                                      |                                                              |                               |
| data-cassandra                       | A free and open-source, distributed, NoSQL database          |                               |
|                                      | management system that offers high-scalability and           |                               |
|                                      | high-performance.                                            |                               |
|                                      |                                                              |                               |
| data-cassandra-reactive              | Access Cassandra NoSQL Database in a reactive fashion.       |                               |
|                                      |                                                              |                               |
| data-couchbase                       | NoSQL document-oriented database that offers in memory-first |                               |
|                                      | architecture, geo-distributed deployments, and workload      |                               |
|                                      | isolation.                                                   |                               |
|                                      |                                                              |                               |
| data-couchbase-reactive              | Access Couchbase NoSQL database in a reactive fashion with   |                               |
|                                      | Spring Data Couchbase.                                       |                               |
|                                      |                                                              |                               |
| data-elasticsearch                   | A distributed, RESTful search and analytics engine with      |                               |
|                                      | Spring Data Elasticsearch.                                   |                               |
|                                      |                                                              |                               |
| data-jdbc                            | Persist data in SQL stores with plain JDBC using Spring      |                               |
|                                      | Data.                                                        |                               |
|                                      |                                                              |                               |
| data-jpa                             | Persist data in SQL stores with Java Persistence API using   |                               |
|                                      | Spring Data and Hibernate.                                   |                               |
|                                      |                                                              |                               |
| data-ldap                            | Makes it easier to build Spring based applications that use  |                               |
|                                      | the Lightweight Directory Access Protocol.                   |                               |
|                                      |                                                              |                               |
| data-mongodb                         | Store data in flexible, JSON-like documents, meaning fields  |                               |
|                                      | can vary from document to document and data structure can be |                               |
|                                      | changed over time.                                           |                               |
|                                      |                                                              |                               |
| data-mongodb-reactive                | Provides asynchronous stream processing with non-blocking    |                               |
|                                      | back pressure for MongoDB.                                   |                               |
|                                      |                                                              |                               |
| data-neo4j                           | An open source NoSQL database that stores data structured as |                               |
|                                      | graphs consisting of nodes, connected by relationships.      |                               |
|                                      |                                                              |                               |
| data-r2dbc                           | Provides Reactive Relational Database Connectivity to        |                               |
|                                      | persist data in SQL stores using Spring Data in reactive     |                               |
|                                      | applications.                                                |                               |
|                                      |                                                              |                               |
| data-redis                           | Advanced and thread-safe Java Redis client for synchronous,  |                               |
|                                      | asynchronous, and reactive usage. Supports Cluster,          |                               |
|                                      | Sentinel, Pipelining, Auto-Reconnect, Codecs and much more.  |                               |
|                                      |                                                              |                               |
| data-redis-reactive                  | Access Redis key-value data stores in a reactive fashion     |                               |
|                                      | with Spring Data Redis.                                      |                               |
|                                      |                                                              |                               |
| data-rest                            | Exposing Spring Data repositories over REST via Spring Data  |                               |
|                                      | REST.                                                        |                               |
|                                      |                                                              |                               |
| data-rest-explorer                   | Browsing Spring Data REST repositories in your browser.      |                               |
|                                      |                                                              |                               |
| datadog                              | Publish Micrometer metrics to Datadog, a dimensional         |                               |
|                                      | time-series SaaS with built-in dashboarding and alerting.    |                               |
|                                      |                                                              |                               |
| db2                                  | A JDBC driver that provides access to IBM DB2.               | >=2.2.0.M6                    |
|                                      |                                                              |                               |
| derby                                | An open source relational database implemented entirely in   |                               |
|                                      | Java.                                                        |                               |
|                                      |                                                              |                               |
| devtools                             | Provides fast application restarts, LiveReload, and          |                               |
|                                      | configurations for enhanced development experience.          |                               |
|                                      |                                                              |                               |
| distributed-tracing                  | Enable span and trace IDs in logs.                           |                               |
|                                      |                                                              |                               |
| flapdoodle-mongo                     | Provides a platform neutral way for running MongoDB in unit  | >=2.0.0.RELEASE and <3.0.0-M1 |
|                                      | tests.                                                       |                               |
|                                      |                                                              |                               |
| flyway                               | Version control for your database so you can migrate from    |                               |
|                                      | any version (incl. an empty database) to the latest version  |                               |
|                                      | of the schema.                                               |                               |
|                                      |                                                              |                               |
| freemarker                           | Java library to generate text output (HTML web pages,        |                               |
|                                      | e-mails, configuration files, source code, etc.) based on    |                               |
|                                      | templates and changing data.                                 |                               |
|                                      |                                                              |                               |
| graphite                             | Publish Micrometer metrics to Graphite, a hierarchical       |                               |
|                                      | metrics system backed by a fixed-size database.              |                               |
|                                      |                                                              |                               |
| graphql                              | Build GraphQL applications with Spring for GraphQL and       | >=2.7.0.M1                    |
|                                      | GraphQL Java.                                                |                               |
|                                      |                                                              |                               |
| groovy-templates                     | Groovy templating engine.                                    |                               |
|                                      |                                                              |                               |
| h2                                   | Provides a fast in-memory database that supports JDBC API    |                               |
|                                      | and R2DBC access, with a small (2mb) footprint. Supports     |                               |
|                                      | embedded and server modes as well as a browser based console |                               |
|                                      | application.                                                 |                               |
|                                      |                                                              |                               |
| hateoas                              | Eases the creation of RESTful APIs that follow the HATEOAS   |                               |
|                                      | principle when working with Spring / Spring MVC.             |                               |
|                                      |                                                              |                               |
| hsql                                 | Lightweight 100% Java SQL Database Engine.                   |                               |
|                                      |                                                              |                               |
| influx                               | Publish Micrometer metrics to InfluxDB, a dimensional        |                               |
|                                      | time-series server that support real-time stream processing  |                               |
|                                      | of data.                                                     |                               |
|                                      |                                                              |                               |
| integration                          | Adds support for Enterprise Integration Patterns. Enables    |                               |
|                                      | lightweight messaging and supports integration with external |                               |
|                                      | systems via declarative adapters.                            |                               |
|                                      |                                                              |                               |
| jdbc                                 | Database Connectivity API that defines how a client may      |                               |
|                                      | connect and query a database.                                |                               |
|                                      |                                                              |                               |
| jersey                               | Framework for developing RESTful Web Services in Java that   |                               |
|                                      | provides support for JAX-RS APIs.                            |                               |
|                                      |                                                              |                               |
| jooq                                 | Generate Java code from your database and build type safe    |                               |
|                                      | SQL queries through a fluent API.                            |                               |
|                                      |                                                              |                               |
| kafka                                | Publish, subscribe, store, and process streams of records.   |                               |
|                                      |                                                              |                               |
| kafka-streams                        | Building stream processing applications with Apache Kafka    |                               |
|                                      | Streams.                                                     |                               |
|                                      |                                                              |                               |
| liquibase                            | Liquibase database migration and source control library.     |                               |
|                                      |                                                              |                               |
| lombok                               | Java annotation library which helps to reduce boilerplate    |                               |
|                                      | code.                                                        |                               |
|                                      |                                                              |                               |
| mail                                 | Send email using Java Mail and Spring Framework's            |                               |
|                                      | JavaMailSender.                                              |                               |
|                                      |                                                              |                               |
| mariadb                              | MariaDB JDBC and R2DBC driver.                               |                               |
|                                      |                                                              |                               |
| mustache                             | Logic-less Templates. There are no if statements, else       |                               |
|                                      | clauses, or for loops. Instead there are only tags.          |                               |
|                                      |                                                              |                               |
| mybatis                              | Persistence framework with support for custom SQL, stored    | >=2.0.0.RELEASE and <3.1.0-M1 |
|                                      | procedures and advanced mappings. MyBatis couples objects    |                               |
|                                      | with stored procedures or SQL statements using a XML         |                               |
|                                      | descriptor or annotations.                                   |                               |
|                                      |                                                              |                               |
| mysql                                | MySQL JDBC driver.                                           |                               |
|                                      |                                                              |                               |
| native                               | Support for compiling Spring applications to native          | >=3.0.0-M1                    |
|                                      | executables using the GraalVM native-image compiler.         |                               |
|                                      |                                                              |                               |
| new-relic                            | Publish Micrometer metrics to New Relic, a SaaS offering     |                               |
|                                      | with a full UI and a query language called NRQL.             |                               |
|                                      |                                                              |                               |
| oauth2-client                        | Spring Boot integration for Spring Security's OAuth2/OpenID  |                               |
|                                      | Connect client features.                                     |                               |
|                                      |                                                              |                               |
| oauth2-resource-server               | Spring Boot integration for Spring Security's OAuth2         | >=2.1.0.M2                    |
|                                      | resource server features.                                    |                               |
|                                      |                                                              |                               |
| okta                                 | Okta specific configuration for Spring Security/Spring Boot  |                               |
|                                      | OAuth2 features. Enable your Spring Boot application to work |                               |
|                                      | with Okta via OAuth 2.0/OIDC.                                |                               |
|                                      |                                                              |                               |
| open-service-broker                  | Framework for building Spring Boot apps that implement the   | >=2.0.0.RELEASE and <2.7.0-M1 |
|                                      | Open Service Broker API, which can deliver services to       |                               |
|                                      | applications running within cloud native platforms such as   |                               |
|                                      | Cloud Foundry, Kubernetes and OpenShift.                     |                               |
|                                      |                                                              |                               |
| oracle                               | A JDBC driver that provides access to Oracle.                |                               |
|                                      |                                                              |                               |
| picocli                              | Build command line applications with picocli.                | >=2.5.0.RELEASE and <3.1.0-M1 |
|                                      |                                                              |                               |
| postgresql                           | A JDBC and R2DBC driver that allows Java programs to connect |                               |
|                                      | to a PostgreSQL database using standard, database            |                               |
|                                      | independent Java code.                                       |                               |
|                                      |                                                              |                               |
| prometheus                           | Expose Micrometer metrics in Prometheus format, an in-memory |                               |
|                                      | dimensional time series database with a simple built-in UI,  |                               |
|                                      | a custom query language, and math operations.                |                               |
|                                      |                                                              |                               |
| quartz                               | Schedule jobs using Quartz.                                  |                               |
|                                      |                                                              |                               |
| restdocs                             | Document RESTful services by combining hand-written with     |                               |
|                                      | Asciidoctor and auto-generated snippets produced with Spring |                               |
|                                      | MVC Test.                                                    |                               |
|                                      |                                                              |                               |
| rsocket                              | RSocket.io applications with Spring Messaging and Netty.     | >=2.2.0.M2                    |
|                                      |                                                              |                               |
| scs-config-client                    | Config client on VMware Tanzu Application Service.           | >=2.0.0.RELEASE and <3.0.0-M1 |
|                                      |                                                              |                               |
| scs-service-registry                 | Eureka service discovery client on VMware Tanzu Application  | >=2.0.0.RELEASE and <3.0.0-M1 |
|                                      | Service.                                                     |                               |
|                                      |                                                              |                               |
| security                             | Highly customizable authentication and access-control        |                               |
|                                      | framework for Spring applications.                           |                               |
|                                      |                                                              |                               |
| session                              | Provides an API and implementations for managing user        |                               |
|                                      | session information.                                         |                               |
|                                      |                                                              |                               |
| solace                               | Connect to a Solace PubSub+ Advanced Event Broker to         | >=2.2.0.RELEASE and <3.0.0-M1 |
|                                      | publish, subscribe, request/reply and store/replay messages  |                               |
|                                      |                                                              |                               |
| spring-shell                         | Build command line applications with spring.                 | >=2.7.0 and <3.1.0-M1         |
|                                      |                                                              |                               |
| sqlserver                            | A JDBC and R2DBC driver that provides access to Microsoft    |                               |
|                                      | SQL Server and Azure SQL Database from any Java application. |                               |
|                                      |                                                              |                               |
| testcontainers                       | Provide lightweight, throwaway instances of common           |                               |
|                                      | databases, Selenium web browsers, or anything else that can  |                               |
|                                      | run in a Docker container.                                   |                               |
|                                      |                                                              |                               |
| thymeleaf                            | A modern server-side Java template engine for both web and   |                               |
|                                      | standalone environments. Allows HTML to be correctly         |                               |
|                                      | displayed in browsers and as static prototypes.              |                               |
|                                      |                                                              |                               |
| unboundid-ldap                       | Provides a platform neutral way for running a LDAP server in |                               |
|                                      | unit tests.                                                  |                               |
|                                      |                                                              |                               |
| vaadin                               | A web framework that allows you to write UI in pure Java     | >=2.0.0.RELEASE and <2.8.0-M1 |
|                                      | without getting bogged down in JS, HTML, and CSS.            |                               |
|                                      |                                                              |                               |
| validation                           | Bean Validation with Hibernate validator.                    |                               |
|                                      |                                                              |                               |
| wavefront                            | Publish metrics and optionally distributed traces to Tanzu   |                               |
|                                      | Observability by Wavefront, a SaaS-based metrics monitoring  |                               |
|                                      | and analytics platform that lets you visualize, query, and   |                               |
|                                      | alert over data from across your entire stack.               |                               |
|                                      |                                                              |                               |
| web                                  | Build web, including RESTful, applications using Spring MVC. |                               |
|                                      | Uses Apache Tomcat as the default embedded container.        |                               |
|                                      |                                                              |                               |
| web-services                         | Facilitates contract-first SOAP development. Allows for the  |                               |
|                                      | creation of flexible web services using one of the many ways |                               |
|                                      | to manipulate XML payloads.                                  |                               |
|                                      |                                                              |                               |
| webflux                              | Build reactive web applications with Spring WebFlux and      |                               |
|                                      | Netty.                                                       |                               |
|                                      |                                                              |                               |
| websocket                            | Build Servlet-based WebSocket applications with SockJS and   |                               |
|                                      | STOMP.                                                       |                               |
|                                      |                                                              |                               |
| zipkin                               | Enable and expose span and trace IDs to Zipkin.              |                               |
+--------------------------------------+--------------------------------------------------------------+-------------------------------+

Examples:

To create a default demo.zip:
	$ curl -G https://start.spring.io/starter.zip -o demo.zip

To create a web project using Java 11:
	$ curl -G https://start.spring.io/starter.zip -d dependencies=web \
			-d javaVersion=11 -o demo.zip

To create a web/data-jpa gradle project unpacked:
	$ curl -G https://start.spring.io/starter.tgz -d dependencies=web,data-jpa \
		   -d type=gradle-project -d baseDir=my-dir | tar -xzvf -

To generate a Maven POM with war packaging:
	$ curl -G https://start.spring.io/pom.xml -d packaging=war -o pom.xml
