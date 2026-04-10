FROM busybox:latest

LABEL org.opencontainers.image.title="idle" \
    org.opencontainers.image.description="Minimal idle container for orchestration scaling checks"

COPY entrypoint.sh /

STOPSIGNAL SIGTERM
ENTRYPOINT ["/entrypoint.sh"]
