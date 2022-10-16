FROM scratch
COPY tailscale_ingress /
ENTRYPOINT ["/tailscale_ingress"]
