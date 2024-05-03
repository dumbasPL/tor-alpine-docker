# [TOR Alpine Docker](README.md)

Simple docker image with alpine:edge and tor, updated daily via github actions.

## Usage

Mount `/var/lib/tor` and `/etc/tor/torrc` in the container.  
Sample torrc can be found [here](torrc.sample)

Docker hub: [dumbaspl/tor-alpine](https://hub.docker.com/r/dumbaspl/tor-alpine)  
Github : [dumbasPL/tor-alpine-docker](https://github.com/dumbasPL/tor-alpine-docker/pkgs/container/tor-alpine-docker)


>[!IMPORTANT]
> Remember about permissions, the tor user inside the container is uid 100.
> If using bind mounts, either chown the `/var/lib/tor` directory to 100 or override the user while running the container.

## License

[MIT](LICENSE)