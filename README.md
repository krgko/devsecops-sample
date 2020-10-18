# DevSecOps Sample

This project will demonstrate about how to apply anchore with jenkins pipeline.

- [Jenkins Readme](https://github.com/jenkinsci/docker/blob/master/README.md)
- [Anchore Engine](https://github.com/anchore/anchore-engine)
- [Anchore CLI](https://github.com/anchore/anchore-cli)

## Install Anchore CLI

```bash
pip install anchorecli
```

## Quick Setup

```bash
./quickstart.sh
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

## Jenkins Preparation

1. Install anchore plugin: `Jenkins > Plugin Manager > Avaliable > Search for anchore`
2. Create new pipeline
3. Add pipeline commands - e.g. [Jenkinsfile](./Jenkinsfile) - This jenkins file is only sample. **do not use this on production !!**

**Note:** Do not forget to add credential via `Jenkins > Credentials > Systems > Global Credentials (Unrestricted)`

## Readings

- [integrating-anchore-scanning-into-jenkins-pipeline-via-jenkinsfile](https://anchore.com/blog/integrating-anchore-scanning-into-jenkins-pipeline-via-jenkinsfile/)

## Results

After pipeline passes the result of `kowpun123/sample:latest` will show as follow.

![sec-scan-result](./pics/sec-scan-result.png)
