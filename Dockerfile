FROM tomcat:latest
ARG build_root="."
COPY $artifact_root/build.sh /build.sh
COPY $artifact_root/entrypoint.sh /entrypoint.sh
COPY $artifact_root/src/ /src/
RUN chmod +x /build.sh /entrypoint.sh && /build.sh
ENTRYPOINT ["/entrypoint.sh"]