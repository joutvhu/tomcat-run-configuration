# Tomcat Run Configuration

Configuration to WAR file in Apache Tomcat

## Setup environment

- Run `setup.bat` and enter tomcat path.

## Change ports

- Open `conf/server.xml` and change the following snippet.

```xml
<Connector port="8080" protocol="HTTP/1.1"
           connectionTimeout="20000"
           redirectPort="8443"
           maxParameterCount="1000"
/>
```

## Add WAR file

- Copy war and put in `webapps` folder.

## Set VM options and Catalina options

- Put VM options into `.vmoptions` file

- Put Catalina options into `.catalinaoptions` file

## Run application

- Run `startup.bat`
