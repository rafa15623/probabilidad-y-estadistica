#imagen datascience
FROM jupyter/datascience-notebook

#herramientas adicionales
USER root
RUN apt-get update && apt-get install -y \
    git \
    wget \
    vim

# Cambiar a usuario normal para evitar permisos de root
USER $NB_UID