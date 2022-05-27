FROM conda/miniconda3:latest

COPY . /nlptraining
CMD conda env create -n nlptraining -f /nlptrainig/environment.yml
SHELL ["conda", "run", "-n", "nlptraining", "/bin/bash", "-c"]
# ENTRYPOINT [ "/bin/bash" ]