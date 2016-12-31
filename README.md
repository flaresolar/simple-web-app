#simple-web-app - build pipeline with TravisCI
===============================
This is a fork of simple-web-app, a simple web application that demonstrates the use of the OpenID Connect client code and configuration.  
The repo's goal is to provide an en-to-end build pipeline, from commit to deployment.  

##Instructions:  
1. Clone the git repo  
1. Code, commit and push.  
    * A new Travis-CI build will start on each push.  
    * A new docker image will be pushed to dockerhub on each successful build, under: `flare/simple-web-app:latest`  
1. When ready, create a new release, and set its tag.  
    * A new Travis-CI buil will start on each new tag.  
    * A new war file will be built and automatically added to the release.  
    * A new docker image will be created under: `flare/simple-web-app:$TAG_NAME` where `$TAG_NAME` is the newly created tag.  
    * The new docker image image will be deployed on AWS ECS. Current deployment is at:  
http://ec2-35-160-100-199.us-west-2.compute.amazonaws.com/simple-web-app/  
  
  
##To Do (partial list):
1. Setup build notifications.
1. Add tests (under `scripts:`)
1. Do not create a docker image on Pull Requqests
1. Move some commands from .travis.yml to a build script within the repo.
1. Configure docker image to run via the tomcat user. Adjust deploymnet accordingly.
