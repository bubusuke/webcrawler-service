# webcrawler-service

## Overview
It is a service that delivers web crawled data.

Folio's Theme We deliver investment service themes and stocks for each theme.

![system_overview.png](https://github.com/bubusuke/webcrawler-service/blob/master/doc/system_overview.png)

| System | Description                                                                                 |
| :----- | :------------------------------------------------------------------------------------------ |
| DB     | The role is saving web crawl data.                                                          |
| Job    | The role is Web-crawling and parsing, and saving to DB. The process is executed intervally. |
| Webapp | The role is web-app server.                                                                 |

## How to Build and Run
```
docker-compose up -d --build
```
*The data of DB is reset every build.*
*But we don't have to warry because the Job set data soon.*

### Environments
| System     | Name              | Default Value ( * )           | Description              |
| :--------- | :---------------- | :---------------------------- | :----------------------- |
| Webapp     | APP_PORT          | 8080                          | Web application port.    |
| Webapp     | GIN_MODE          | debug                         | GIN flamework log level. |
| Job        | URL_FOLIO         | https://folio-sec.com/theme   | Crawling target.         |
| Job        | JOB_INTERVAL_SEC  | 60                            | Job cycle.               |
| Webapp/Job | DB_HOST           | localhost                     | DB connect parameter.    |
| Webapp/Job | DB_PORT           | 5432                          | DB connect parameter.    |
| Webapp/Job | DB_DATABASE_NAME  | postgres                      | DB connect parameter.    |
| Webapp/Job | DB_USER           | postgres                      | DB connect parameter.    |
| Webapp/Job | DB_PASSWORD       | ******                        | DB connect parameter.    |
| DB         | POSTGRES_DB       | postgres                      | DB running parameter.    |
| DB         | POSTGRES_USER     | postgres                      | DB running parameter.    |
| DB         | POSTGRES_PASSWORD | DEFAULT IS NOTHING. MUST SET. | DB running parameter.    |
* Default Value is the value defined in applicatoin source files.
* On [Docker compose](https://github.com/bubusuke/webcrawler-service/blob/master/docker-compose.yaml), some values are different from Default Value.
