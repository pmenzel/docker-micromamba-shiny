FROM mambaorg/micromamba:1.3.1
COPY --chown=$MAMBA_USER:$MAMBA_USER conda-env.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes

COPY --chmod=777 ./app/*.R ./

# declare volumnes as needed
# VOLUME /mnt

CMD ["/bin/bash", "-c", "./app.R"]

LABEL org.opencontainers.image.source="https://github.com/pmenzel/docker-micromamba-shiny"
LABEL org.opencontainers.image.authors="Peter Menzel"
