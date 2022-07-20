FROM continuumio/miniconda3
COPY requirements.txt ./
COPY Prak.ipynb ./
RUN sudo pip install -r requirements.txt
RUN sudo jupyter-nbconvert --execute Prak.ipynb --to html
