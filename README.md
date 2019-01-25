# IdentityServer4 Docker Image

Dockerfile for building a docker image for IdentityServer4

## Build

```
docker build -t liambeeton/identityserver .
```

## Run

```
docker run -d -p 8080:80 --name identityserver liambeeton/identityserver
```

## Tag

```
docker tag liambeeton/identityserver liambeeton/identityserver:1.0
```

## Push

```
docker push liambeeton/identityserver:1.0
```

## URL

http://localhost
