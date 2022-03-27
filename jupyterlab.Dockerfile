FROM gcr.io/deeplearning-platform-release/base-cpu

RUN pip install --upgrade pip

COPY requirements_for_jupyterlab.txt .

RUN pip install --no-cache-dir -r  requirements_for_jupyterlab.txt 

ENV PORT=

COPY jupyterlab/ /home/jupyter/
