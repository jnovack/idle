# idle

Tiny Docker image for orchestration and container-environment scaling checks.

This image intentionally does almost nothing so you can push scheduler/runtime scale with minimal per-container resource usage.

## Behavior

- Uses `busybox:latest`
- Idles via `sleep infinity`
- Handles `TERM`/`INT` for clean shutdowns during scale-down events
- No healthcheck (avoids extra overhead at high replica counts)

## Build

```bash
docker build -t idle:latest .
```

## Run

```bash
docker run --rm --name idle idle:latest
```

## Stop

```bash
docker stop idle
```

## GitHub Workflows

- `.github/workflows/docker-image.yml` publishes to Docker Hub on full semver tags (for example `v1.2.3`) or manual dispatch.
- `.github/workflows/ghcr-image.yml` publishes to GHCR on full semver tags (for example `v1.2.3`) or manual dispatch.

### Required repo configuration

- Secret: `DOCKER_USERNAME`
- Secret: `DOCKER_API_TOKEN`
- Variable: `DOCKER_ORGANIZATION`
- Optional variable: `DOCKER_REPOSITORY` (defaults to repository name when not set)

## Notes

- This is a synthetic scaling artifact, not an application runtime image.
- If you need strict reproducibility across test windows, pin the base image tag in your test branch.
