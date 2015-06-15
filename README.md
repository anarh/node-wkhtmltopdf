# Dockerized NodeJS with wkhtmltopdf #

Provides a docker image with 
* [wkhtmltopdf (v0.12.2.1)](http://wkhtmltopdf.org/downloads.html) 
* [node v0.10.38 (from the official docker build)](https://github.com/joyent/docker-node/blob/cb1434d434ca52b31e81452d887e76fc7b24cbef/0.10/Dockerfile)

This Docker image is meant to be imported and layered upon when building another Docker image that depends on node and wkhtmltopdf,

E.g. (first line of a Dockerfile)

```yaml
FROM anarh/node-wkhtmltopdf:latest

# additional lines in Dockerfile
... 
```
