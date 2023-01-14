# Pull base image
FROM debian:stable-slim

# Install dependencies
RUN apt -y update && apt -y upgrade && apt install -y python python-dev python-tk git nano build-essential curl
# RUN python -m ensurepip --upgrade
WORKDIR /home
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python get-pip.py
RUN pip install "cython==0.24" "scipy==0.15.1" "numpy==1.12.0" "statsmodels==0.8.0"
RUN pip install matplotlib
RUN git clone https://github.com/alanlhutchison/empirical-JTK_CYCLE-with-asymmetry
WORKDIR /home/empirical-JTK_CYCLE-with-asymmetry
RUN ls /home
#RUN sed -i 's/#!\/usr\/bin\/env\ python/#!\/usr\/bin\/env\ python2.7/g' /home/empirical-JTK_CYCLE-with-asymmetry/eJTK-CalcP.py
WORKDIR /home/empirical-JTK_CYCLE-with-asymmetry/bin
RUN python setup.py build_ext --inplace
WORKDIR /home/empirical-JTK_CYCLE-with-asymmetry

# Starting command
CMD ["bash"]