# steampunk-docker-salesforcedx
-------------------------------------------------------------------------------
This is the docker image build to be used for the Salesforce DX builds for Steampunk's Salesforce Practice

To build, execute the following command: 
```
    docker build . -t steampunkfoundry/steampunk-salesforcedx:latest
    docker build . -t steampunkfoundry/steampunk-salesforcedx:v1.2
    docker build . -t steampunkfoundry/steampunk-salesforcedx:rc
```

To run the image interactive mode, execute the following command:
```
    docker run -it steampunkfoundry/steampunk-salesforcedx bash
```
* the "-i" flag is interactive mode
* the "-t" flag is Allocate a pseudo-TTY


To remove the image, execute the following command:
```
    docker image rm --force steampunkfoundry/steampunk-salesforcedx
```

To push the image to DockerHub, execute the following command:
```
    docker push steampunkfoundry/steampunk-salesforcedx:latest
```


Here is a breakdown of Docker command that Jenkins will execute:
```
    docker run 
    -t 
    -d 
    -u 111:115 
    -e HOME=/tmp -e NPM_CONFIG_PREFIX=/tmp/.npm 

    // Working directory inside the container
    -w /var/lib/jenkins/workspace/X_projects_fflib-apex-mocks_main 

    // volumes attached
    -v /var/lib/jenkins/workspace/X_projects_fflib-apex-mocks_main:/var/lib/jenkins/workspace/X_projects_fflib-apex-mocks_main:rw,z 
    -v /var/lib/jenkins/workspace/X_projects_fflib-apex-mocks_main@tmp:/var/lib/jenkins/workspace/X_projects_fflib-apex-mocks_main@tmp:rw,z 

    // these are the environment variables
    -e ******** 
    -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** 

    steampunkfoundry/steampunk-salesforcedx:latest cat
```
