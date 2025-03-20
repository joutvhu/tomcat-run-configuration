set "JAVA_HOME=%JAVA_HOME%"
set "JAVA_OPTS=%JAVA_OPTS% -Dspring.profiles.active=local"
set "CATALINA_OPTS=%CATALINA_OPTS% -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=20944 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"