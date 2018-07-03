# docker-nabemono

Build and Run

```
git clone https://github.com/victorskl/docker-nabemono.git
cd docker-nabemono

git clone https://github.com/elmarquez/nabemono.git

docker image build -t nabemono .

docker-compose -f standalone.yml -p dev up -d
```

Publish

```
docker tag nabemono:latest docker-image-registry.com/namespace/nabemono
docker push docker-image-registry.com/namespace/nabemono
```

