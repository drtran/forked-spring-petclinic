## notes:
You would need to have the following settings.xml @ ~/.m2 folder.


```
<settings>
    <pluginGroups>
        <pluginGroup>org.sonarsource.scanner.maven</pluginGroup>
    </pluginGroups>
    <profiles>
        <profile>
            <id>sonar</id>
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <properties>
                <!-- Optional URL to server. Default value is http://localhost:9000 -->
                <sonar.host.url>
                  http://localhost:9000
                </sonar.host.url>
            </properties>
        </profile>
     </profiles>
</settings>
```

To scan code with sonar, use this:

```bash
mvn clean test package sonar:sonar
```

## March 26 2018
To build an image use this:
```bash
mvn clean install
sudo docker build -t petclinic:latest .

```
To run an image, use this:
```bash
sudo docker run -it petclinic
sudo inspect (containerid)

```
## March 27 2018
To tag:
docker tag petclinic:latest drtran/petclinic:6.8.4.1

To push to docker io:
```
docker login ...
docker push drtran/petclini:6.8.4.1
```

To import from docker io into openshift:
```
oc adm registry
oc login -u system:admin
oc import-image drtran/petclinic --from=drtran/petclinic --insecure --confirm=true --all=true
```
To display images in openshift registry:
```
oc get is
```

To build & deploy using Openshift (i.e. minishift), visit this repository: https://github.com/drtran/devops-scripts
