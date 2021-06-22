# Start from a core stack version
FROM jupyter/minimal-notebook:latest

# Install from requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

ENV NODE_OPTIONS="--max-old-space-size=8192"

RUN jupyter labextension install --debug --no-build jupyterlab-plotly
RUN jupyter labextension install --debug --no-build plotlywidget
RUN jupyter labextension install --debug --no-build @jupyter-widgets/jupyterlab-manager
RUN jupyter lab build --dev-build=False --minimize=False

# -c conda-forge
RUN conda install --quiet --yes jupyterlab_widgets ipywidgets && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]