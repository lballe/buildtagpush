# buildtagpush

forked from matti/buildtagpush

master branch has BUILDKIT DISABLED (for bitbucket builds)

buildkit branch has BUILDKIT ENABLED (for gcp or other builds)

```
steps:
  - name: mattipaksula/buildtagpush
    env:
      - "REGISTRY=gcr.io/your-project"
      - "IMAGE=your-image"
      - "TAG=[latest]"
      - "CACHE_TAG=[$TAG]"
      - "WORKDIR=[/workspace]"
      - "DOCKERFILE=[Dockerfile]"
      - "BUILD_OPTS=['']"
      - "TRIES=[6]"
```
