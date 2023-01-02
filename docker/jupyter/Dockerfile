FROM jupyter/all-spark-notebook as base

RUN python3 -m pip install jupyterlab_geojs \
pycrypto \
jupyterlab-quickopen \
jupyterlab_snippets \
jupyterlab-solutions \
jupyterlab_code_formatter \
algorithmx \
dask_labextension \
itkwidgets \
gmaps \
jupyterlab_commands \
jupyterlab_email \
jupyterlab_templates \
jupyter-tensorboard \
ipydatawidgets \
flake8 \
ipyannotate \
jupyter-launcher-shortcuts \
ipysigma \
plyto \
jupyterlmod \
nbresuse \
jupyterlab-git \
jupyterlab_latex \
altair \
nbdime \
nbinteract \
papermill \
RISE \
pynb \
ipytest \
sphinxcontrib-jupyter \
Black \
YAPF \
Autopep8

RUN jupyter nbextension install --py jupyterlmod --user &&\
jupyter nbextension enable --py --sys-prefix widgetsnbextension &&\
jupyter nbextension enable --py --sys-prefix gmaps &&\
jupyter nbextension enable --py --sys-prefix ipyannotate &&\
jupyter nbextension enable --py jupyterlmod --sys-prefix &&\
jupyter nbextension enable --py --sys-prefix widgetsnbextension &&\
jupyter nbextension enable --py --sys-prefix bqplot

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager \
@ijmbarr/jupyterlab_spellchecker \
@jango/jupyterlab_save_files \
@jgosmann/jupyterlab-nengo \
@krassowski/jupyterlab_go_to_definition \
@lckr/jupyterlab_variableinspector \
@lean-data-science/jupyterlab_credentialstore \
@mflevine/jupyterlab_html \
@parente/jupyterlab-quickopen \
@pyviz/jupyterlab_pyviz \
@quentinandre/jupyterlab_snippets \
@rmotr/jupyterlab-solutions \
@ryantam626/jupyterlab_code_formatter \
@yunabe/lgo_extension \
algorithmx-jupyter \
cy-jupyterlab \
dask-labextension \
itk-jupyter-widgets \
jupyterlab_3dmol \
jupyterlab_autoversion \
jupyterlab_commands \
jupyterlab_email \
jupyterlab_templates \
jupyterlab_tensorboard \
jupyterlab_toastify \
jupyterlab_velocity \
jupyterlab-chart-editor \
jupyterlab-drawio \
jupyterlab-datawidgets \
jupyterlab-flake8 \
ipyannotate \
jupyterlab-launcher-shortcuts \
jupyterlab-lmod \
jupyterlab-python-file \
jupyterlab-readypipe \
jupyterlab-topbar-extension \
jupyterlab-system-monitor \
jupyterlab-zip \
readypipe-jupyterlab \
renku-jupyterlab-ts \
@jupyterlab/celltags \
@jupyterlab/fasta-extension \
@jupyterlab/katex-extension \
@jupyterlab/mathjax3-extension \
@jupyterlab/plotly-extension \
@jupyterlab/vega2-extension \
@jupyterlab/vega3-extension \
@jupyterlab/git \
@jupyterlab/github \
@jupyterlab/google-drive \
@jupyterlab/latex \
@jupyterlab/statusbar \
@jupyterlab/xkcd-extension \
@agoose77/jupyterlab-attachments \
@jupyterlab/hub-extension \
@deathbeds/jupyterlab_graphviz \
@iau/cy-jupyterlab

RUN jupyter serverextension enable --py jupyterlab_code_formatter &&\
jupyter serverextension enable jupyterlab_rmotr_solutions &&\
jupyter serverextension enable --py --sys-prefix dask_labextension &&\
jupyter serverextension enable --py jupyterlab_commands &&\
jupyter serverextension enable --py jupyterlab_email &&\
jupyter serverextension enable --py jupyterlab_templates &&\
jupyter serverextension enable --py jupyterlmod --sys-prefix &&\
jupyter serverextension enable --py jupyterlab_git &&\
jupyter serverextension enable --sys-prefix jupyterlab_latex &&\
jupyter serverextension enable --py nbresuse

RUN jupyter lab clean &&\
jupyter lab build &&\
pwd