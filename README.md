# Tomcat Run Configuration

Configuration to run application (WAR file) in Apache Tomcat

## Setup environment

- Run `setup.bat`or `setup.sh` and enter tomcat path.

## Change ports

- Open `conf/server.xml` and change your port.

```xml
<Connector port="8080" protocol="HTTP/1.1"
           connectionTimeout="20000"
           redirectPort="8443"
           maxParameterCount="1000"
/>
```

## Add application file

- Put your application (war file) in `webapps` folder.

## Set VM options and Catalina options

- Put VM options into `.vmoptions` file

- Put Catalina options into `.catalinaoptions` file

## Start application

- Run `startup.bat` or `startup.sh` to start application

## Stop application

- Run `shutdown.bat` or `shutdown.sh` to stop application
