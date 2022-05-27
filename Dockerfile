FROM conda/miniconda3:latest

COPY . /nlptraining
CMD conda create -n nlptraining -f /nlptraining/environment
SHELL ["conda", "run", "-n", "nlptraining", "/bin/bash", "-c"]
# ENTRYPOINT [ "/bin/bash" ]