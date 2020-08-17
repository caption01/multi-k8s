step pipeline on Travis-CI

- install google SDK CLI
- config SDK without auth info
- login to Docker CLI
- build test & testing
- test succuess -> build a set of images
- push our images to docker hub
- apply all config in k8s folder
- impearatively set lastest image on each deployment

on G-Cloud

- download service account credential json file
- download and install travis CLI
- encrypt and upload json file into travis account
- in .travis.yml add code to enencrypt the json file and load it into g-cloud sdk
