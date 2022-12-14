FROM tensorflow/tensorflow:1.2.1

WORKDIR /Kaiko_pipeline
ADD ./Kaiko_denovo /Kaiko_pipeline/Kaiko_denovo
ADD ./Kaiko_2.py /Kaiko_pipeline
ADD ./Kaiko_3.py /Kaiko_pipeline
ADD ./Kaiko_4.py /Kaiko_pipeline
ADD ./Kaiko_pipeline_main.py /Kaiko_pipeline
ADD ./kaiko_defaults.ini /Kaiko_pipeline
ADD ./config.ini /Kaiko_pipeline

RUN pip install --no-cache-dir --upgrade pip && \ 
    pip install --no-cache-dir llvmlite==0.22 biopython==1.69 numba==0.37 pyteomics sigopt==3.2.0
