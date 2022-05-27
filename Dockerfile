FROM conda/miniconda3:latest

COPY . /nlptraining
RUN conda update --all
RUN conda env create -n nlptraining -f /nlptraining/env.yml
SHELL ["conda", "run", "-n", "nlptraining", "/bin/bash", "-c"]
# ENTRYPOINT [ "/bin/bash" ]