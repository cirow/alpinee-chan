Alpinee-chan
==================

Simple alpine container with basic nginx+nchan installed

To build image:
```sh
docker build -t your-tag .
```
To use image:
```sh
docker run -it --rm -p "8080:80"
```
