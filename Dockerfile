FROM debian:sid-slim

RUN apt-get update && \
    apt-get install -y \
    pandoc \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    python3 \
    python3-pip \
    pipenv \
    ghostscript \
    git

RUN apt-get autoclean

# Setup fonts and TeX config.
RUN mktexpk --mfmode / --bdpi 600 --mag 1+0/600 --dpi 600 ectt1000

WORKDIR /source

CMD ["/bin/bash"]
