# techdocs-container
Backstage Techdocs Container

```bash
docker login
```

Current registry is nexus:8083

```bash
docker buildx build --platform linux/arm64 -t nexus:8083/techdocs:arm64 --push .
```