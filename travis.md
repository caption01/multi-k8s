step pipeline on Travis-CI

- install google SDK CLI
- config SDK without auth info
- login to Docker CLI
- build test & testing
- test succuess -> build a set of images
- push our images to docker hub
- apply all config in k8s folder
- impearatively set lastest image on each deployment

step to add authen to travis with g-cloud

- download service account credential json file
- download and install travis CLI
- encrypt and upload json file into travis account
- in .travis.yml add code to enencrypt the json file and load it into g-cloud sdk

on local build encrypt travis auth file

- run docker with ruby version 2.4 and exec sh
- bind path folder
- copy service-account from g-cloud key json into container
- login to travis and encrypt file with travis CLI
- commit encrypted file into github and delete original key file from g-cloud
