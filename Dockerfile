FROM busybox:latest
HEALTHCHECK --interval=1m --timeout=3s CMD true || exit 1
ENTRYPOINT [ "/entrypoint.sh" ]
COPY entrypoint.sh /