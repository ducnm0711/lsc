- Download latest LSC from https://lsc-project.org/download  
- Unzip it and copy `.jar` of TMail LSC plugin must be copied in `/lsc-2.16/lib` directory.  
Then launch it with the following command line:

```
JAVA_OPTS="-DLSC.PLUGINS.PACKAGEPATH=org.lsc.plugins.connectors.james.generated" bin/lsc --config /lsc/plugin/sample/ldap-to-tmail/ --synchronize all --clean all --threads 1
```