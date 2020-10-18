# DevSecOps Sample

- [Jenkins Readme](https://github.com/jenkinsci/docker/blob/master/README.md)
- [Anchore Engine](https://github.com/anchore/anchore-engine)
- [Anchore CLI](https://github.com/anchore/anchore-cli)

## Install Anchore CLI

```bash
pip install anchorecli
```

## Quickstart for Anchore

```bash
# curl https://docs.anchore.com/current/docs/engine/quickstart/docker-compose.yaml > anchore-docker-compose.yaml
docker-compose -f anchore-docker-compose.yaml up -d
```

To try anchore-cli

```bash
./performs-anchore-cli.sh
```

## Reading

- [integrating-anchore-scanning-into-jenkins-pipeline-via-jenkinsfile](https://anchore.com/blog/integrating-anchore-scanning-into-jenkins-pipeline-via-jenkinsfile/)
