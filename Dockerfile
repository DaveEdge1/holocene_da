FROM continuumio/anaconda3

ADD . $HOME/

RUN conda env create -n python3_nc --file environNC.yml

SHELL ["conda", "run", "-n", "python3_nc", "/bin/bash", "-c"]

#RUN conda install -c conda-forge h5py

#RUN conda update -n base -c defaults conda && \
#    /opt/conda/bin/conda install python=3.10.9 && \
#    conda install -c conda-forge libnetcdf && \
#    conda install -c anaconda h5py

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "python3_nc", "python", "da_main_code.py"]

COPY results/ results/

# python3 da_main_code.py config_default.yml
