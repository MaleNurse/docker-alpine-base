Build and push via:

`docker buildx build --platform linux/amd64,linux/arm64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7,linux/arm/v6 -t malenurse/alpine-base:latest --push .`

Remove `--push` if not desired, of course.
