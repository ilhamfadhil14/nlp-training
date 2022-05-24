FROM conda/miniconda3:latest

COPY . /nlptraining
CMD conda create -n nlptraining -f /nlptraining/environment
RUN conda activate nlptraining
ENTRYPOINT [ "/bin/bash" ]