# docker-hotpot

Build Docker Image

```
git clone https://github.com/victorskl/docker-hotpot.git
cd docker-hotpot

git clone https://github.com/elmarquez/hotpot.git
git fetch && git update

docker image build -t hotpot .
```

Running Standalone

```
mkdir -p ./mongo/db
docker-compose -f standalone.yml -p dev up -d
```

Running with existing MongoDB

```
cp env.sample .env
docker-compose -p dev up -d
```

Publish to Private Image Registry

```
docker tag hotpot:latest docker-image-registry.com/namespace/hotpot
docker push docker-image-registry.com/namespace/hotpot
```
