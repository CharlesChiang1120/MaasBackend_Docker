# Stage 1: Use Debian to install locales and fonts
FROM debian:latest as build

# Install locales and fonts
RUN apt-get update && \
    apt-get install -y locales fonts-dejavu-core && \
    locale-gen C.UTF-8 || true && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=C.UTF-8

# Stage 2: Use official MySQL image as the base image
FROM mysql:8.0

# Set environment variables for UTF-8 locale
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Copy locales and fonts from the build stage
COPY --from=build /usr/share/fonts /usr/share/fonts
COPY --from=build /usr/lib/locale /usr/lib/locale
COPY --from=build /usr/bin/locale /usr/bin/locale
COPY --from=build /usr/sbin/locale-gen /usr/sbin/locale-gen
COPY --from=build /etc/locale.gen /etc/locale.gen
COPY --from=build /usr/bin/localedef /usr/bin/localedef

# Expose MySQL port
EXPOSE 3306

# Set default command
CMD ["mysqld"]