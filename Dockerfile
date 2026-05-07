# Faithful rebuild target for davidedge/lipd_webapps:holocene_da.
# The base image and env spec are pinned to match the live image's
# build context so that `docker build` produces a functionally
# equivalent container.

FROM continuumio/anaconda3:2024.10-1

WORKDIR /app

# Copy env spec first so the env-create layer caches across script edits.
COPY environment_da.yml /tmp/environment_da.yml
RUN conda env create -n python3_da --file /tmp/environment_da.yml \
    && conda clean -afy

# Then copy the source tree
COPY . /app/

# Match the live image's entrypoint exactly
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "python3_da", \
            "python", "-u", "da_main_code.py"]
CMD ["/config_default.yml"]
