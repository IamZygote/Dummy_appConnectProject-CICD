FROM cp.icr.io/cp/appc/ace-server-prod:12.0.6.0-r2-lts-20221116-094345@sha256:1f8e0d52d5ffb68232c9b6aa361bd1abe6617ef290469c3d99a0a67fc2cdc1bd
COPY bars workspace/source/BARfiles
USER 0
RUN bash -c "cd /home/aceuser \ 
    && export LICENSE=accept \ 
    && chmod -R 777 workspace/source/BARfiles"
USER aceuser
